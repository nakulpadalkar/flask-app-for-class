import json
import os
import re
from datetime import datetime
from functools import lru_cache
from pathlib import Path
from typing import Dict, List, Optional, Tuple

import pandas as pd
import plotly.express as px
import requests
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


def ensure_dirs() -> None:
    DATA_DIR.mkdir(parents=True, exist_ok=True)
    SUMMARY_DIR.mkdir(parents=True, exist_ok=True)


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
    api_key = os.getenv("HUGGINGFACE_API_KEY", "").strip() or os.getenv("HF_API_KEY", "").strip()
    if not api_key:
        return None

    configured_model = os.getenv("HUGGINGFACE_MODEL", "").strip()
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
            response = requests.post(
                f"https://api-inference.huggingface.co/models/{model_name}",
                headers=headers,
                json=payload,
                timeout=90,
            )
            if response.status_code in {401, 403}:
                return None
            if response.status_code in {404, 429, 500, 502, 503, 504}:
                continue

            response.raise_for_status()
            data = response.json()

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

    generated_at = datetime.utcnow().strftime("%Y-%m-%d %H:%M:%S UTC")
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
        hf_text or "Hugging Face summary could not be generated (check HUGGINGFACE_API_KEY or HF_API_KEY).",
    ]

    md_content = "\n".join(lines)

    stamp = datetime.utcnow().strftime("%Y%m%d-%H%M%S")
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
    stamp = datetime.utcnow().strftime("%Y%m%d-%H%M%S")
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

    error = None
    summary_html = None
    summary_file = None
    plot_html = None
    data_file = None

    if request.method == "POST":
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
        warning=load_warning,
        error=error,
        selected_type=selected_type,
        selected_code=selected_code,
        summary_html=summary_html,
        summary_file=summary_file,
        plot_html=plot_html,
        data_file=data_file,
    )


if __name__ == "__main__":
    ensure_dirs()
    app.run(host="0.0.0.0", port=5000, debug=True)
