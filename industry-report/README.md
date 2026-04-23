# Industry Report Flask App

This app lives in the `industry-report` folder and does the following:

- Downloads industry-like and occupation code tables from BLS OE reference files
- Lets you select a code (NAICS-like and SOC lists)
- Searches FRED for an unemployment rate series related to that selection
- Builds an interactive Plotly chart for unemployment trend
- Uses OpenAI and Hugging Face APIs to generate summaries
- Saves summary output as Markdown in `industry-report/summaries`
- Saves raw result payload as JSON in `industry-report/data`
- Uses FRED category reference data (`all_fred_categories.csv`) to improve NAICS-to-series mapping before falling back to keyword search

## Environment Variables

Set these before running:

- `OPENAI_API_KEY` (required for OpenAI summary)
- `OPENAI_MODEL` (optional, default: `gpt-4o-mini`)
- `HUGGINGFACE_API_KEY` or `HF_API_KEY` (required for Hugging Face summary)
- `HUGGINGFACE_MODEL` (optional, default tries Qwen first: `Qwen/Qwen2.5-7B-Instruct`)
- `FRED_API_KEY` (required for unemployment series search + observations)
- `BLS_OE_INDUSTRY_FILE` (optional absolute path to local `oe.industry` file)
- `BLS_OE_OCCUPATION_FILE` (optional absolute path to local `oe.occupation` file)
- `SHOW_BLS_WARNING` (optional, default `0`; set `1` to show BLS network fallback warning in UI)

The app auto-loads variables from `.env` in `industry-report/`.

## Run Locally

```bash
cd industry-report
pip install -r requirements.txt
python app.py
```

Open: `http://127.0.0.1:5000`

## Notes

- If an API key is missing, the app still runs and reports which summary/data pieces could not be fetched.
- BLS code files are cached under `industry-report/data` after first download.
- FRED category reference CSV is cached as `industry-report/data/all_fred_categories.csv` after first use.
- In some networks, BLS file hosts may return `403 Forbidden` for automated downloads. The app now tries multiple BLS mirror URLs and then falls back to a built-in NAICS/SOC list so the UI remains usable.
- By default, BLS network fallback is silent (app continues with fallback lists). Set `SHOW_BLS_WARNING=1` if you want to see the warning message in the UI.
- If your browser can download BLS files but Python cannot, place files locally and set `BLS_OE_INDUSTRY_FILE` and `BLS_OE_OCCUPATION_FILE` in `.env` to force local source usage.
