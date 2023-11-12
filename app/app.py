from flask import Flask, render_template, request
import numpy as np
import pandas as pd
import joblib
from sklearn.model_selection import train_test_split
import plotly.express as px
from plotly.subplots import make_subplots
import plotly.graph_objs as go
import uuid
import os

app = Flask(__name__)

@app.route("/", methods=['GET', 'POST'])
def hello_world():
    request_type_str = request.method
    if request_type_str == 'GET':
        return render_template("index.html", href="static/baseimage.svg")
    else:
        text = request.form['text']
        random_string = uuid.uuid4().hex
        path = "./static/" + random_string + ".svg"

        # Load and Create Dataframe
        boston = pd.read_csv("./app/TrainedModel/BostonHousing.csv")
        df_X = boston.drop(['medv'], axis=1)
        df_y = boston['medv']

        # Split the data frame
        X_train, X_test, y_train, y_test = train_test_split(df_X, df_y, test_size=0.15)
        
        # Load the model
        pkl_filename = "./app/TrainedModel/stacked-model.joblib"
        model = joblib.load(pkl_filename)
        np_arr = floatsome_to_np_array(text).reshape(1, -1)
        
        plot_graphs(model=model, new_input_arr=np_arr, output_file=path)
        return render_template("index.html", href=path[2:])

def plot_graphs(model, new_input_arr, output_file):
    boston = pd.read_csv("./app/TrainedModel/BostonHousing.csv")

    # ... [rest of your plot_graphs function remains unchanged] ...

def floatsome_to_np_array(floats_str):
    def is_float(s):
        try:
            float(s)
            return True
        except:
            return False
    floats = np.array([float(x) for x in floats_str.split(',') if is_float(x)])
    return floats.reshape(len(floats), 1)

if __name__ == "__main__":
    app.run(debug=True)







# example comment made by me














# def hello_world():
#     request_type_str = request.method
#     if request_type_str == 'GET':
#         return render_template('index.html', href='static/base_pic.svg')
#     else:
#         text = request.form['text']
        # random_string = uuid.uuid4().hex
        # path = "static/" + random_string + ".svg"
        # model = load('model.joblib')
        # np_arr = floats_string_to_np_arr(text)
        # make_picture('AgesAndHeights.pkl', model, np_arr, path)
    # return render_template("index.html",href=path)

# This is the first and second step
# def hello_world():
#     return "<p>Hello, World</p>" # First Step
#     # return render_template('index.html', href='static/baseimage.svg') # Comment first step and then uncomment this

# def hello_world():
#     request_type_str = request.method
#     if request_type_str == 'GET':
#         return render_template('index.html', href='static/base_pic.svg')
#     else:
#         text = request.form['text']
        # random_string = uuid.uuid4().hex
        # path = "static/" + random_string + ".svg"
        # model = load('model.joblib')
        # np_arr = floats_string_to_np_arr(text)
        # make_picture('AgesAndHeights.pkl', model, np_arr, path)
    # return render_template("index.html",href=path)

    # boston = load_boston()
    # pkl_filename = "TrainedModel/StackedPickle.pkl"
    # testvalue = boston.data[1].reshape(1, -1)
    # test_input = testvalue
    # with open(pkl_filename, 'rb') as file:
    #     pickle_model = pickle.load(file)
    # predict = pickle_model.predict(test_input)
    # predict_as_str = str(predict)
    # return predict_as_str