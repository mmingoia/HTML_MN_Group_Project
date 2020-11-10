#%%
#Import Dependencies
import numpy as np
import pandas as pd
from flask import Flask, render_template, request
import joblib

#**********************************************
#%%

app = Flask(__name__)
 

# Create the routes

## <ROUTES REFLECTING DIFFERENT WEBPAGES> 
@app.route("/")
def index():
        return render_template ("index.html") 
#-------Route will return the webpage with turnout based on voter demographics: visualizations


@app.route("/GeneralTurnout")
def turnout():
    return render_template ("turnout.html")


@app.route("/Nonvoters")
#----- Route will return the webpage with reasons why people don't turn out: visualizations
def visualize():
    return render_template ("nonvoters.html")


@app.route("/Competitiveness")
#---- Route will return the webpage with visualizations depicting turnout based on voter competitiveness
def visualize2():
    return render_template("Competitiveness.html")



# Function to utilize saved RandomForestModel 
def ValuePredictor(user_input): 
    y_predict = np.array(user_input).reshape(1,5)
    loaded_model = joblib.load("rf_model.pkl")
    result = loaded_model.predict(y_predict) 
    return result[0]
    
# Route to collect input data from user form to call model function and render prediction
@app.route('/PredictTurnout', methods = ['GET','POST']) 
def result():  
    if request.method == 'POST': 
        user_input = request.form.to_dict() 
        user_input = list(user_input.values()) 
        user_input = list(map(int, user_input)) 
        result = ValuePredictor(user_input)         
        if result > 0: 
            prediction = round(result * 100, 2)            
        return render_template("model.html", prediction = prediction) 
    return render_template('model.html')


if __name__ == "__main__":
    app.run()
