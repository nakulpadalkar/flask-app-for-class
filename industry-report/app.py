import json
import os
import re
from datetime import datetime, timezone
from functools import lru_cache
from io import BytesIO
from pathlib import Path
from typing import Dict, List, Optional, Tuple
from urllib.parse import urljoin, urlparse
from zipfile import ZipFile

import pandas as pd
import plotly.express as px
import requests
from bs4 import BeautifulSoup
from dotenv import load_dotenv
from flask import Flask, render_template, request
from markdown import markdown

BASE_DIR = Path(__file__).resolve().parent
DATA_DIR = BASE_DIR / "data"
SUMMARY_DIR = BASE_DIR / "summaries"
TEMPLATE_DIR = BASE_DIR / "templates"

BLS_OE_INDUSTRY_URLS = [
    "https://download.bls.gov/pub/time.series/oe/oe.industry",
    "https://www.bls.gov/pub/time.series/oe/oe.industry",
]
BLS_OE_OCCUPATION_URLS = [
    "https://download.bls.gov/pub/time.series/oe/oe.occupation",
    "https://www.bls.gov/pub/time.series/oe/oe.occupation",
]

FRED_SEARCH_URL = "https://api.stlouisfed.org/fred/series/search"
FRED_OBS_URL = "https://api.stlouisfed.org/fred/series/observations"
FRED_CATEGORY_SERIES_URL = "https://api.stlouisfed.org/fred/category/series"
FRED_CATEGORIES_CSV_URL = "https://raw.githubusercontent.com/joshuaulrich/freddy-mcfredface/master/all_fred_categories.csv"
BLS_IAG_INDEX_URL = "https://www.bls.gov/iag/tgs/iag_index_naics.htm"
BLS_BASE_URL = "https://www.bls.gov"
BLS_IAG_INDEX_CACHE_FILE = DATA_DIR / "iag_index_links.json"
OES_STRUCTURE_URL = "https://www.bls.gov/oes/2023/may/oes_stru.htm"
OES_TABLES_URL = "https://www.bls.gov/oes/tables.htm"
OES_BASE_URL = "https://www.bls.gov/oes/2023/may/"
OES_SOC_CACHE_FILE = DATA_DIR / "oes_soc_profiles_2023_may.json"
OES_TABLES_CACHE_FILE = DATA_DIR / "oes_tables_links.json"
OES_XLSX_DIR = DATA_DIR / "oes_xlsx"
OES_API_CACHE_DIR = DATA_DIR / "oes_api"
BLS_API_URL = "https://api.bls.gov/publicAPI/v2/timeseries/data/"

# OES series ID: OE + U + areatype(1) + area_code(7) + industry(6) + occupation(6) + datatype(2)
# areatype N=National, S=State, M=Metropolitan
OES_DATATYPES: Dict[str, str] = {
    "TOT_EMP": "01",   # Total employment
    "H_MEAN":  "03",   # Mean hourly wage
    "A_MEAN":  "04",   # Annual mean wage
    "H_MEDIAN":"08",   # Median hourly wage
    "A_MEDIAN":"13",   # Median annual wage
}

# State FIPS → (abbreviation, full name, 7-char area_code for OES series)
OES_STATE_MAP: Dict[str, Tuple[str, str, str]] = {
    "01": ("AL", "Alabama",        "0100000"),
    "02": ("AK", "Alaska",         "0200000"),
    "04": ("AZ", "Arizona",        "0400000"),
    "05": ("AR", "Arkansas",       "0500000"),
    "06": ("CA", "California",     "0600000"),
    "08": ("CO", "Colorado",       "0800000"),
    "09": ("CT", "Connecticut",    "0900000"),
    "10": ("DE", "Delaware",       "1000000"),
    "11": ("DC", "Dist. of Columbia", "1100000"),
    "12": ("FL", "Florida",        "1200000"),
    "13": ("GA", "Georgia",        "1300000"),
    "15": ("HI", "Hawaii",         "1500000"),
    "16": ("ID", "Idaho",          "1600000"),
    "17": ("IL", "Illinois",       "1700000"),
    "18": ("IN", "Indiana",        "1800000"),
    "19": ("IA", "Iowa",           "1900000"),
    "20": ("KS", "Kansas",         "2000000"),
    "21": ("KY", "Kentucky",       "2100000"),
    "22": ("LA", "Louisiana",      "2200000"),
    "23": ("ME", "Maine",          "2300000"),
    "24": ("MD", "Maryland",       "2400000"),
    "25": ("MA", "Massachusetts",  "2500000"),
    "26": ("MI", "Michigan",       "2600000"),
    "27": ("MN", "Minnesota",      "2700000"),
    "28": ("MS", "Mississippi",    "2800000"),
    "29": ("MO", "Missouri",       "2900000"),
    "30": ("MT", "Montana",        "3000000"),
    "31": ("NE", "Nebraska",       "3100000"),
    "32": ("NV", "Nevada",         "3200000"),
    "33": ("NH", "New Hampshire",  "3300000"),
    "34": ("NJ", "New Jersey",     "3400000"),
    "35": ("NM", "New Mexico",     "3500000"),
    "36": ("NY", "New York",       "3600000"),
    "37": ("NC", "North Carolina", "3700000"),
    "38": ("ND", "North Dakota",   "3800000"),
    "39": ("OH", "Ohio",           "3900000"),
    "40": ("OK", "Oklahoma",       "4000000"),
    "41": ("OR", "Oregon",         "4100000"),
    "42": ("PA", "Pennsylvania",   "4200000"),
    "44": ("RI", "Rhode Island",   "4400000"),
    "45": ("SC", "South Carolina", "4500000"),
    "46": ("SD", "South Dakota",   "4600000"),
    "47": ("TN", "Tennessee",      "4700000"),
    "48": ("TX", "Texas",          "4800000"),
    "49": ("UT", "Utah",           "4900000"),
    "50": ("VT", "Vermont",        "5000000"),
    "51": ("VA", "Virginia",       "5100000"),
    "53": ("WA", "Washington",     "5300000"),
    "54": ("WV", "West Virginia",  "5400000"),
    "55": ("WI", "Wisconsin",      "5500000"),
    "56": ("WY", "Wyoming",        "5600000"),
}

# Abbreviation → full name (for choropleth)
OES_STATE_ABBR_TO_NAME: Dict[str, str] = {v[0]: v[1] for v in OES_STATE_MAP.values()}

NAICS_TO_KEYWORDS = {
    "11": ["agriculture", "forestry", "fishing"],
    "21": ["mining", "oil", "gas"],
    "22": ["utilities"],
    "23": ["construction"],
    "31": ["manufacturing"],
    "32": ["manufacturing"],
    "33": ["manufacturing"],
    "42": ["wholesale"],
    "44": ["retail"],
    "45": ["retail"],
    "48": ["transportation", "warehousing"],
    "49": ["transportation", "warehousing"],
    "51": ["information"],
    "52": ["finance", "insurance"],
    "53": ["real estate", "rental", "leasing"],
    "54": ["professional", "technical"],
    "55": ["management"],
    "56": ["administrative", "support"],
    "61": ["education", "educational"],
    "62": ["health", "social assistance"],
    "71": ["arts", "entertainment", "recreation"],
    "72": ["accommodation", "food services"],
    "81": ["other services"],
    "92": ["public administration", "government"],
}

TEXT_STOPWORDS = {
    "and", "the", "for", "with", "from", "services", "service", "other",
    "industry", "industries", "assistance", "trade", "care",
}

app = Flask(__name__, template_folder=str(TEMPLATE_DIR))
load_dotenv(BASE_DIR / ".env")
load_dotenv(BASE_DIR.parent / ".env")


def bls_headers() -> Dict[str, str]:
    return {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 "
            "(KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Referer": BLS_BASE_URL,
    }


def clean_text(text: str) -> str:
    return re.sub(r"\s+", " ", text or "").strip()


def utc_now() -> datetime:
    return datetime.now(timezone.utc)


def utc_stamp() -> str:
    return utc_now().strftime("%Y%m%d-%H%M%S")


def utc_timestamp_label() -> str:
    return utc_now().strftime("%Y-%m-%d %H:%M:%S UTC")


def read_iag_links_from_file(path: Path) -> Optional[List[Dict[str, str]]]:
    if not path.exists() or path.stat().st_size == 0:
        return None
    try:
        payload = json.loads(path.read_text(encoding="utf-8"))
    except (json.JSONDecodeError, OSError):
        return None

    if not isinstance(payload, list):
        return None

    normalized: List[Dict[str, str]] = []
    for item in payload:
        if not isinstance(item, dict):
            continue
        name = clean_text(str(item.get("name", "")))
        naics = clean_text(str(item.get("naics", "")))
        url = clean_text(str(item.get("url", "")))
        if not name or not naics or not url:
            continue
        normalized.append(
            {
                "name": name,
                "naics": naics,
                "url": url,
                "label": f"{name} (NAICS {naics})",
            }
        )

    if not normalized:
        return None
    normalized.sort(key=lambda x: (x["naics"], x["name"]))
    return normalized


def write_iag_links_cache(links: List[Dict[str, str]]) -> None:
    ensure_dirs()
    serializable = [
        {
            "name": item["name"],
            "naics": item["naics"],
            "url": item["url"],
        }
        for item in links
    ]
    BLS_IAG_INDEX_CACHE_FILE.write_text(json.dumps(serializable, indent=2), encoding="utf-8")


def fallback_iag_links() -> List[Dict[str, str]]:
    # Build deterministic fallback links from the built-in NAICS list.
    rows = fallback_codes().get("naics", [])
    items: List[Dict[str, str]] = []
    for row in rows:
        code = clean_text(str(row.get("code", "")))
        name = clean_text(str(row.get("name", "")))
        if not code or not name:
            continue
        items.append(
            {
                "name": name,
                "naics": code,
                "url": f"{BLS_BASE_URL}/iag/tgs/iag{code}.htm",
                "label": f"{name} (NAICS {code})",
            }
        )
    return items


