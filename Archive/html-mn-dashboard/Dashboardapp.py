import datetime as dt
import numpy as np
import pandas as pd
import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func
from flask import Flask, jsonify
from flask import Flask, render_template

 
# ***** NEED TO FIGURE OUT CONNECTING TO OUR DATABASE HERE ******

#engine = create_engine("sqlite:///hawaii.sqlite")

#Base = automap_base()

#Base.prepare(engine, reflect=True)

#Measurement = Base.classes.measurement
#Station = Base.classes.station 

#session = Session(engine)

app = Flask(__name__)

#----------------------
# Creating the routes

## < NEED TO EDIT THE ROUTES TO REFLECT THE DIFFERENT PAGES WE WILL HAVE > 
@app.route("/")
def homepage():
        return render_template ("welcomepage.html") 



@app.route("/Turnout_Demographics")
#-------Route will return the webpage with turnout based on voter demographics


@app.route("/NonVoter_Reasons")

#----- Route will return the webpage with reasons why people don't turn out

@app.route("")



@app.route("/Predictive_Model")
#----- FIGURE OUT CONNECTING TO OUR MACHINE LEARNING MODEL HERE







if __name__ == "__main__":
    app.run()