# To add a new cell, type '# %%'
# To add a new markdown cell, type '# %% [markdown]'
# %%
import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split, cross_val_score
from sklearn.metrics import mean_squared_error

from sklearn.datasets import load_boston
boston = load_boston()
bos_df = pd.DataFrame(boston.data, columns = boston.feature_names)
bos_df['PRICE'] = boston.target

bos_df.describe()


# %%
# !wget https://github.com/plotly/orca/releases/download/v1.2.1/orca-1.2.1-x86_64.AppImage -O /usr/local/bin/orca
# !chmod +x /usr/local/bin/orca
# !apt-get install xvfb libgtk2.0-0 libgconf-2-4


# %%
bos_df.head()


# %%
X_train, X_test, y_train, y_test = train_test_split(boston.data, boston.target, test_size=0.25)


# %%
plt.figure(figsize=(10, 10),dpi=150)
correlation_matrix = bos_df.corr().round(2)
sns.heatmap(data=correlation_matrix, annot=True)


# %%
from matplotlib import rcParams

plt.figure(figsize=(20, 5),dpi=200)

features = ['LSTAT', 'RM']
target = bos_df['PRICE']

for i, col in enumerate(features):
    plt.subplot(1, len(features) , i+1)
    x = bos_df[col]
    y = target
    plt.scatter(x, y, marker='o')
    plt.title("Variation in House prices",loc="Left")
    plt.xlabel(col)
    plt.ylabel('House prices in $1000')


# %%
import plotly.express as px
from plotly.subplots import make_subplots
import plotly.graph_objs as go

fig = make_subplots(
rows=1, cols=2
# subplot_titles=("Plot 1", "Plot 2", "Plot 3", "Plot 4")
)

fig.add_trace(
    go.Scatter(x=bos_df["LSTAT"],y=bos_df['PRICE'],mode='markers',
    marker=dict(
            color="#003366"),
        line=dict(color="#003366",width=1)),
    row=1, col=1
)