def fallback_oes_tables_links() -> List[Dict[str, str]]:
    return [
        {
            "label": "May 2023 National Occupational Employment and Wage Estimates (ZIP)",
            "url": "https://www.bls.gov/oes/special-requests/oesm23nat.zip",
            "section": "National",
        },
        {
            "label": "May 2023 State Occupational Employment and Wage Estimates (ZIP)",
            "url": "https://www.bls.gov/oes/special-requests/oesm23st.zip",
            "section": "State",
        },
        {
            "label": "May 2023 Metropolitan and Nonmetropolitan Area Estimates (ZIP)",
            "url": "https://www.bls.gov/oes/special-requests/oesm23ma.zip",
            "section": "MSA",
        },
        {
            "label": "May 2023 National Industry-Specific and Ownership Estimates (ZIP)",
            "url": "https://www.bls.gov/oes/special-requests/oesm23in4.zip",
            "section": "National",
        },
        {
            "label": "May 2023 All Data for Employment and Wage Estimates (ZIP)",
            "url": "https://www.bls.gov/oes/special-requests/oesm23all.zip",
            "section": "Other",
        },
    ]


def load_cached_iag_overview_by_url(source_url: str) -> Optional[Dict[str, object]]:
    ensure_dirs()
    candidates = sorted(DATA_DIR.glob("iag-overview-*.json"), key=lambda p: p.stat().st_mtime, reverse=True)
    for file_path in candidates:
        try:
            payload = json.loads(file_path.read_text(encoding="utf-8"))
        except (json.JSONDecodeError, OSError):
            continue
        if str(payload.get("source_url", "")).strip() == source_url:
            return payload
    return None


def fallback_iag_overview_from_url(url: str) -> Dict[str, object]:
    cached = load_cached_iag_overview_by_url(url)
    if cached:
        return {
            "title": str(cached.get("industry_title") or "Industry Overview"),
            "sections": cached.get("sections") or [],
            "tables": cached.get("tables") or [],
            "series": cached.get("series") or [],
            "backdata_series": cached.get("backdata_series") or [],
            "source": "local_cache",
        }

    title_guess = clean_text(Path(urlparse(url).path).stem.replace("iag", "")) or "Industry Overview"
    return {
        "title": f"Industry Overview (cached placeholder {title_guess})",
        "sections": [
            {
                "title": "Data Availability",
                "paragraphs": [
                    "BLS industry page fetch was blocked (HTTP 403). No cached profile payload was available for this URL.",
                    "Use an accessible network once to populate the cache, then this app can reuse local JSON without scraping again.",
                ],
            }
        ],
        "tables": [],
        "series": [],
        "backdata_series": [],
        "source": "placeholder",
    }


def ensure_dirs() -> None:
    DATA_DIR.mkdir(parents=True, exist_ok=True)
    SUMMARY_DIR.mkdir(parents=True, exist_ok=True)
    OES_XLSX_DIR.mkdir(parents=True, exist_ok=True)
    OES_API_CACHE_DIR.mkdir(parents=True, exist_ok=True)


def fallback_codes() -> Dict[str, List[Dict[str, str]]]:
    # Keep this small and stable so the app still works when BLS file endpoints are blocked.
    return {
        "naics": [
            {"code": "11", "name": "Agriculture, Forestry, Fishing and Hunting"},
            {"code": "21", "name": "Mining, Quarrying, and Oil and Gas Extraction"},
            {"code": "22", "name": "Utilities"},
            {"code": "23", "name": "Construction"},
            {"code": "31-33", "name": "Manufacturing"},
            {"code": "42", "name": "Wholesale Trade"},
            {"code": "44-45", "name": "Retail Trade"},
            {"code": "48-49", "name": "Transportation and Warehousing"},
            {"code": "51", "name": "Information"},
            {"code": "52", "name": "Finance and Insurance"},
            {"code": "53", "name": "Real Estate and Rental and Leasing"},
            {"code": "54", "name": "Professional, Scientific, and Technical Services"},
            {"code": "55", "name": "Management of Companies and Enterprises"},
            {"code": "56", "name": "Administrative and Support Services"},
            {"code": "61", "name": "Educational Services"},
            {"code": "62", "name": "Health Care and Social Assistance"},
            {"code": "71", "name": "Arts, Entertainment, and Recreation"},
            {"code": "72", "name": "Accommodation and Food Services"},
            {"code": "81", "name": "Other Services"},
            {"code": "92", "name": "Public Administration"},
        ],
        "soc": [
            {"code": "11-0000", "name": "Management Occupations"},
            {"code": "13-0000", "name": "Business and Financial Operations Occupations"},
            {"code": "15-0000", "name": "Computer and Mathematical Occupations"},
            {"code": "17-0000", "name": "Architecture and Engineering Occupations"},
            {"code": "19-0000", "name": "Life, Physical, and Social Science Occupations"},
            {"code": "21-0000", "name": "Community and Social Service Occupations"},
            {"code": "23-0000", "name": "Legal Occupations"},
            {"code": "25-0000", "name": "Educational Instruction and Library Occupations"},
            {"code": "27-0000", "name": "Arts, Design, Entertainment, Sports, and Media Occupations"},
            {"code": "29-0000", "name": "Healthcare Practitioners and Technical Occupations"},
            {"code": "31-0000", "name": "Healthcare Support Occupations"},
            {"code": "35-0000", "name": "Food Preparation and Serving Occupations"},
            {"code": "37-0000", "name": "Building and Grounds Cleaning and Maintenance Occupations"},
            {"code": "39-0000", "name": "Personal Care and Service Occupations"},
            {"code": "41-0000", "name": "Sales and Related Occupations"},
            {"code": "43-0000", "name": "Office and Administrative Support Occupations"},
            {"code": "47-0000", "name": "Construction and Extraction Occupations"},
            {"code": "49-0000", "name": "Installation, Maintenance, and Repair Occupations"},
            {"code": "51-0000", "name": "Production Occupations"},
            {"code": "53-0000", "name": "Transportation and Material Moving Occupations"},
        ],
    }


def download_if_missing(urls: List[str], target: Path) -> None:
    if target.exists() and target.stat().st_size > 0:
        return

    headers = {
        "User-Agent": (
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 "
            "(KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36"
        ),
        "Accept": "text/plain,*/*;q=0.9",
        "Referer": "https://www.bls.gov/",
    }

    errors: List[str] = []
    for url in urls:
        try:
            response = requests.get(url, timeout=40, headers=headers)
            response.raise_for_status()
            target.write_text(response.text, encoding="utf-8")
            return
        except (requests.exceptions.HTTPError, requests.exceptions.ConnectionError, requests.exceptions.Timeout) as ex:
            errors.append(f"{url} -> {ex}")

    if target.exists() and target.stat().st_size > 0:
        return

    raise requests.exceptions.HTTPError(
        "All BLS mirror URLs failed. "
        + " | ".join(errors)
    )


@lru_cache(maxsize=1)
def get_iag_industry_links() -> List[Dict[str, str]]:
    local_index_file = os.getenv("BLS_IAG_INDEX_FILE", "").strip()
    if local_index_file:
        local_links = read_iag_links_from_file(Path(local_index_file))
        if local_links:
            return local_links

    cached_links = read_iag_links_from_file(BLS_IAG_INDEX_CACHE_FILE)
    if cached_links:
        return cached_links

    try:
        response = requests.get(BLS_IAG_INDEX_URL, timeout=40, headers=bls_headers())
        response.raise_for_status()

        soup = BeautifulSoup(response.text, "html.parser")
        items: List[Dict[str, str]] = []
        seen_urls = set()

        for anchor in soup.find_all("a", href=True):
            href = anchor["href"].strip()
            if not href:
                continue

            full_url = urljoin(BLS_IAG_INDEX_URL, href)
            parsed = urlparse(full_url)
            if not parsed.path.startswith("/iag/tgs/iag") or not parsed.path.endswith(".htm"):
                continue
            if "index" in parsed.path.lower():
                continue

            parent_text = clean_text(anchor.parent.get_text(" ", strip=True) if anchor.parent else "")
            title = clean_text(anchor.get_text(" ", strip=True))
            if not title:
                continue

            naics_match = re.search(r"\(NAICS\s*([0-9\-]+)\)", parent_text, flags=re.IGNORECASE)
            if not naics_match:
                continue

            naics_code = naics_match.group(1)
            if full_url in seen_urls:
                continue
            seen_urls.add(full_url)

            items.append({
                "name": title,
                "naics": naics_code,
                "url": full_url,
                "label": f"{title} (NAICS {naics_code})",
            })

        items.sort(key=lambda x: (x["naics"], x["name"]))
        if items:
            write_iag_links_cache(items)
            return items
    except (requests.exceptions.HTTPError, requests.exceptions.ConnectionError, requests.exceptions.Timeout):
        pass

    fallback = fallback_iag_links()
    if fallback:
        write_iag_links_cache(fallback)
    return fallback


def _table_heading(table_tag) -> str:
    for tag in table_tag.find_all_previous(["h3", "h2"]):
        text = clean_text(tag.get_text(" ", strip=True))
        if text:
            return text
    return "Table"


def _extract_table_rows(table_tag, max_rows: int = 40, max_cols: int = 8) -> List[List[str]]:
    rows: List[List[str]] = []
    for tr in table_tag.find_all("tr"):
        cells = [clean_text(cell.get_text(" ", strip=True)) for cell in tr.find_all(["th", "td"])]
        if not any(cells):
            continue
        rows.append(cells[:max_cols])
        if len(rows) >= max_rows:
            break
    return rows


def _extract_table_rows_structured(table_tag, max_rows: int = 80, max_cols: int = 10) -> Dict[str, object]:
    headers: List[str] = []
    rows: List[Dict[str, object]] = []

    thead = table_tag.find("thead")
    if thead:
        header_tr = thead.find("tr")
        if header_tr:
            headers = [clean_text(cell.get_text(" ", strip=True)) for cell in header_tr.find_all(["th", "td"])][:max_cols]

    tbody = table_tag.find("tbody")
    tr_tags = tbody.find_all("tr") if tbody else table_tag.find_all("tr")

    for tr in tr_tags[:max_rows]:
        cells = tr.find_all(["th", "td"])
        if not cells:
            continue

        texts = [clean_text(cell.get_text(" ", strip=True)) for cell in cells][:max_cols]
        if not any(texts):
            continue

        back_data_url = ""
        series_id = ""
        for anchor in tr.find_all("a", href=True):
            href = anchor["href"]
            full = urljoin(BLS_BASE_URL, href)
            if "timeseries/" in full.lower():
                back_data_url = full
                series_match = re.search(r"timeseries/([A-Z0-9]+)", full, flags=re.IGNORECASE)
                if series_match:
                    series_id = series_match.group(1).upper()
                break

        metric = texts[0] if texts else ""
        values: Dict[str, str] = {}
        if headers and len(headers) > 1:
            for idx, cell_value in enumerate(texts[1:], start=1):
                if idx < len(headers):
                    values[headers[idx]] = cell_value

        rows.append(
            {
                "metric": metric,
                "cells": texts,
                "values": values,
                "back_data_url": back_data_url,
                "series_id": series_id,
            }
        )

    return {
        "headers": headers,
        "rows": rows,
    }


