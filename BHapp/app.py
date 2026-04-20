from pathlib import Path

import numpy as np
import pandas as pd
import plotly.express as px
from dash import Dash, Input, Output, dcc, html


def load_boston_data() -> pd.DataFrame:
    data_candidates = [
        Path(__file__).resolve().parents[1] / "app" / "TrainedModel" / "BostonHousing.csv",
        Path(__file__).resolve().parent / "BostonHousing.csv",
    ]

    for csv_path in data_candidates:
        if csv_path.exists():
            return pd.read_csv(csv_path)

    searched = "\n".join(str(path) for path in data_candidates)
    raise FileNotFoundError(f"BostonHousing.csv was not found. Searched:\n{searched}")


df = load_boston_data()
numeric_cols = df.select_dtypes(include=[np.number]).columns.tolist()
target_col = "medv" if "medv" in df.columns else numeric_cols[-1]
feature_options = [col for col in numeric_cols if col != target_col]


app = Dash(__name__, title="Boston Housing EDA")
server = app.server


def make_summary_cards(frame: pd.DataFrame) -> list[html.Div]:
    total_missing = int(frame.isna().sum().sum())
    duplicate_rows = int(frame.duplicated().sum())

    stats = [
        ("Rows", f"{frame.shape[0]:,}"),
        ("Columns", f"{frame.shape[1]:,}"),
        ("Missing Values", f"{total_missing:,}"),
        ("Duplicate Rows", f"{duplicate_rows:,}"),
        ("Target", target_col),
    ]

    return [
        html.Div(
            className="summary-card",
            children=[
                html.Div(label, className="summary-label"),
                html.Div(value, className="summary-value"),
            ],
        )
        for label, value in stats
    ]


summary_cards = make_summary_cards(df)

initial_matrix_features = feature_options[:4] if len(feature_options) >= 4 else feature_options

app.layout = html.Div(
    className="page",
    children=[
        html.Div(
            className="hero",
            children=[
                html.H1("Boston Housing EDA Dashboard", className="title"),
                html.P(
                    "Interactive exploratory analysis for the Boston Housing dataset using Plotly Dash.",
                    className="subtitle",
                ),
            ],
        ),
        html.Div(className="summary-grid", children=summary_cards),
        html.Div(
            className="grid two-col",
            children=[
                html.Div(
                    className="panel",
                    children=[
                        html.H3("Target Distribution", className="panel-title"),
                        dcc.Graph(id="target-histogram"),
                    ],
                ),
                html.Div(
                    className="panel",
                    children=[
                        html.H3("Missing Values by Column", className="panel-title"),
                        dcc.Graph(id="missing-bar"),
                    ],
                ),
            ],
        ),
        html.Div(
            className="panel",
            children=[
                html.H3("Correlation Heatmap (Numeric Features)", className="panel-title"),
                dcc.Graph(id="corr-heatmap"),
            ],
        ),
        html.Div(
            className="grid two-col",
            children=[
                html.Div(
                    className="panel",
                    children=[
                        html.H3("Feature Box Plot", className="panel-title"),
                        dcc.Dropdown(
                            id="box-feature",
                            options=[{"label": col.upper(), "value": col} for col in feature_options],
                            value=feature_options[0],
                            clearable=False,
                        ),
                        dcc.Graph(id="box-plot"),
                    ],
                ),
                html.Div(
                    className="panel",
                    children=[
                        html.H3("Feature Relationship", className="panel-title"),
                        html.Div(
                            className="controls",
                            children=[
                                html.Div(
                                    children=[
                                        html.Label("X-axis", className="control-label"),
                                        dcc.Dropdown(
                                            id="scatter-x",
                                            options=[{"label": col.upper(), "value": col} for col in numeric_cols],
                                            value=feature_options[0],
                                            clearable=False,
                                        ),
                                    ]
                                ),
                                html.Div(
                                    children=[
                                        html.Label("Y-axis", className="control-label"),
                                        dcc.Dropdown(
                                            id="scatter-y",
                                            options=[{"label": col.upper(), "value": col} for col in numeric_cols],
                                            value=target_col,
                                            clearable=False,
                                        ),
                                    ]
                                ),
                            ],
                        ),
                        dcc.Graph(id="scatter-plot"),
                    ],
                ),
            ],
        ),
        html.Div(
            className="panel",
            children=[
                html.H3("Scatter Matrix", className="panel-title"),
                html.P(
                    "Select up to 6 numeric columns for an interactive pair plot.",
                    className="panel-note",
                ),
                dcc.Dropdown(
                    id="matrix-features",
                    options=[{"label": col.upper(), "value": col} for col in numeric_cols],
                    value=initial_matrix_features,
                    multi=True,
                ),
                dcc.Graph(id="scatter-matrix"),
            ],
        ),
    ],
)


