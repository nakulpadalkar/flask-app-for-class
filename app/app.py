from flask import Flask, render_template, request, redirect, url_for, flash, jsonify
import numpy as np
import pandas as pd
import joblib
import uuid
import os
import secrets
from dotenv import load_dotenv
import time
import json
from datetime import datetime
from flask_sqlalchemy import SQLAlchemy

# Assuming your .env file is in the 'app' directory, relative to this script
dotenv_path = os.path.join(os.path.dirname(__file__), '/', '.env')
load_dotenv(dotenv_path)

app = Flask(__name__)
app.secret_key = secrets.token_hex()

# Configure your MySQL database URI here
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:Georgetown1!@localhost/telemetry'

# Initialize the SQLAlchemy database
db = SQLAlchemy(app)

# Define available model names
available_models = ['lr', 'Ridge', 'Lasso', 'Tree', 'Random_Forest', 'Bagging', 'GBM', 'XGB', 'LightGBM']

# Define a dictionary to store telemetry data
telemetry_data = {}

class TelemetryData(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    timestamp = db.Column(db.String(20), nullable=False)
    input_data = db.Column(db.String(255), nullable=False)
    selected_model = db.Column(db.String(50), nullable=False)
    prediction_text = db.Column(db.String(255), nullable=False)

@app.route("/", methods=['GET', 'POST'])
def hello_world():
    prediction_text = None
    input_data = None
    selected_model = None  # Initialize the selected_model variable

    if request.method == 'GET':
        print("GET request received")
        return render_template("index.html", available_models=available_models, telemetry_data=telemetry_data)
    else:
        try:
            text = request.form['text']
            selected_model = request.form.get('model')  # Get the selected model name
            random_string = uuid.uuid4().hex

            print(f"Received POST request with input data: {text}")

            # Load the selected model...
            model_path = f"./app/TrainedModel/{selected_model}_model.joblib"
            model = joblib.load(model_path)

            np_arr = floatsome_to_np_array(text)

            # Check if the input data has the correct shape (1, 13)...
            if np_arr.shape == (1, 13):
                print("Input data is in the correct format")
                feature_names = ['crim', 'zn', 'indus', 'chas', 'nox', 'rm', 'age', 'dis', 'rad', 'tax', 'ptratio', 'b', 'lstat']
                input_df = pd.DataFrame(np_arr, columns=feature_names)
                input_data = input_df.to_dict(orient='records')[0]  # Convert input data to a dictionary

                prediction = model.predict(input_df)

                # Convert prediction to text and format it to display
                prediction_text = f"The predicted value is: {prediction[0]:.2f}"
                print(f"Prediction: {prediction_text}")

                # Collect telemetry data
                collect_telemetry_data(text, selected_model, prediction_text)

                # Save telemetry data to the database
                save_telemetry_to_db(text, selected_model, prediction_text)

            else:
                flash('Input data is not in the correct format. Please enter 13 comma-separated values.', 'danger')
                return redirect(url_for('error_page'))

        except Exception as e:
            flash(str(e), 'danger')
            print(f"Error: {str(e)}")
            return redirect(url_for('error_page'))

    return render_template("index.html", prediction_text=prediction_text, input_data=input_data, selected_model=selected_model, telemetry_data=telemetry_data)

@app.route("/error")
def error_page():
    return render_template("error.html")

def floatsome_to_np_array(floats_str):
    floats = np.array([float(x) for x in floats_str.split(',') if x.strip()], dtype=np.float32)
    if len(floats) != 13:
        raise ValueError("Expected 13 comma-separated values.")
    return floats.reshape(1, 13)

def collect_telemetry_data(text, selected_model, prediction_text):
    timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    telemetry_data[timestamp] = {
        'input_data': text,
        'selected_model': selected_model,
        'prediction_text': prediction_text
    }
    # Save telemetry data to a JSON file with the current date and time as the filename
    filename = f"telemetry_data_{timestamp.replace(' ', '_').replace(':', '-')}.json"
    with open(filename, 'w') as file:
        json.dump(telemetry_data[timestamp], file, indent=4)

def save_telemetry_to_db(text, selected_model, prediction_text):
    timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    telemetry_entry = TelemetryData(
        timestamp=timestamp,
        input_data=text,
        selected_model=selected_model,
        prediction_text=prediction_text
    )
    db.session.add(telemetry_entry)
    db.session.commit()

if __name__ == "__main__":
    app.run(debug=True)


# Define a new route for prediction API
@app.route("/api/predict", methods=['POST'])
def predict_api():
    try:
        # Get JSON data from the request
        data = request.get_json()
        input_data = data.get('input_data')
        selected_model = data.get('selected_model')

        # Load the selected model...
        model_path = f"./app/TrainedModel/{selected_model}_model.joblib"
        model = joblib.load(model_path)

        np_arr = floatsome_to_np_array(input_data)

        # Check if the input data has the correct shape (1, 13)...
        if np_arr.shape == (1, 13):
            feature_names = ['crim', 'zn', 'indus', 'chas', 'nox', 'rm', 'age', 'dis', 'rad', 'tax', 'ptratio', 'b', 'lstat']
            input_df = pd.DataFrame(np_arr, columns=feature_names)

            prediction = model.predict(input_df)

            # Convert prediction to text and format it to display
            prediction_text = f"The predicted value is: {prediction[0]:.2f}"

            # Collect telemetry data
            collect_telemetry_data(input_data, selected_model, prediction_text)

            # Save telemetry data to the database
            save_telemetry_to_db(input_data, selected_model, prediction_text)

            # Return prediction result as JSON
            return jsonify({'prediction': prediction_text})

        else:
            return jsonify({'error': 'Input data is not in the correct format. Please enter 13 comma-separated values.'}), 400

    except Exception as e:
        return jsonify({'error': str(e)}), 500