def _extract_backdata_series(tables: List[Dict[str, object]]) -> List[Dict[str, str]]:
    seen = set()
    out: List[Dict[str, str]] = []
    for table in tables:
        table_title = str(table.get("title") or "Table")
        for row in table.get("rows", []):
            if not isinstance(row, dict):
                continue
            series_id = str(row.get("series_id") or "").strip().upper()
            back_data_url = str(row.get("back_data_url") or "").strip()
            metric = str(row.get("metric") or "").strip()
            if not series_id:
                continue
            key = (series_id, back_data_url)
            if key in seen:
                continue
            seen.add(key)
            out.append(
                {
                    "id": series_id,
                    "url": back_data_url or f"https://data.bls.gov/timeseries/{series_id}",
                    "metric": metric,
                    "table": table_title,
                    "label": f"{series_id} - {metric}" if metric else series_id,
                }
            )
    out.sort(key=lambda x: x["id"])
    return out


def _extract_series_ids(html: str, soup: BeautifulSoup) -> List[str]:
    ids = set()

    series_prefix_regex = re.compile(
        r"\b(?:CES|LNU|LUU|JTU|BDS|NBU|CIU|CMU|MPU|ENU)[A-Z0-9]{6,}\b"
    )
    for match in series_prefix_regex.findall(html):
        ids.add(match)

    for anchor in soup.find_all("a", href=True):
        href = anchor["href"]
        text = clean_text(anchor.get_text(" ", strip=True))
        joined = f"{text} {href}"
        for match in re.findall(r"series\s+([A-Z0-9]{6,})", joined, flags=re.IGNORECASE):
            ids.add(match.upper())

    return sorted(ids)


def fetch_iag_overview(url: str) -> Dict[str, object]:
    try:
        response = requests.get(url, timeout=50, headers=bls_headers())
        response.raise_for_status()
        html = response.text
    except (requests.exceptions.HTTPError, requests.exceptions.ConnectionError, requests.exceptions.Timeout):
        return fallback_iag_overview_from_url(url)

    soup = BeautifulSoup(html, "html.parser")

    page_title = clean_text((soup.find("h1") or soup.title).get_text(" ", strip=True))

    sections: List[Dict[str, object]] = []
    for h2 in soup.find_all("h2"):
        section_name = clean_text(h2.get_text(" ", strip=True))
        if not section_name or section_name.lower() == "additional links":
            continue

        paragraphs: List[str] = []
        current = h2.next_sibling
        while current is not None:
            if getattr(current, "name", None) == "h2":
                break
            if getattr(current, "name", None) in {"p", "li"}:
                text = clean_text(current.get_text(" ", strip=True))
                if text and not text.lower().startswith("source:"):
                    paragraphs.append(text)
            current = current.next_sibling

        if paragraphs:
            sections.append({"title": section_name, "paragraphs": paragraphs[:6]})

    tables: List[Dict[str, object]] = []
    for table in soup.find_all("table"):
        structured = _extract_table_rows_structured(table)
        structured_rows = structured.get("rows", [])
        if len(structured_rows) < 2:
            continue
        tables.append({
            "title": _table_heading(table),
            "headers": structured.get("headers", []),
            "rows": structured_rows,
            "rows_preview": _extract_table_rows(table),
        })

    series_ids = _extract_series_ids(html, soup)
    series = [
        {
            "id": series_id,
            "url": f"https://data.bls.gov/timeseries/{series_id}",
        }
        for series_id in series_ids
    ]

    backdata_series = _extract_backdata_series(tables)
    series_index = {entry["id"]: entry for entry in series}
    for entry in backdata_series:
        if entry["id"] not in series_index:
            series.append({"id": entry["id"], "url": entry["url"]})

    return {
        "title": page_title,
        "sections": sections,
        "tables": tables,
        "series": series,
        "backdata_series": backdata_series,
    }


def create_iag_apa_report_markdown(source_url: str, payload: Dict[str, object]) -> Tuple[str, str]:
    title = str(payload.get("title") or "Industry Report")
    sections = payload.get("sections") or []
    tables = payload.get("tables") or []
    backdata_series = payload.get("backdata_series") or []

    generated_at = utc_timestamp_label()
    lines: List[str] = [
        f"# Industry Report: {title}",
        "",
        "## Abstract",
        "",
        "This report summarizes the latest Industry-at-a-Glance content published by the U.S. Bureau of Labor Statistics for the selected NAICS industry. It includes structured narrative sections, key table-based indicators, and back-data series references for on-demand retrieval.",
        "",
        "## 1. Method",
        "",
        f"- Source URL: {source_url}",
        f"- Retrieval timestamp: {generated_at}",
        "- Process: page was scraped and normalized into report sections, table snapshots, and series metadata.",
        "",
        "## 2. Industry Overview",
        "",
    ]

    if sections:
        for idx, section in enumerate(sections, start=1):
            section_title = str(section.get("title") or f"Section {idx}")
            lines.append(f"### 2.{idx} {section_title}")
            lines.append("")
            paragraphs = section.get("paragraphs") or []
            if paragraphs:
                lines.append(str(paragraphs[0]))
                lines.append("")
                for para in paragraphs[1:3]:
                    lines.append(str(para))
                    lines.append("")
    else:
        lines.extend([
            "No narrative section text was extracted.",
            "",
        ])

    lines.extend([
        "## 3. Table-Based Indicators",
        "",
    ])

    if tables:
        for idx, table in enumerate(tables, start=1):
            table_title = str(table.get("title") or f"Table {idx}")
            rows = table.get("rows") or []
            lines.append(f"### 3.{idx} {table_title}")
            lines.append("")
            lines.append(f"- Extracted rows: {len(rows)}")
            with_series = sum(1 for row in rows if isinstance(row, dict) and row.get("series_id"))
            lines.append(f"- Rows with back-data series IDs: {with_series}")

            preview_rows = [row for row in rows if isinstance(row, dict)][:3]
            for row in preview_rows:
                metric = str(row.get("metric") or "").strip()
                values = row.get("values") or {}
                values_text = ", ".join(f"{k}: {v}" for k, v in list(values.items())[:4] if str(v).strip())
                if metric and values_text:
                    lines.append(f"- {metric}: {values_text}")
                elif metric:
                    lines.append(f"- {metric}")
            lines.append("")
    else:
        lines.extend([
            "No structured tables were extracted.",
            "",
        ])

    lines.extend([
        "## 4. Data Series and Back Data",
        "",
    ])
    if backdata_series:
        lines.append(f"- Unique back-data series extracted: {len(backdata_series)}")
        lines.append("")
        for item in backdata_series[:40]:
            lines.append(f"- {item.get('id')}: {item.get('metric') or 'Series from table row'}")
        lines.append("")
    else:
        lines.extend([
            "No back-data links were found in table rows.",
            "",
        ])

    lines.extend([
        "## References",
        "",
        "U.S. Bureau of Labor Statistics. (2026). *Industries at a Glance*. https://www.bls.gov/iag/",
    ])

    md_content = "\n".join(lines)
    stamp = utc_stamp()
    filename = f"iag-report-{sanitize_filename(title)}-{stamp}.md"
    out_path = SUMMARY_DIR / filename
    out_path.write_text(md_content, encoding="utf-8")
    return filename, md_content


def bls_fetch_observations(series_id: str, years_back: int = 8, top_n: int = 60) -> pd.DataFrame:
    current_year = utc_now().year
    start_year = max(1980, current_year - years_back)
    payload = {
        "seriesid": [series_id],
        "startyear": str(start_year),
        "endyear": str(current_year),
    }

    response = requests.post(
        "https://api.bls.gov/publicAPI/v2/timeseries/data/",
        json=payload,
        timeout=45,
    )
    response.raise_for_status()

    body = response.json()
    if body.get("status") != "REQUEST_SUCCEEDED":
        raise ValueError(f"BLS API did not return success for series {series_id}.")

    series_list = body.get("Results", {}).get("series", [])
    if not series_list:
        return pd.DataFrame()

    data_rows = series_list[0].get("data", [])
    rows: List[Dict[str, object]] = []
    for item in data_rows:
        period = str(item.get("period", ""))
        year = str(item.get("year", ""))
        value = str(item.get("value", "")).strip()
        if not year or not period or period.startswith("M13"):
            continue

        date_str = None
        if re.fullmatch(r"M\d{2}", period):
            date_str = f"{year}-{period[1:]}-01"
        elif period.startswith("Q") and len(period) == 2 and period[1].isdigit():
            month = int(period[1]) * 3
            date_str = f"{year}-{month:02d}-01"
        elif period == "A01":
            date_str = f"{year}-01-01"

        if not date_str:
            continue

        try:
            numeric_value = float(value.replace(",", ""))
        except ValueError:
            continue

        rows.append(
            {
                "date": pd.to_datetime(date_str),
                "year": int(year),
                "period": period,
                "value": numeric_value,
            }
        )

    if not rows:
        return pd.DataFrame()

    df = pd.DataFrame(rows).sort_values("date")
    if len(df) > top_n:
        df = df.tail(top_n)
    return df


def build_bls_series_plot(series_id: str, df: pd.DataFrame) -> Optional[str]:
    if df.empty:
        return None

    fig = px.line(
        df,
        x="date",
        y="value",
        markers=True,
        title=f"BLS Series Trend: {series_id}",
        labels={"date": "Date", "value": "Value"},
    )
    fig.update_layout(template="plotly_white")
    fig.update_traces(hovertemplate="Date=%{x}<br>Value=%{y:.2f}<extra></extra>")
    return fig.to_html(full_html=False, include_plotlyjs=False)


