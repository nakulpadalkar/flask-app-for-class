from flask import Flask, render_template, request, redirect, url_for, flash
import numpy as np
import pandas as pd
import joblib
from plotly.subplots import make_subplots
import plotly.graph_objs as go
import uuid
import os
import secrets
from dotenv import load_dotenv
import time

# Assuming your .env file is in the 'app' directory, relative to this script
dotenv_path = os.path.join(os.path.dirname(__file__), '/', '.env')
load_dotenv(dotenv_path)

app = Flask(__name__)
app.secret_key = secrets.token_hex(16)


@app.route("/", methods=['GET', 'POST'])
def hello_world():
    prediction_text = None  # Initialize the variable to store prediction text
    if request.method == 'GET':
        return render_template("index.html", href="baseimage.svg")
    else:
        try:
            text = request.form['text']
            random_string = uuid.uuid4().hex
            path = f"./static/{random_string}.svg"

            # Load the model and prepare input data...
            model = joblib.load("./app/TrainedModel/stacked_models.joblib")
            np_arr = floatsome_to_np_array(text)

            # Check if the input data has the correct shape (1, 13)...
            if np_arr.shape == (1, 13):
                feature_names = ['crim', 'zn', 'indus', 'chas', 'nox', 'rm', 'age', 'dis', 'rad', 'tax', 'ptratio', 'b', 'lstat']
                input_df = pd.DataFrame(np_arr, columns=feature_names)
                prediction = model.predict(input_df)

                # Convert prediction to text and format it to display
                prediction_text = f"The predicted value is: {prediction[0]:.2f}"

                # Generate plot...
                plot_graphs(model, np_arr, path)

            else:
                flash('Input data is not in the correct format. Please enter 13 comma-separated values.', 'danger')
                return redirect(url_for('error_page'))

        except Exception as e:
            flash(str(e), 'danger')
            return redirect(url_for('error_page'))

    # Append a timestamp to the image URL to prevent caching
    timestamp = int(time.time())  # Get the current timestamp
    return render_template("index.html", href=f"{path}?t={timestamp}", prediction_text=prediction_text)


@app.route("/error")
def error_page():
    return render_template("error.html")


def plot_graphs(model, new_input_arr, output_file):
    boston = pd.read_csv("./app/TrainedModel/BostonHousing.csv")

    fig = make_subplots(rows=1, cols=2)

    # Scatter plot for LSTAT vs MEDV
    fig.add_trace(
        go.Scatter(x=boston["lstat"], y=boston['medv'], mode='markers',
                   marker=dict(color="#003366"),
                   line=dict(color="#003366", width=1)),
        row=1, col=1
    )

    # Scatter plot for RM vs MEDV
    fig.add_trace(
        go.Scatter(x=boston['rm'], y=boston['medv'], mode='markers',
                   marker=dict(color="#FF6600"),
                   line=dict(color="#FF6600", width=1)),
        row=1, col=2
    )

    # Predictions
    new_preds = model.predict(new_input_arr)
    RM_input = new_input_arr[0][5]
    LSTAT_input = new_input_arr[0][12]

    # Add predicted points to the plots
    fig.add_trace(
        go.Scatter(x=[LSTAT_input], y=new_preds, mode='markers', name="Predicted Output",
                   marker=dict(color="#FFCC00", size=15),
                   line=dict(color="#FFCC00", width=1)),
        row=1, col=1
    )

    fig.add_trace(
        go.Scatter(x=[RM_input], y=new_preds, mode='markers', name="Predicted Output",
                   marker=dict(color="#6600cc", size=15),
                   line=dict(color="red", width=1)),
        row=1, col=2
    )

    # Update axes and layout
    fig.update_xaxes(title_text="Lower State Population (%)", row=1, col=1)
    fig.update_xaxes(title_text="Number of Rooms", row=1, col=2)
    fig.update_yaxes(title_text="House Prices ($1000)", row=1, col=1)
    fig.update_layout(height=600, width=1400, title_text="Variation in Housing Prices")

    # Save and show the figure
    fig.write_image(output_file, width=1200, engine="kaleido")


def floatsome_to_np_array(floats_str):
    floats = np.array([float(x) for x in floats_str.split(',') if x.strip()], dtype=np.float32)
    if len(floats) != 13:
        raise ValueError("Expected 13 comma-separated values.")
    return floats.reshape(1, 13)


if __name__ == "__main__":
    app.run(debug=True)
