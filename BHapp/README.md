# Boston Housing Dash App

This folder contains a standalone Plotly Dash EDA app for the Boston Housing dataset.

## Dataset
The app automatically loads from:

1. `../app/TrainedModel/BostonHousing.csv` (default in this repository)
2. `./BostonHousing.csv` (fallback)

## Setup

```bash
pip install -r BHapp/requirements.txt
```

## Run

```bash
python BHapp/app.py
```

Then open the local URL printed in the terminal (usually `http://127.0.0.1:8050`).

## Included EDA Views

- Summary cards (rows, columns, missing values, duplicates, target)
- Target distribution histogram + marginal box plot
- Missing-value counts per column
- Correlation heatmap for numeric features
- Interactive feature box plot
- Interactive scatter with trendline
- Scatter matrix (select up to 6 features)