def _oes_series_id(areatype: str, area_code: str, occ_digits: str, dtype_code: str) -> str:
    """Build a 25-char OES series ID: OE + U + areatype(1) + area_code(7) + industry(6) + occ(6) + dtype(2)."""
    return f"OEU{areatype}{area_code}000000{occ_digits.zfill(6)}{dtype_code}"


def _bls_api_payload(series_ids: List[str], year: int) -> Dict:
    payload: Dict = {
        "seriesid": series_ids,
        "startyear": str(year),
        "endyear": str(year),
    }
    api_key = (
        os.environ.get("BLS_API_KEY")
        or os.environ.get("BLS_API_KEY_V2")
        or os.environ.get("BLS_REGISTRATION_KEY")
    )
    if api_key:
        payload["registrationkey"] = api_key
    return payload


def fetch_oes_api_cross_section(
    soc_code: str,
    metric: str = "A_MEAN",
    year: int = 2023,
    force_refresh: bool = False,
) -> pd.DataFrame:
    """
    Fetch cross-sectional OES data for all 50 states via the BLS Public API v2.
    Returns a DataFrame with columns: PRIM_STATE, AREA_TITLE, <metric>, OCC_CODE.
    Results are cached under OES_API_CACHE_DIR.
    """
    ensure_dirs()
    occ_digits = _soc_code_digits(soc_code)
    dtype_code = OES_DATATYPES.get(metric)
    if not dtype_code:
        raise ValueError(f"Unknown OES metric '{metric}'. Valid: {list(OES_DATATYPES)}")

    cache_file = OES_API_CACHE_DIR / f"oes_api_{occ_digits}_{metric}_{year}.json"
    if not force_refresh and cache_file.exists():
        try:
            rows = json.loads(cache_file.read_text(encoding="utf-8"))
            if rows:
                return pd.DataFrame(rows)
        except (json.JSONDecodeError, Exception):
            pass

    # Build series IDs for all states
    series_map: Dict[str, Tuple[str, str]] = {}  # series_id → (abbr, state_name)
    for _fips, (abbr, name, area_code) in OES_STATE_MAP.items():
        sid = _oes_series_id("S", area_code, occ_digits, dtype_code)
        series_map[sid] = (abbr, name)

    # Also add national
    nat_sid = _oes_series_id("N", "0000000", occ_digits, dtype_code)
    series_map[nat_sid] = ("US", "National")

    series_ids = list(series_map.keys())

    # BLS API v2 allows up to 500 series per request (registered), 50 (unregistered)
    api_key = (
        os.environ.get("BLS_API_KEY")
        or os.environ.get("BLS_API_KEY_V2")
        or os.environ.get("BLS_REGISTRATION_KEY")
    )
    batch_size = 500 if api_key else 50
    all_rows: List[Dict] = []

    for i in range(0, len(series_ids), batch_size):
        batch = series_ids[i : i + batch_size]
        payload = _bls_api_payload(batch, year)
        resp = requests.post(BLS_API_URL, json=payload, timeout=60)
        resp.raise_for_status()
        body = resp.json()
        if body.get("status") != "REQUEST_SUCCEEDED":
            messages = body.get("message", [])
            raise ValueError(f"BLS API error: {messages}")

        for series in body.get("Results", {}).get("series", []):
            sid = series.get("seriesID", "")
            abbr, state_name = series_map.get(sid, ("??", "Unknown"))
            data = series.get("data", [])
            # Take most recent annual observation
            annual = [d for d in data if d.get("period") in ("A01", "M13")]
            if not annual:
                annual = data  # fallback: take whatever we have
            if not annual:
                continue
            latest = sorted(annual, key=lambda d: d.get("year", "0000"), reverse=True)[0]
            raw_val = str(latest.get("value", "")).strip().replace(",", "")
            try:
                val = float(raw_val)
            except ValueError:
                continue
            all_rows.append({
                "PRIM_STATE": abbr,
                "AREA_TITLE": state_name,
                metric: val,
                "OCC_CODE": soc_code,
                "YEAR": latest.get("year", str(year)),
            })

    if not all_rows:
        return pd.DataFrame()

    cache_file.write_text(json.dumps(all_rows, indent=2), encoding="utf-8")
    return pd.DataFrame(all_rows)


def save_iag_overview_raw(industry_title: str, source_url: str, payload: Dict[str, object]) -> str:
    stamp = utc_stamp()
    filename = f"iag-overview-{sanitize_filename(industry_title)}-{stamp}.json"
    out_path = DATA_DIR / filename

    serializable = {
        "source_url": source_url,
        "industry_title": industry_title,
        "fetched_at": utc_timestamp_label(),
        "sections": payload.get("sections", []),
        "tables": payload.get("tables", []),
        "series": payload.get("series", []),
        "backdata_series": payload.get("backdata_series", []),
    }
    out_path.write_text(json.dumps(serializable, indent=2), encoding="utf-8")
    return filename


def _format_soc_code(code_digits: str) -> str:
    digits = re.sub(r"\D", "", code_digits)
    if len(digits) == 6:
        return f"{digits[:2]}-{digits[2:]}"
    return code_digits


def _soc_code_digits(code: str) -> str:
    return re.sub(r"\D", "", code or "")


def _default_oes_profiles() -> List[Dict[str, str]]:
    out: List[Dict[str, str]] = []
    for row in fallback_codes().get("soc", []):
        code = str(row.get("code") or "")
        name = str(row.get("name") or "")
        digits = _soc_code_digits(code)
        if not digits:
            continue
        out.append(
            {
                "soc_code": code,
                "soc_name": name,
                "category": "SOC Major Group",
                "url": f"{OES_BASE_URL}oes{digits}.htm",
            }
        )
    return out


def _parse_oes_structure_links(html: str) -> List[Dict[str, str]]:
    soup = BeautifulSoup(html, "html.parser")
    profiles: List[Dict[str, str]] = []
    seen = set()

    for anchor in soup.find_all("a", href=True):
        href = anchor["href"].strip()
        full = urljoin(OES_STRUCTURE_URL, href)
        match = re.search(r"/oes/2023/may/oes(\d{6})\.htm$", full)
        if not match:
            continue

        digits = match.group(1)
        soc_code = _format_soc_code(digits)
        soc_name = clean_text(anchor.get_text(" ", strip=True))
        if not soc_name:
            continue

        category = "Occupation"
        previous = anchor.find_previous(["h2", "h3", "h4", "strong"])
        if previous:
            previous_text = clean_text(previous.get_text(" ", strip=True))
            if previous_text:
                category = previous_text

        key = (soc_code, full)
        if key in seen:
            continue
        seen.add(key)
        profiles.append(
            {
                "soc_code": soc_code,
                "soc_name": soc_name,
                "category": category,
                "url": full,
            }
        )

    profiles.sort(key=lambda x: (x["soc_code"], x["soc_name"]))
    return profiles


def get_oes_soc_profiles(force_refresh: bool = False) -> List[Dict[str, str]]:
    ensure_dirs()
    if not force_refresh and OES_SOC_CACHE_FILE.exists() and OES_SOC_CACHE_FILE.stat().st_size > 0:
        try:
            payload = json.loads(OES_SOC_CACHE_FILE.read_text(encoding="utf-8"))
            profiles = payload.get("profiles", []) if isinstance(payload, dict) else []
            if isinstance(profiles, list) and profiles:
                return profiles
        except (json.JSONDecodeError, OSError):
            pass

    profiles: List[Dict[str, str]] = []
    try:
        response = requests.get(OES_STRUCTURE_URL, timeout=50, headers=bls_headers())
        response.raise_for_status()
        profiles = _parse_oes_structure_links(response.text)
    except (requests.exceptions.HTTPError, requests.exceptions.ConnectionError, requests.exceptions.Timeout):
        profiles = []

    if not profiles:
        profiles = _default_oes_profiles()

    cache_payload = {
        "source_url": OES_STRUCTURE_URL,
        "fetched_at": utc_timestamp_label(),
        "profiles": profiles,
    }
    OES_SOC_CACHE_FILE.write_text(json.dumps(cache_payload, indent=2), encoding="utf-8")
    return profiles


def _parse_oes_profile_tables(soup: BeautifulSoup) -> List[Dict[str, object]]:
    tables: List[Dict[str, object]] = []
    for table in soup.find_all("table"):
        parsed = _extract_table_rows_structured(table, max_rows=120, max_cols=12)
        rows = parsed.get("rows", [])
        if len(rows) < 2:
            continue
        tables.append(
            {
                "title": _table_heading(table),
                "headers": parsed.get("headers", []),
                "rows": rows,
            }
        )
    return tables


def get_oes_occupation_profile(soc_code: str, url: str, force_refresh: bool = False) -> Dict[str, object]:
    ensure_dirs()
    soc_digits = _soc_code_digits(soc_code)
    cache_path = DATA_DIR / f"oes_profile_{soc_digits}.json"
    if not force_refresh and cache_path.exists() and cache_path.stat().st_size > 0:
        try:
            return json.loads(cache_path.read_text(encoding="utf-8"))
        except (json.JSONDecodeError, OSError):
            pass

    response = requests.get(url, timeout=50, headers=bls_headers())
    response.raise_for_status()
    soup = BeautifulSoup(response.text, "html.parser")

    title_node = soup.find("h1") or soup.title
    title = clean_text(title_node.get_text(" ", strip=True)) if title_node else soc_code

    paragraphs: List[str] = []
    for p in soup.find_all("p"):
        text = clean_text(p.get_text(" ", strip=True))
        if not text:
            continue
        if len(text) < 30:
            continue
        if text.lower().startswith("updated"):
            continue
        paragraphs.append(text)
        if len(paragraphs) >= 10:
            break

    tables = _parse_oes_profile_tables(soup)
    profile_payload: Dict[str, object] = {
        "soc_code": soc_code,
        "source_url": url,
        "title": title,
        "paragraphs": paragraphs,
        "tables": tables,
        "fetched_at": utc_timestamp_label(),
    }
    cache_path.write_text(json.dumps(profile_payload, indent=2), encoding="utf-8")
    return profile_payload


