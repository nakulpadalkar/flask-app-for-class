#%%
import plotly.express as px
df = px.data.tips()
print(df)
fig = px.box(df, x="time", y="total_bill")
fig.show()
#%%
import plotly.graph_objects as go

models = ["lr","Ridge","Lasso"] #,"Tree","Random Forest","Bagging","GBM"]

fig = go.Figure()

fig.add_trace(go.Box(
    y=regressmod.iloc[:,1:].values,
    x=models,
    name='kale',
    marker_color='#3D9970',
    # jitter=0.05,
    # pointpos=-0.8,
    boxpoints='all', # represent all points
))
fig.add_trace(go.Box(
    y=regressmod.iloc[:,2:].values,
    x=models,
    name='radishes',
    marker_color='#FF4136',
    # jitter=0.05,
    # pointpos=-0.8,
    boxpoints='all', # represent all points
))
fig.add_trace(go.Box(
    y=regressmod.iloc[:,3:].values,
    x=models,
    name='carrots',
    marker_color='#FF851B',
    # jitter=0.05,
    # pointpos=-0.8,
    boxpoints='all', # represent all points
))

fig.update_layout(
    yaxis_title='normalized moisture',
    boxmode='group' # group together boxes of the different traces for each value of x
)
fig.show()

#%%
from joblib import dump, load

model_in = load("stacked-models.joblib")
model_in.predict(X_test[1])