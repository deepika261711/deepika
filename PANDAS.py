import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error,r2_score
data=pd.read_csv("house_data.csv")
x=data[['area','bedrooms','age']]
y=data['price']
x_train,x_test,y_train,y_test=train_test_split(x,y,test_size=0.2,random_state=42)
model=LinearRegression()
model.fit(x_train,y_train)
y_pred=model.predict(x_test)
print("model coefficients:",model.coef_)
print("intercept:",model.intercept)
print("mean squared error:",mean_squared_error(y_test,y_pred))
print("r2 score:",r2_score(y_test,y_pred))
new_house=np.array([[2000,3,2]])#area=2000,bedrooms=3,age=2
predicted_price=model.predict(new_house)
print("predicted house price:",predicted_price[0])