def get_oes_tables_links(force_refresh: bool = False) -> List[Dict[str, str]]:
    ensure_dirs()
    if not force_refresh and OES_TABLES_CACHE_FILE.exists() and OES_TABLES_CACHE_FILE.stat().st_size > 0:
        try:
            payload = json.loads(OES_TABLES_CACHE_FILE.read_text(encoding="utf-8"))
            links = payload.get("links", []) if isinstance(payload, dict) else []
            if isinstance(links, list) and links:
                return links
        except (json.JSONDecodeError, OSError):
            pass

    links: List[Dict[str, str]] = []
    try:
        response = requests.get(OES_TABLES_URL, timeout=50, headers=bls_headers())
        response.raise_for_status()
        soup = BeautifulSoup(response.text, "html.parser")
        seen = set()
        for anchor in soup.find_all("a", href=True):
            href = anchor["href"].strip()
            if not (href.lower().endswith(".xlsx") or href.lower().endswith(".zip") or href.lower().endswith(".xls")):
                continue
            full = urljoin(OES_TABLES_URL, href)
            label = clean_text(anchor.get_text(" ", strip=True)) or Path(urlparse(full).path).name
            label_lower = label.lower()
            if "msa" in label_lower or "metropolitan" in label_lower:
                section = "MSA"
            elif "non" in label_lower and "metro" in label_lower:
                section = "nonMSA"
            elif "state" in label_lower:
                section = "State"
            elif "national" in label_lower:
                section = "National"
            else:
                section = "Other"

            key = (full, label)
            if key in seen:
                continue
            seen.add(key)
            links.append({"label": label, "url": full, "section": section})
    except (requests.exceptions.HTTPError, requests.exceptions.ConnectionError, requests.exceptions.Timeout):
        links = []

    if not links:
        links = fallback_oes_tables_links()

    links.sort(key=lambda x: (x["section"], x["label"]))
    OES_TABLES_CACHE_FILE.write_text(
        json.dumps(
            {
                "source_url": OES_TABLES_URL,
                "fetched_at": utc_timestamp_label(),
                "links": links,
            },
            indent=2,
        ),
        encoding="utf-8",
    )
    return links


def _find_local_oes_file(zip_stem: str) -> Optional[Path]:
    """Scan OES_XLSX_DIR for any manually placed file that matches zip_stem (case-insensitive)."""
    stem_lower = zip_stem.lower()
    for p in OES_XLSX_DIR.iterdir():
        name_lower = p.name.lower()
        # Accept exact zip match, extracted XLSX/XLS bearing same stem, or any xlsx already in folder
        if name_lower in (f"{stem_lower}.zip", f"{stem_lower}.xlsx", f"{stem_lower}.xls"):
            return p
        if name_lower.startswith(stem_lower) and name_lower.endswith((".xlsx", ".xls", ".zip")):
            return p
    # Fallback: return first xlsx found (only when there's exactly one)
    xlsx_files = [p for p in OES_XLSX_DIR.iterdir() if p.suffix.lower() in (".xlsx", ".xls")]
    if len(xlsx_files) == 1:
        return xlsx_files[0]
    return None


def _bls_session_get(url: str, timeout: int = 90) -> requests.Response:
    """Download a BLS file using a browser-like session to avoid 403 blocks."""
    session = requests.Session()
    # First warm up cookies/session by visiting the OES tables page as a browser would
    try:
        session.get(
            OES_TABLES_URL,
            timeout=15,
            headers={
                **bls_headers(),
                "Accept-Language": "en-US,en;q=0.9",
                "Accept-Encoding": "gzip, deflate, br",
                "Connection": "keep-alive",
                "Upgrade-Insecure-Requests": "1",
                "Cache-Control": "max-age=0",
            },
        )
    except Exception:
        pass  # If warm-up fails, still attempt the real download

    response = session.get(
        url,
        timeout=timeout,
        headers={
            **bls_headers(),
            "Referer": OES_TABLES_URL,
            "Accept": "application/zip,application/octet-stream,application/vnd.ms-excel,*/*;q=0.8",
            "Accept-Language": "en-US,en;q=0.9",
            "Accept-Encoding": "gzip, deflate, br",
            "Connection": "keep-alive",
            "Upgrade-Insecure-Requests": "1",
        },
        stream=True,
    )
    return response


def download_oes_xlsx(url: str) -> Path:
    ensure_dirs()
    parsed = urlparse(url)
    filename = Path(parsed.path).name or f"oes-{sanitize_filename(url)}"
    zip_stem = Path(filename).stem  # e.g. "oesm23ma"

    if filename.lower().endswith(".zip"):
        zip_target = OES_XLSX_DIR / filename

        # Return already-extracted XLSX if present
        existing_xlsx = [p for p in OES_XLSX_DIR.iterdir()
                         if p.suffix.lower() in (".xlsx", ".xls") and p.name.lower() != filename.lower()]
        # Check if a ZIP we already downloaded has been extracted
        if zip_target.exists() and zip_target.stat().st_size > 0:
            with ZipFile(zip_target) as zf:
                members = [n for n in zf.namelist() if n.lower().endswith((".xlsx", ".xls"))]
                if members:
                    extracted = OES_XLSX_DIR / Path(members[0]).name
                    if extracted.exists() and extracted.stat().st_size > 0:
                        return extracted
                    extracted.write_bytes(zf.read(members[0]))
                    return extracted

        # Attempt download with browser-session
        try:
            response = _bls_session_get(url)
            response.raise_for_status()
            content = b"".join(response.iter_content(chunk_size=1024 * 256))
            zip_target.write_bytes(content)
        except requests.exceptions.HTTPError as http_err:
            # BLS returns 403 for automated requests — look for a manually placed file
            local = _find_local_oes_file(zip_stem)
            if local and local.suffix.lower() == ".zip":
                zip_target = local
            elif local and local.suffix.lower() in (".xlsx", ".xls"):
                return local
            else:
                raise FileNotFoundError(
                    f"BLS blocked the automated download ({http_err}). "
                    f"Please manually download the file from {url} "
                    f"and place it (or the extracted Excel file) in: {OES_XLSX_DIR}"
                ) from http_err

        with ZipFile(zip_target) as zf:
            members = [n for n in zf.namelist() if n.lower().endswith((".xlsx", ".xls"))]
            if not members:
                raise ValueError("Downloaded OES ZIP did not contain an Excel file.")
            member = members[0]
            extracted = OES_XLSX_DIR / Path(member).name
            if not extracted.exists() or extracted.stat().st_size == 0:
                extracted.write_bytes(zf.read(member))
            return extracted

    if not filename.lower().endswith((".xlsx", ".xls")):
        filename = f"{filename}.xlsx"
    target = OES_XLSX_DIR / filename
    if target.exists() and target.stat().st_size > 0:
        return target

    try:
        response = _bls_session_get(url)
        response.raise_for_status()
        target.write_bytes(b"".join(response.iter_content(chunk_size=1024 * 256)))
    except requests.exceptions.HTTPError as http_err:
        local = _find_local_oes_file(Path(filename).stem)
        if local:
            return local
        raise FileNotFoundError(
            f"BLS blocked the automated download ({http_err}). "
            f"Please manually download the file from {url} "
            f"and place it in: {OES_XLSX_DIR}"
        ) from http_err
    return target


def load_oes_dataset_for_soc(xlsx_path: Path, soc_code: str) -> pd.DataFrame:
    raw = pd.read_excel(xlsx_path)
    if raw.empty:
        return pd.DataFrame()

    df = raw.copy()
    normalized_cols = {c: str(c).strip().upper().replace(" ", "_") for c in df.columns}
    df = df.rename(columns=normalized_cols)

    if "OCC_CODE" not in df.columns:
        for candidate in ["SOC_CODE", "OCCUPATION_CODE", "OCCUPATION"]:
            if candidate in df.columns:
                df = df.rename(columns={candidate: "OCC_CODE"})
                break

    if "OCC_CODE" not in df.columns:
        return pd.DataFrame()

    wanted_digits = _soc_code_digits(soc_code)
    df["_OCC_DIGITS"] = df["OCC_CODE"].astype(str).str.replace(r"[^0-9]", "", regex=True)
    filtered = df[df["_OCC_DIGITS"] == wanted_digits].copy()
    if filtered.empty:
        return pd.DataFrame()

    for col in ["TOT_EMP", "A_MEAN", "A_MEDIAN", "H_MEAN", "H_MEDIAN", "MEAN_WAGE", "MEDIAN_WAGE"]:
        if col in filtered.columns:
            filtered[col] = (
                filtered[col]
                .astype(str)
                .str.replace(",", "", regex=False)
                .str.replace("$", "", regex=False)
            )
            filtered[col] = pd.to_numeric(filtered[col], errors="coerce")

    if "AREA_TITLE" not in filtered.columns:
        for c in ["AREA", "AREA_NAME", "STATE", "PRIM_STATE"]:
            if c in filtered.columns:
                filtered["AREA_TITLE"] = filtered[c].astype(str)
                break

    if "PRIM_STATE" not in filtered.columns:
        if "STATE" in filtered.columns:
            filtered["PRIM_STATE"] = filtered["STATE"].astype(str)
        else:
            filtered["PRIM_STATE"] = ""

    return filtered


def build_state_choropleth(df: pd.DataFrame, metric_col: str, title: str) -> Optional[str]:
    if df.empty or metric_col not in df.columns or "PRIM_STATE" not in df.columns:
        return None

    states = df.copy()
    states["PRIM_STATE"] = states["PRIM_STATE"].astype(str).str.upper().str.strip()
    states = states[states["PRIM_STATE"].str.len() == 2]
    states = states.dropna(subset=[metric_col])
    if states.empty:
        return None

    agg = states.groupby("PRIM_STATE", as_index=False)[metric_col].mean()
    fig = px.choropleth(
        agg,
        locations="PRIM_STATE",
        locationmode="USA-states",
        color=metric_col,
        scope="usa",
        title=title,
        color_continuous_scale="Tealgrn",
    )
    fig.update_layout(template="plotly_white")
    return fig.to_html(full_html=False, include_plotlyjs=False)


def build_top_areas_bar(df: pd.DataFrame, metric_col: str, title: str, top_n: int = 20) -> Optional[str]:
    if df.empty or metric_col not in df.columns or "AREA_TITLE" not in df.columns:
        return None

    subset = df.dropna(subset=[metric_col]).copy()
    if subset.empty:
        return None

    subset = subset.sort_values(metric_col, ascending=False).head(top_n)
    fig = px.bar(
        subset,
        x=metric_col,
        y="AREA_TITLE",
        orientation="h",
        title=title,
    )
    fig.update_layout(template="plotly_white", yaxis={"categoryorder": "total ascending"})
    return fig.to_html(full_html=False, include_plotlyjs=False)