fig.add_trace(
    go.Scatter(x=bos_df['RM'],y=bos_df['PRICE'],mode='markers',
    marker=dict(
            color="#FF6600"),
        line=dict(color="#FF6600",width=1)),
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
output_file="app/static/baseimage.svg"
fig.write_image(output_file,width=1200,engine="kaleido")
fig.show()


# %%
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.datasets import load_boston
import warnings
from sklearn.model_selection import cross_val_score
from sklearn.linear_model import Ridge, Lasso, LinearRegression
from sklearn.tree import DecisionTreeRegressor
from sklearn.ensemble import GradientBoostingRegressor, BaggingRegressor, RandomForestRegressor, StackingRegressor
from xgboost import XGBRegressor
from lightgbm import LGBMRegressor


# %%
# Apply Linear Regression Model as Base Model
lr = LinearRegression()
pred_lr = lr.fit(X_train, y_train).predict(X_test)

# Checking Model Metrics
from sklearn.metrics import r2_score, mean_squared_error
print("R2 Score: ", r2_score(y_test, pred_lr))
print("RMSE: ", np.sqrt(mean_squared_error(y_test, pred_lr)))


# %%
# Get a List of Models as Base Models
def base_models():
  models = dict()
  models['lr'] = LinearRegression()
  models["Ridge"] = Ridge()
  models["Lasso"] = Lasso()
  models["Tree"] = DecisionTreeRegressor()
  models["Random Forest"] = RandomForestRegressor()
  models["Bagging"] = BaggingRegressor()
  models["GBM"] = GradientBoostingRegressor()
  return models


# %%
# Now we will apply K Fold Cross Validation. We will now create a evaluate function with Repeated Stratified K Fold
# And Capture the Cross Val Score
from sklearn.model_selection import RepeatedKFold
from matplotlib import pyplot

# Function to evaluate the list of models
def eval_models(model):
  cv = RepeatedKFold(n_splits=10, n_repeats=3, random_state=1)
  scores = -cross_val_score(model, boston.data, boston.target, scoring='neg_mean_absolute_error', cv=cv, n_jobs=-1, 
                            error_score='raise')
  return scores


# %%
# get the models to evaluate
models = base_models()
# evaluate the models and store results
results, names = list(), list() 

for name, model in models.items():
  scores = eval_models(model)
  results.append(scores)
  names.append(name)
  print('>%s %.3f (%.3f)' % (name, scores.mean(), scores.std()))


# %%
regressmod = pd.DataFrame(np.transpose(results), columns = ["lr","Ridge","Lasso","Tree","Random Forest","Bagging","GBM"])
regressmod = pd.melt(regressmod.reset_index(), id_vars='index',value_vars=["lr","Ridge","Lasso","Tree","Random Forest","Bagging","GBM"])
regressmod


# %%
fig = px.box(regressmod, x="variable", y="value",color="variable",points='all')
fig.show()


# %%
# get a stacking ensemble of models
def get_stacking():
	# define the base models
  level0 = list()
  level0.append(('Tree', DecisionTreeRegressor()))
  level0.append(('RF', RandomForestRegressor()))
  level0.append(('XGB', XGBRegressor()))
  level0.append(('Bagging', BaggingRegressor()))
	# define meta learner model
  level1 = LGBMRegressor()
	# define the stacking ensemble
  model = StackingRegressor(estimators=level0, final_estimator=level1, cv=5)
  return model


# %%
def base_models():
  models = dict()
  models["Tree"] = DecisionTreeRegressor()
  models["Random Forest"] = RandomForestRegressor()
  models["Bagging"] = BaggingRegressor()
  models["XGB"] = XGBRegressor()
  models["Stacked Model"] = get_stacking()
  return models

# Function to evaluate the list of models
def eval_models(model):
  cv = RepeatedKFold(n_splits=10, n_repeats=3, random_state=1)
  scores = -cross_val_score(model, boston.data, boston.target, scoring='neg_mean_absolute_error', cv=cv, n_jobs=-1, 
                            error_score='raise')
  return scores


# %%
# get the models to evaluate
models = base_models()
# evaluate the models and store results
results, names = list(), list() 

for name, model in models.items():
  scores = eval_models(model)
  results.append(scores)
  names.append(name)
  print('>%s %.3f (%.3f)' % (name, scores.mean(), scores.std()))

regressmod = pd.DataFrame(np.transpose(results), columns = ["Tree","Random Forest","Bagging","XGB","Stacked Reg"])
regressmod = pd.melt(regressmod.reset_index(), id_vars='index',value_vars=["Tree","Random Forest","Bagging","XGB","Stacked Reg"])
fig = px.box(regressmod, x="variable", y="value",color="variable",points='all')
fig.show()


# %%
from joblib import dump, load
dump(models, "stacked-models.joblib")


# %%
X_test[9]


# %%
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.datasets import load_boston
import warnings
from sklearn.model_selection import cross_val_score
from sklearn.linear_model import Ridge, Lasso, LinearRegression
from sklearn.tree import DecisionTreeRegressor
from sklearn.ensemble import GradientBoostingRegressor, BaggingRegressor, RandomForestRegressor, StackingRegressor
from xgboost import XGBRegressor
from lightgbm import LGBMRegressor

level0 = list()
level0.append(('Tree', DecisionTreeRegressor()))
level0.append(('RF', RandomForestRegressor()))
level0.append(('GBM', GradientBoostingRegressor()))
level0.append(('Bagging', BaggingRegressor()))
level0.append(("XGB", XGBRegressor()))

level1 = LGBMRegressor()
model = StackingRegressor(estimators=level0, final_estimator=level1, cv=10)
model.fit(X_train, y_train)


# %%
import pickle

# Save to file in the current working directory
pkl_filename = "app/TrainedModel/StackedPickle.pkl"
with open(pkl_filename, 'wb') as file:
    pickle.dump(model, file)

# Load from file
with open(pkl_filename, 'rb') as file:
    pickle_model = pickle.load(file)


# %%
score = pickle_model.score(X_test, y_test)
print("Test score: {0:.2f} %".format(100 * score))
Ypredict = pickle_model.predict(X_test)


# %%
# boston.data[1]
np.set_printoptions(suppress=True)
print(boston.data[9])
# print(boston.data.reshape(1, -1))
# print(boston.data.reshape(1, -1)[0][0])


# %%
def hello_world():
    boston = load_boston()
    pkl_filename = "app/TrainedModel/StackedPickle.pkl"
    testvalue = boston.data[1].reshape(1, -1)
    test_input = testvalue
    with open(pkl_filename, 'rb') as file:
        pickle_model = pickle.load(file)
    predict = pickle_model.predict(test_input)
    predict_as_str = str(predict)
    return predict_as_str

hello_world()


# %%
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.datasets import load_boston
import warnings
from sklearn.model_selection import cross_val_score
from sklearn.linear_model import Ridge, Lasso, LinearRegression
from sklearn.tree import DecisionTreeRegressor
from sklearn.ensemble import GradientBoostingRegressor, BaggingRegressor, RandomForestRegressor, StackingRegressor
from xgboost import XGBRegressor
from lightgbm import LGBMRegressor

level0 = list()
level0.append(('Tree', DecisionTreeRegressor()))
level0.append(('RF', RandomForestRegressor()))
level0.append(('GBM', GradientBoostingRegressor()))
level0.append(('Bagging', BaggingRegressor()))
level0.append(("XGB", XGBRegressor()))

level1 = LGBMRegressor()
model = StackingRegressor(estimators=level0, final_estimator=level1, cv=10)
model.fit(X_train, y_train)

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
    output_file="app/static/scatterplot.svg"
    fig.write_image(output_file,width=1200,engine="kaleido")
    fig.show()


# %%
from sklearn.datasets import load_boston
data = load_boston()
df = pd.DataFrame(data.data, columns = data.feature_names)
df['PRICE'] = data.target
testvalue = boston.data[1].reshape(1, -1)
plot_graphs(model,new_input_arr=testvalue,output_file="app/static/scatterplot.svg")


# %%
def floatsome_to_np_array(floats_str):
  def is_float(s):
    try:
      float(s)
      return True
    except:
      return False
  floats = np.array([float(x) for x in floats_str.split(',') if is_float(x)])
  return floats.reshape(len(floats), 1)

floatsome_to_np_array("1, 222, 3, 6, 4, ")


# %%
floatsome_to_np_array("1, 222, 3, 6, 4, ").reshape(1, -1)