@app.callback(Output("target-histogram", "figure"), Input("target-histogram", "id"))
def render_target_histogram(_):
    fig = px.histogram(
        df,
        x=target_col,
        nbins=28,
        marginal="box",
        title=f"Distribution of {target_col.upper()}",
        template="plotly_white",
    )
    fig.update_traces(marker_color="#ff7a59", marker_line_color="#432818", marker_line_width=1)
    fig.update_layout(title_x=0.01, paper_bgcolor="rgba(0,0,0,0)", plot_bgcolor="#fffdf8")
    return fig


@app.callback(Output("missing-bar", "figure"), Input("missing-bar", "id"))
def render_missing_values(_):
    missing_counts = df.isna().sum().reset_index()
    missing_counts.columns = ["column", "missing"]

    fig = px.bar(
        missing_counts,
        x="column",
        y="missing",
        title="Missing Values Count",
        template="plotly_white",
    )
    fig.update_traces(marker_color="#4f46e5")
    fig.update_layout(title_x=0.01, paper_bgcolor="rgba(0,0,0,0)", plot_bgcolor="#fffdf8")
    return fig


@app.callback(Output("corr-heatmap", "figure"), Input("corr-heatmap", "id"))
def render_correlation_heatmap(_):
    corr = df[numeric_cols].corr(numeric_only=True)

    fig = px.imshow(
        corr,
        text_auto=".2f",
        aspect="auto",
        color_continuous_scale="RdBu_r",
        zmin=-1,
        zmax=1,
        title="Correlation Matrix",
    )
    fig.update_layout(title_x=0.01, paper_bgcolor="rgba(0,0,0,0)", plot_bgcolor="#fffdf8")
    return fig


@app.callback(Output("box-plot", "figure"), Input("box-feature", "value"))
def render_box_plot(feature: str):
    fig = px.box(
        df,
        y=feature,
        points="all",
        title=f"Box Plot of {feature.upper()}",
        template="plotly_white",
    )
    fig.update_traces(marker_color="#00a896", line_color="#05668d")
    fig.update_layout(title_x=0.01, paper_bgcolor="rgba(0,0,0,0)", plot_bgcolor="#fffdf8")
    return fig


@app.callback(Output("scatter-plot", "figure"), Input("scatter-x", "value"), Input("scatter-y", "value"))
def render_scatter_plot(x_col: str, y_col: str):
    fig = px.scatter(
        df,
        x=x_col,
        y=y_col,
        color=target_col,
        color_continuous_scale="Magma",
        opacity=0.75,
        trendline="ols",
        title=f"{x_col.upper()} vs {y_col.upper()}",
        template="plotly_white",
    )
    fig.update_layout(title_x=0.01, paper_bgcolor="rgba(0,0,0,0)", plot_bgcolor="#fffdf8")
    return fig


@app.callback(Output("scatter-matrix", "figure"), Input("matrix-features", "value"))
def render_scatter_matrix(selected_columns: list[str] | None):
    cols = selected_columns or initial_matrix_features
    cols = cols[:6]

    fig = px.scatter_matrix(
        df,
        dimensions=cols,
        color=target_col,
        color_continuous_scale="PuRd",
        title="Scatter Matrix",
        template="plotly_white",
    )
    fig.update_traces(diagonal_visible=False, marker=dict(size=4, opacity=0.65))
    fig.update_layout(title_x=0.01, paper_bgcolor="rgba(0,0,0,0)", plot_bgcolor="#fffdf8")
    return fig


if __name__ == "__main__":
    app.run(debug=True)