def create_oes_apa_report_markdown(profile: Dict[str, object]) -> Tuple[str, str]:
    title = str(profile.get("title") or "Occupation Profile")
    soc_code = str(profile.get("soc_code") or "")
    source_url = str(profile.get("source_url") or "")
    paragraphs = profile.get("paragraphs") or []
    tables = profile.get("tables") or []
    generated_at = utc_timestamp_label()

    lines: List[str] = [
        f"# Occupation Wage Profile Report: {title}",
        "",
        "## Abstract",
        "",
        "This APA-style profile summarizes occupational employment and wage information from the BLS Occupational Employment and Wage Statistics publication for the selected SOC code.",
        "",
        "## 1. Method",
        "",
        f"- SOC code: {soc_code}",
        f"- Source URL: {source_url}",
        f"- Retrieval timestamp: {generated_at}",
        "",
        "## 2. Occupation Narrative",
        "",
    ]

    if paragraphs:
        for i, para in enumerate(paragraphs[:6], start=1):
            lines.append(f"### 2.{i} Context")
            lines.append("")
            lines.append(str(para))
            lines.append("")
    else:
        lines.extend(["No narrative description was extracted.", ""])

    lines.extend([
        "## 3. Wage and Employment Tables",
        "",
    ])
    if tables:
        for i, table in enumerate(tables[:8], start=1):
            table_title = str(table.get("title") or f"Table {i}")
            rows = table.get("rows") or []
            lines.append(f"### 3.{i} {table_title}")
            lines.append("")
            lines.append(f"- Extracted rows: {len(rows)}")
            preview = [r for r in rows if isinstance(r, dict)][:3]
            for row in preview:
                metric = str(row.get("metric") or "").strip()
                values = row.get("values") or {}
                values_text = ", ".join(
                    f"{k}: {v}" for k, v in list(values.items())[:4] if str(v).strip()
                )
                if metric and values_text:
                    lines.append(f"- {metric}: {values_text}")
                elif metric:
                    lines.append(f"- {metric}")
            lines.append("")
    else:
        lines.extend(["No table data was extracted.", ""])

    lines.extend(
        [
            "## References",
            "",
            "U.S. Bureau of Labor Statistics. (2023). *Occupational Employment and Wage Statistics*. https://www.bls.gov/oes/",
        ]
    )

    md = "\n".join(lines)
    stamp = utc_stamp()
    filename = f"oes-profile-{sanitize_filename(soc_code)}-{stamp}.md"
    (SUMMARY_DIR / filename).write_text(md, encoding="utf-8")
    return filename, md


def _find_column(df: pd.DataFrame, candidates: List[str]) -> str:
    lowered = {c.lower(): c for c in df.columns}
    for candidate in candidates:
        if candidate in lowered:
            return lowered[candidate]
    raise ValueError(f"Could not find any of columns {candidates} in dataset.")


def load_code_table(path: Path, code_candidates: List[str], name_candidates: List[str]) -> pd.DataFrame:
    df = pd.read_csv(path, sep="\t", dtype=str, comment="#")
    code_col = _find_column(df, code_candidates)
    name_col = _find_column(df, name_candidates)

    normalized = df[[code_col, name_col]].copy()
    normalized.columns = ["code", "name"]
    normalized = normalized.dropna(subset=["code", "name"])
    normalized["code"] = normalized["code"].str.strip()
    normalized["name"] = normalized["name"].str.strip()
    normalized = normalized[normalized["code"] != ""]
    normalized = normalized.drop_duplicates(subset=["code"]).sort_values("name")
    return normalized


def load_available_codes() -> Dict[str, List[Dict[str, str]]]:
    ensure_dirs()

    industry_file = DATA_DIR / "oe.industry.tsv"
    occupation_file = DATA_DIR / "oe.occupation.tsv"

    local_industry = os.getenv("BLS_OE_INDUSTRY_FILE", "").strip()
    local_occupation = os.getenv("BLS_OE_OCCUPATION_FILE", "").strip()

    if local_industry and local_occupation:
        industry_file = Path(local_industry)
        occupation_file = Path(local_occupation)
    else:
        download_if_missing(BLS_OE_INDUSTRY_URLS, industry_file)
        download_if_missing(BLS_OE_OCCUPATION_URLS, occupation_file)

    naics_like = load_code_table(
        industry_file,
        code_candidates=["industry_code", "code"],
        name_candidates=["industry_name", "name", "title"],
    )

    soc = load_code_table(
        occupation_file,
        code_candidates=["occupation_code", "code", "soc_code"],
        name_candidates=["occupation_name", "name", "title"],
    )

    return {
        "naics": naics_like.to_dict(orient="records"),
        "soc": soc.to_dict(orient="records"),
    }


def sanitize_filename(text: str) -> str:
    cleaned = re.sub(r"[^a-zA-Z0-9_-]+", "-", text)
    return cleaned.strip("-")[:120] or "report"


def _normalized_tokens(text: str) -> List[str]:
    words = re.findall(r"[a-z]+", text.lower())
    return [w for w in words if len(w) > 2 and w not in TEXT_STOPWORDS]


def _naics_prefix(code: str) -> str:
    digits = "".join(ch for ch in code if ch.isdigit())
    return digits[:2] if len(digits) >= 2 else ""


@lru_cache(maxsize=1)
def load_fred_categories() -> List[Dict[str, str]]:
    ensure_dirs()
    target = DATA_DIR / "all_fred_categories.csv"

    if not target.exists() or target.stat().st_size == 0:
        response = requests.get(FRED_CATEGORIES_CSV_URL, timeout=40)
        response.raise_for_status()
        target.write_text(response.text, encoding="utf-8")

    df = pd.read_csv(target)
    if "id" not in df.columns or "name" not in df.columns:
        raise ValueError("FRED categories CSV is missing required columns: id, name")

    normalized = df[["id", "name"]].copy()
    normalized["id"] = normalized["id"].astype(str)
    normalized["name"] = normalized["name"].astype(str)
    return normalized.to_dict(orient="records")


def _category_score(category_name: str, terms: List[str]) -> int:
    name = category_name.lower()
    score = 0
    for term in terms:
        if term in name:
            score += 3
        term_tokens = _normalized_tokens(term)
        if any(token in name for token in term_tokens):
            score += 1
    if "unemployment" in name:
        score += 2
    return score


def _series_score(series_title: str, terms: List[str]) -> int:
    title = series_title.lower()
    score = 0
    if "unemployment" in title:
        score += 4
    if "rate" in title:
        score += 3
    for term in terms:
        if term in title:
            score += 2
    for token in _normalized_tokens(" ".join(terms)):
        if token in title:
            score += 1
    return score


def _keyword_search_series(fred_key: str, industry_name: str) -> Optional[Dict[str, str]]:
    terms = [industry_name]
    params = {
        "search_text": f"unemployment rate {industry_name}",
        "api_key": fred_key,
        "file_type": "json",
        "limit": 100,
        "order_by": "search_rank",
        "sort_order": "desc",
    }

    response = requests.get(FRED_SEARCH_URL, params=params, timeout=30)
    response.raise_for_status()
    payload = response.json()

    series_list = payload.get("seriess", [])
    if not series_list:
        return None

    best_rate = None
    best_unemployment = None
    best_rate_score = -1
    best_unemp_score = -1

    for item in series_list:
        title = str(item.get("title", ""))
        title_lower = title.lower()
        score = _series_score(title, terms)

        if "unemployment" in title_lower and "rate" in title_lower and score > best_rate_score:
            best_rate = item
            best_rate_score = score
        elif "unemployment" in title_lower and score > best_unemp_score:
            best_unemployment = item
            best_unemp_score = score

    if best_rate:
        best_rate["match_method"] = "keyword_search"
        return best_rate

    if best_unemployment:
        best_unemployment["match_method"] = "keyword_search_unemployment"
        return best_unemployment

    return None


def _category_mapped_series(fred_key: str, code: str, industry_name: str) -> Optional[Dict[str, str]]:
    categories = load_fred_categories()

    prefix = _naics_prefix(code)
    terms = [industry_name]
    if prefix in NAICS_TO_KEYWORDS:
        terms.extend(NAICS_TO_KEYWORDS[prefix])

    scored_categories = []
    for row in categories:
        score = _category_score(str(row["name"]), terms)
        if score > 0:
            scored_categories.append((score, str(row["id"]), str(row["name"])))

    if not scored_categories:
        return None

    scored_categories.sort(key=lambda x: x[0], reverse=True)
    top_categories = scored_categories[:6]

    best_series = None
    best_score = -1
    best_category = None

    for _, category_id, category_name in top_categories:
        params = {
            "category_id": category_id,
            "api_key": fred_key,
            "file_type": "json",
            "limit": 200,
            "order_by": "popularity",
            "sort_order": "desc",
        }

        try:
            response = requests.get(FRED_CATEGORY_SERIES_URL, params=params, timeout=30)
            response.raise_for_status()
            series_list = response.json().get("seriess", [])
        except (
            requests.exceptions.HTTPError,
            requests.exceptions.ConnectionError,
            requests.exceptions.Timeout,
            json.JSONDecodeError,
        ):
            continue

        for item in series_list:
            title = str(item.get("title", ""))
            title_lower = title.lower()
            if "unemployment" not in title_lower:
                continue
            score = _series_score(title, terms)
            if score > best_score:
                best_series = item
                best_score = score
                best_category = {"id": category_id, "name": category_name}

    if not best_series:
        return None

    best_series["match_method"] = "naics_category_mapping"
    if best_category:
        best_series["matched_category_id"] = best_category["id"]
        best_series["matched_category_name"] = best_category["name"]
    return best_series


def fred_find_unemployment_series(code_type: str, code: str, industry_name: str) -> Optional[Dict[str, str]]:
    fred_key = os.getenv("FRED_API_KEY", "").strip()
    if not fred_key:
        return None

    if code_type == "naics":
        mapped = _category_mapped_series(fred_key, code, industry_name)
        if mapped:
            return mapped

    return _keyword_search_series(fred_key, industry_name)


