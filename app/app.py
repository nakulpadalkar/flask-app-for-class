from flask import Flask, render_template, request
import numpy as np
import pandas as pd
import pickle
from sklearn.datasets import load_boston
from sklearn.model_selection import train_test_split, cross_val_score
# import matplotlib.pyplot as plt
# import seaborn as sns
# import warnings
# from sklearn.linear_model import Ridge, Lasso, LinearRegression
# from sklearn.tree import DecisionTreeRegressor
# from sklearn.ensemble import GradientBoostingRegressor, BaggingRegressor, RandomForestRegressor, StackingRegressor
# from xgboost import XGBRegressor
# from lightgbm import LGBMRegressor
import plotly.express as px
from plotly.subplots import make_subplots
import plotly.graph_objs as go
import uuid
import os



app = Flask(__name__)

# @app.route("/") # Start here
@app.route("/",methods=['GET','POST']) # We need to change the first line to include GET and POST methods

def hello_world():
    request_type_str = request.method
    if request_type_str=='GET':
        return render_template("index.html",href="static/baseimage.svg")
    else:
        text = request.form['text']
        random_string = uuid.uuid4().hex
        path = "./static/"+random_string +".svg"

        # Load and Create Dataframe
        boston = pd.read_csv("./TrainedModel/BostonHousing.csv")
        df = pd.DataFrame(boston.data, columns = boston.feature_names)
        df['PRICE'] = boston.target

        # Split the data frame
        X_train, X_test, y_train, y_test = train_test_split(boston.data, boston.target, test_size=0.25)
        
        # Load the model with details
        files = [f for f in os.listdir('.') if os.path.isfile(f)]
        for f in files:
          print(f)
        np_arr = floatsome_to_np_array(text).reshape(1, -1)
        pkl_filename="./TrainedModel/StackedPickle.pkl" # remove app/ from the path if you are running this locally.
        with open(pkl_filename, 'rb') as file:
            pickle_model = pickle.load(file)
        plot_graphs(model=pickle_model,new_input_arr=np_arr,output_file= path)
        return render_template("index.html",href=path[2:])


def plot_graphs(model,new_input_arr, output_file):
    data = load_boston()
    df = pd.DataFrame(data.data, columns = data.feature_names)
    df['PRICE'] = data.target

    fig = make_subplots(
    rows=1, cols=2
    # subplot_titles=("Plot 1", "Plot 2", "Plot 3", "Plot 4")
    )

    fig.add_trace(
        go.Scatter(x=df["LSTAT"],y=df['PRICE'],mode='markers',
        marker=dict(
                color="#003366"),
            line=dict(color="#003366",width=1)),
        row=1, col=1
    )

    fig.add_trace(
        go.Scatter(x=df['RM'],y=df['PRICE'],mode='markers',
        marker=dict(
                color="#FF6600"),
            line=dict(color="#FF6600",width=1)),
        row=1, col=2
    )

    new_preds = model.predict(new_input_arr)
    # print(new_preds)
    RM_input = np.array(new_input_arr[0][5])
    # print(RM_input)
    LSTAT_input =np.array(new_input_arr[0][12])
    # print(LSTAT_input)

    fig.add_trace(
    go.Scatter(
        x=LSTAT_input,
        y=new_preds,
        mode='markers', name="Predicted Output",
        marker=dict(
            color="#FFCC00",size=15),
        line=dict(color="#FFCC00",width=1)),
        row=1, col=1
    )

    fig.add_trace(
        go.Scatter(
            x=RM_input,
            y=new_preds,
            mode='markers', name="Predicted Output",
            marker=dict(
                color="#6600cc",size=15),
            line=dict(color="red",width=1)),
            row=1, col=2
    )

    # Update xaxis properties
    fig.update_xaxes(title_text="Lower State Population (%)", row=1, col=1)
    fig.update_xaxes(title_text="Number of Rooms", row=1, col=2)

    # Update yaxis properties
    fig.update_yaxes(title_text="House Prices ($1000)", row=1, col=1)
    # fig.update_yaxes(title_text="yaxis 2 title", range=[40, 80], row=1, col=2)
    # Update title and height
    fig.update_layout(height=600, width=1400, title_text="Variation in Housing Prices")
    fig.write_image(output_file,width=1200,engine="kaleido")
    fig.show()


def floatsome_to_np_array(floats_str):
  def is_float(s):
    try:
      float(s)
      return True
    except:
      return False
  floats = np.array([float(x) for x in floats_str.split(',') if is_float(x)])
  return floats.reshape(len(floats), 1)






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