def fred_series_observations(series_id: str) -> pd.DataFrame:
    fred_key = os.getenv("FRED_API_KEY", "").strip()
    if not fred_key:
        return pd.DataFrame()

    params = {
        "series_id": series_id,
        "api_key": fred_key,
        "file_type": "json",
    }

    response = requests.get(FRED_OBS_URL, params=params, timeout=30)
    response.raise_for_status()
    observations = response.json().get("observations", [])

    rows = []
    for obs in observations:
        raw_value = obs.get("value")
        if raw_value in (None, "."):
            continue
        try:
            value = float(raw_value)
        except (TypeError, ValueError):
            continue

        rows.append({
            "date": obs.get("date"),
            "value": value,
        })

    if not rows:
        return pd.DataFrame()

    df = pd.DataFrame(rows)
    df["date"] = pd.to_datetime(df["date"])
    return df.sort_values("date")


def summarize_with_openai(prompt: str) -> Optional[str]:
    api_key = os.getenv("OPENAI_API_KEY", "").strip()
    if not api_key:
        return None

    model = os.getenv("OPENAI_MODEL", "gpt-4o-mini")
    payload = {
        "model": model,
        "messages": [
            {
                "role": "system",
                "content": "You are an economic analyst. Return concise markdown with key points and implications.",
            },
            {"role": "user", "content": prompt},
        ],
        "temperature": 0.3,
    }

    headers = {
        "Authorization": f"Bearer {api_key}",
        "Content-Type": "application/json",
    }

    response = requests.post(
        "https://api.openai.com/v1/chat/completions",
        headers=headers,
        json=payload,
        timeout=60,
    )
    response.raise_for_status()
    data = response.json()
    return data["choices"][0]["message"]["content"].strip()


def summarize_with_huggingface(text: str) -> Optional[str]:
    api_key = (
        os.getenv("HUGGINGFACE_API_KEY", "").strip()
        or os.getenv("HF_API_KEY", "").strip()
        or os.getenv("HF_TOKEN", "").strip()
        or os.getenv("HUGGINGFACEHUB_API_TOKEN", "").strip()
    )
    if not api_key:
        return None

    configured_model = os.getenv("HUGGINGFACE_MODEL", "Qwen/Qwen2.5-7B-Instruct").strip()
    model_candidates = [
        configured_model,
        "Qwen/Qwen2.5-7B-Instruct",
        "Qwen/Qwen2.5-3B-Instruct",
        "google/flan-t5-large",
    ]
    model_candidates = [m for m in model_candidates if m]

    headers = {
        "Authorization": f"Bearer {api_key}",
        "Content-Type": "application/json",
    }

    prompt = (
        "Summarize this industry and labor-market context in concise markdown with sections "
        "for Overview, Labor Signal, and Caveats.\n\n"
        + text[:5000]
    )

    for model_name in model_candidates:
        payload = {
            "inputs": prompt,
            "parameters": {
                "max_new_tokens": 220,
                "temperature": 0.2,
                "return_full_text": False,
            },
        }
        try:
            endpoints = [
                f"https://api-inference.huggingface.co/models/{model_name}",
                f"https://router.huggingface.co/hf-inference/models/{model_name}",
            ]
            data = None
            for endpoint in endpoints:
                response = requests.post(endpoint, headers=headers, json=payload, timeout=90)
                if response.status_code in {401, 403}:
                    continue
                if response.status_code in {404, 429, 500, 502, 503, 504}:
                    continue
                response.raise_for_status()
                data = response.json()
                break

            if data is None:
                continue

            if isinstance(data, list) and data:
                first = data[0]
                if isinstance(first, dict) and "summary_text" in first:
                    return str(first["summary_text"]).strip()
                if isinstance(first, dict) and "generated_text" in first:
                    return str(first["generated_text"]).strip()

            if isinstance(data, dict) and "summary_text" in data:
                return str(data["summary_text"]).strip()
            if isinstance(data, dict) and "generated_text" in data:
                return str(data["generated_text"]).strip()
        except (
            requests.exceptions.HTTPError,
            requests.exceptions.ConnectionError,
            requests.exceptions.Timeout,
            json.JSONDecodeError,
        ):
            continue

    return None


def create_summary_markdown(
    code_type: str,
    code: str,
    industry_name: str,
    fred_series: Optional[Dict[str, str]],
    unemployment_df: pd.DataFrame,
) -> Tuple[str, str]:
    latest_point = "No unemployment values found for this query."
    if not unemployment_df.empty:
        latest = unemployment_df.iloc[-1]
        latest_point = f"Latest unemployment rate: {latest['value']:.2f}% on {latest['date'].date()}."

    context = (
        f"Industry code type: {code_type}\n"
        f"Industry code: {code}\n"
        f"Industry name: {industry_name}\n"
        f"FRED series: {fred_series.get('id') if fred_series else 'none'}\n"
        f"FRED title: {fred_series.get('title') if fred_series else 'none'}\n"
        f"FRED match method: {fred_series.get('match_method') if fred_series else 'none'}\n"
        f"FRED matched category: {fred_series.get('matched_category_name') if fred_series else 'none'}\n"
        f"{latest_point}\n"
    )

    openai_text = summarize_with_openai(
        "Write a short markdown summary with sections for Overview, Labor Signal, and Caveats.\n\n"
        + context
    )

    hf_text = summarize_with_huggingface(context)

    generated_at = utc_timestamp_label()
    lines = [
        f"# Industry Brief: {industry_name}",
        "",
        f"- Code type: {code_type}",
        f"- Code: {code}",
        f"- Generated: {generated_at}",
        "",
        "## Source Snapshot",
        "",
        f"- FRED series ID: {fred_series.get('id') if fred_series else 'Not found'}",
        f"- FRED title: {fred_series.get('title') if fred_series else 'Not found'}",
        f"- FRED match method: {fred_series.get('match_method') if fred_series else 'Not found'}",
        f"- FRED category ID: {fred_series.get('matched_category_id') if fred_series else 'Not found'}",
        f"- FRED category name: {fred_series.get('matched_category_name') if fred_series else 'Not found'}",
        f"- {latest_point}",
        "",
        "## OpenAI Summary",
        "",
        openai_text or "OpenAI summary could not be generated (check OPENAI_API_KEY).",
        "",
        "## Hugging Face Summary",
        "",
        hf_text
        or "Hugging Face summary could not be generated. Verify token env (HUGGINGFACE_API_KEY/HF_API_KEY/HF_TOKEN), model access, and inference endpoint permissions.",
    ]

    md_content = "\n".join(lines)

    stamp = utc_stamp()
    filename = f"{sanitize_filename(code_type)}-{sanitize_filename(code)}-{stamp}.md"
    path = SUMMARY_DIR / filename
    path.write_text(md_content, encoding="utf-8")
    return filename, md_content


def build_plot_html(industry_name: str, df: pd.DataFrame, series_title: str) -> Optional[str]:
    if df.empty:
        return None

    fig = px.line(
        df,
        x="date",
        y="value",
        markers=True,
        title=f"Unemployment Rate Trend: {industry_name}",
        labels={"date": "Date", "value": "Unemployment Rate (%)"},
    )
    fig.update_layout(template="plotly_white")
    fig.update_traces(hovertemplate="Date=%{x}<br>Rate=%{y:.2f}%<extra></extra>")

    if series_title:
        fig.add_annotation(
            text=f"Series: {series_title}",
            xref="paper",
            yref="paper",
            x=0,
            y=1.1,
            showarrow=False,
        )

    return fig.to_html(full_html=False, include_plotlyjs=False)


def save_raw_report(
    code_type: str,
    code: str,
    industry_name: str,
    fred_series: Optional[Dict[str, str]],
    df: pd.DataFrame,
    summary_file: str,
) -> str:
    stamp = utc_stamp()
    filename = f"industry-data-{sanitize_filename(code_type)}-{sanitize_filename(code)}-{stamp}.json"
    out_path = DATA_DIR / filename

    payload = {
        "code_type": code_type,
        "code": code,
        "industry_name": industry_name,
        "fred_series": {
            "id": fred_series.get("id") if fred_series else None,
            "title": fred_series.get("title") if fred_series else None,
        },
        "summary_markdown_file": summary_file,
        "observations": [
            {"date": r["date"].strftime("%Y-%m-%d"), "value": float(r["value"])}
            for _, r in df.iterrows()
        ]
        if not df.empty
        else [],
    }
    out_path.write_text(json.dumps(payload, indent=2), encoding="utf-8")
    return filename


@app.route("/", methods=["GET", "POST"])
def index():
    show_bls_warning = os.getenv("SHOW_BLS_WARNING", "0").strip().lower() in {"1", "true", "yes"}

    try:
        codes_by_type = load_available_codes()
        load_warning = None
    except (
        requests.exceptions.HTTPError,
        requests.exceptions.ConnectionError,
        requests.exceptions.Timeout,
        FileNotFoundError,
        pd.errors.ParserError,
    ) as ex:
        codes_by_type = fallback_codes()
        load_warning = None
        if show_bls_warning:
            load_warning = (
                "BLS source files are blocked from this network, so fallback code lists are being used. "
                f"Details: {ex}"
            )

    selected_type = request.form.get("code_type", "naics")
    selected_code = request.form.get("code", "")

    selected_iag_url = ""
    iag_links: List[Dict[str, str]] = []
    iag_error = None
    try:
        iag_links = get_iag_industry_links()
        if iag_links:
            selected_iag_url = request.form.get("iag_url", iag_links[0]["url"])
    except (requests.exceptions.HTTPError, requests.exceptions.ConnectionError, requests.exceptions.Timeout) as ex:
        iag_error = f"Could not load BLS industry index links: {ex}"

    oes_error = None
    oes_profiles: List[Dict[str, str]] = []
    oes_table_links: List[Dict[str, str]] = []
    try:
        oes_profiles = get_oes_soc_profiles()
    except (requests.exceptions.HTTPError, requests.exceptions.ConnectionError, requests.exceptions.Timeout, ValueError) as ex:
        oes_error = f"Could not load OES SOC profile links: {ex}"
        oes_profiles = _default_oes_profiles()

    try:
        oes_table_links = get_oes_tables_links()
    except (requests.exceptions.HTTPError, requests.exceptions.ConnectionError, requests.exceptions.Timeout, ValueError):
        oes_table_links = []

    active_tab = request.form.get("tab", "report")

    error = None
    summary_html = None
    summary_file = None
    plot_html = None
    data_file = None

    iag_title = None
    iag_sections = None
    iag_tables = None
    iag_series = None
    iag_backdata_series = None
    iag_data_file = None
    iag_report_file = None
    iag_report_html = None
    selected_series_id = ""
    series_obs_rows = None
    series_obs_plot_html = None

    selected_soc_code = request.form.get("soc_code", oes_profiles[0]["soc_code"] if oes_profiles else "")
    selected_oes_table_url = request.form.get("oes_table_url", oes_table_links[0]["url"] if oes_table_links else "")
    selected_oes_metric = request.form.get("oes_metric", "A_MEAN")
    oes_profile_title = None
    oes_profile_report_file = None
    oes_profile_report_html = None
    oes_profile_data_file = None
    oes_dataset_file = None
    oes_dataset_preview = None
    oes_state_map_html = None
    oes_top_areas_plot_html = None

    if request.method == "POST":
        form_type = request.form.get("form_type", "report")
        if form_type == "bls_overview":
            active_tab = "bls_overview"
            selected_iag_url = request.form.get("iag_url", "")
            if not selected_iag_url:
                error = "Please choose a BLS industry page."
            else:
                try:
                    payload = fetch_iag_overview(selected_iag_url)
                    iag_title = str(payload.get("title") or "Industry Overview")
                    iag_sections = payload.get("sections") or []
                    iag_tables = payload.get("tables") or []
                    iag_series = payload.get("series") or []
                    iag_backdata_series = payload.get("backdata_series") or []
                    iag_report_file, iag_md = create_iag_apa_report_markdown(selected_iag_url, payload)
                    iag_report_html = markdown(iag_md)
                    iag_data_file = save_iag_overview_raw(iag_title, selected_iag_url, payload)
                    if iag_backdata_series:
                        selected_series_id = str(iag_backdata_series[0].get("id") or "")
                except (
                    requests.exceptions.HTTPError,
                    requests.exceptions.ConnectionError,
                    requests.exceptions.Timeout,
                    FileNotFoundError,
                    json.JSONDecodeError,
                    ValueError,
                ) as ex:
                    error = f"Failed to process request: {ex}"
        elif form_type == "bls_observation":
            active_tab = "bls_overview"
            selected_iag_url = request.form.get("iag_url", "")
            selected_series_id = request.form.get("series_id", "").strip().upper()

            if not selected_iag_url:
                error = "Please choose a BLS industry page."
            elif not selected_series_id:
                error = "Please choose a BLS series ID."
            else:
                try:
                    payload = fetch_iag_overview(selected_iag_url)
                    iag_title = str(payload.get("title") or "Industry Overview")
                    iag_sections = payload.get("sections") or []
                    iag_tables = payload.get("tables") or []
                    iag_series = payload.get("series") or []
                    iag_backdata_series = payload.get("backdata_series") or []
                    iag_report_file, iag_md = create_iag_apa_report_markdown(selected_iag_url, payload)
                    iag_report_html = markdown(iag_md)
                    iag_data_file = save_iag_overview_raw(iag_title, selected_iag_url, payload)

                    if not selected_series_id and iag_backdata_series:
                        selected_series_id = str(iag_backdata_series[0].get("id") or "")

                    series_df = bls_fetch_observations(selected_series_id)
                    series_obs_rows = (
                        [
                            {
                                "date": row["date"].strftime("%Y-%m-%d"),
                                "period": str(row["period"]),
                                "value": float(row["value"]),
                            }
                            for _, row in series_df.iterrows()
                        ]
                        if not series_df.empty
                        else []
                    )
                    series_obs_plot_html = build_bls_series_plot(selected_series_id, series_df)
                except (
                    requests.exceptions.HTTPError,
                    requests.exceptions.ConnectionError,
                    requests.exceptions.Timeout,
                    FileNotFoundError,
                    json.JSONDecodeError,
                    ValueError,
                ) as ex:
                    error = f"Failed to process request: {ex}"
        elif form_type == "oes_profile":
            active_tab = "oes_profiles"
            selected_soc_code = request.form.get("soc_code", "")
            selected_row = next((row for row in oes_profiles if row["soc_code"] == selected_soc_code), None)
            if not selected_row:
                error = "Please choose a valid SOC occupation profile."
            else:
                try:
                    profile = get_oes_occupation_profile(selected_soc_code, selected_row["url"])
                    oes_profile_title = str(profile.get("title") or selected_row["soc_name"])
                    oes_profile_report_file, profile_md = create_oes_apa_report_markdown(profile)
                    oes_profile_report_html = markdown(profile_md)

                    stamp = utc_stamp()
                    oes_profile_data_file = f"oes-profile-{sanitize_filename(selected_soc_code)}-{stamp}.json"
                    (DATA_DIR / oes_profile_data_file).write_text(json.dumps(profile, indent=2), encoding="utf-8")
                except (
                    requests.exceptions.HTTPError,
                    requests.exceptions.ConnectionError,
                    requests.exceptions.Timeout,
                    FileNotFoundError,
                    json.JSONDecodeError,
                    ValueError,
                ) as ex:
                    error = f"Failed to process OES profile request: {ex}"
        elif form_type == "oes_dataset":
            active_tab = "oes_profiles"
            selected_soc_code = request.form.get("soc_code", "")
            selected_oes_metric = request.form.get("oes_metric", "A_MEAN")

            if not selected_soc_code:
                error = "Please select a SOC code."
            else:
                try:
                    dataset_df = fetch_oes_api_cross_section(
                        selected_soc_code,
                        metric=selected_oes_metric,
                        year=2023,
                    )
                    if dataset_df.empty:
                        error = (
                            f"No data returned from BLS API for SOC {selected_soc_code} / "
                            f"{selected_oes_metric} (2023). The series may not exist for this occupation."
                        )
                    else:
                        oes_state_map_html = build_state_choropleth(
                            dataset_df,
                            selected_oes_metric,
                            title=f"State-Level {selected_oes_metric} for SOC {selected_soc_code} (2023)",
                        )
                        oes_top_areas_plot_html = build_top_areas_bar(
                            dataset_df,
                            selected_oes_metric,
                            title=f"Top States by {selected_oes_metric} for SOC {selected_soc_code} (2023)",
                        )
                        preview_cols = [c for c in ["AREA_TITLE", "PRIM_STATE", selected_oes_metric, "OCC_CODE", "YEAR"] if c in dataset_df.columns]
                        oes_dataset_preview = dataset_df[preview_cols].fillna("").to_dict(orient="records")

                        stamp = utc_stamp()
                        oes_dataset_file = f"oes-api-{sanitize_filename(selected_soc_code)}-{selected_oes_metric}-{stamp}.json"
                        (DATA_DIR / oes_dataset_file).write_text(
                            json.dumps({
                                "soc_code": selected_soc_code,
                                "metric": selected_oes_metric,
                                "year": 2023,
                                "source": "BLS Public API v2",
                                "rows": dataset_df.fillna("").to_dict(orient="records"),
                            }, indent=2),
                            encoding="utf-8",
                        )
                except (
                    requests.exceptions.HTTPError,
                    requests.exceptions.ConnectionError,
                    requests.exceptions.Timeout,
                    json.JSONDecodeError,
                    ValueError,
                ) as ex:
                    error = f"Failed to fetch OES data from BLS API: {ex}"
        else:
            active_tab = "report"
            if selected_type not in codes_by_type:
                error = "Invalid code type selected."
            else:
                selected_row = next(
                    (row for row in codes_by_type[selected_type] if row["code"] == selected_code),
                    None,
                )

                if not selected_row:
                    error = "Please choose a valid industry code."
                else:
                    try:
                        industry_name = selected_row["name"]
                        fred_series = fred_find_unemployment_series(
                            code_type=selected_type,
                            code=selected_code,
                            industry_name=industry_name,
                        )
                        unemployment_df = (
                            fred_series_observations(fred_series["id"]) if fred_series else pd.DataFrame()
                        )

                        summary_file, md_content = create_summary_markdown(
                            selected_type,
                            selected_code,
                            industry_name,
                            fred_series,
                            unemployment_df,
                        )

                        summary_html = markdown(md_content)
                        plot_html = build_plot_html(
                            industry_name,
                            unemployment_df,
                            fred_series.get("title", "") if fred_series else "",
                        )
                        data_file = save_raw_report(
                            selected_type,
                            selected_code,
                            industry_name,
                            fred_series,
                            unemployment_df,
                            summary_file,
                        )
                    except (
                        requests.exceptions.HTTPError,
                        requests.exceptions.ConnectionError,
                        requests.exceptions.Timeout,
                        FileNotFoundError,
                        KeyError,
                        IndexError,
                        json.JSONDecodeError,
                        ValueError,
                        pd.errors.ParserError,
                    ) as ex:
                        error = f"Failed to process request: {ex}"

    return render_template(
        "index.html",
        codes_by_type=codes_by_type,
        iag_links=iag_links,
        warning=load_warning,
        iag_error=iag_error,
        oes_error=oes_error,
        oes_profiles=oes_profiles,
        oes_table_links=oes_table_links,
        error=error,
        selected_type=selected_type,
        selected_code=selected_code,
        selected_iag_url=selected_iag_url,
        active_tab=active_tab,
        summary_html=summary_html,
        summary_file=summary_file,
        plot_html=plot_html,
        data_file=data_file,
        iag_title=iag_title,
        iag_sections=iag_sections,
        iag_tables=iag_tables,
        iag_series=iag_series,
        iag_backdata_series=iag_backdata_series,
        iag_data_file=iag_data_file,
        iag_report_file=iag_report_file,
        iag_report_html=iag_report_html,
        selected_series_id=selected_series_id,
        series_obs_rows=series_obs_rows,
        series_obs_plot_html=series_obs_plot_html,
        selected_soc_code=selected_soc_code,
        selected_oes_table_url=selected_oes_table_url,
        selected_oes_metric=selected_oes_metric,
        oes_profile_title=oes_profile_title,
        oes_profile_report_file=oes_profile_report_file,
        oes_profile_report_html=oes_profile_report_html,
        oes_profile_data_file=oes_profile_data_file,
        oes_dataset_file=oes_dataset_file,
        oes_dataset_preview=oes_dataset_preview,
        oes_state_map_html=oes_state_map_html,
        oes_top_areas_plot_html=oes_top_areas_plot_html,
    )


if __name__ == "__main__":
    ensure_dirs()
    app.run(host="0.0.0.0", port=5000, debug=True)
