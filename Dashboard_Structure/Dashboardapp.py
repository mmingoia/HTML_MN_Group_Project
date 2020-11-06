import datetime as dt
import numpy as np
import pandas as pd
import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func
from flask import Flask, jsonify
from flask import Flask, render_template


### < NEED TO FIGURE OUT CONNECTING TO OUR DATABASE HERE >

#engine = create_engine("sqlite:///hawaii.sqlite")

#Base = automap_base()

#Base.prepare(engine, reflect=True)

#Measurement = Base.classes.measurement
#Station = Base.classes.station 

#session = Session(engine)

app = Flask(__name__)

#----------------------
# Creating the routes

## < NEED TO EDIT THE ROUTES TO REFLECT THE DIFFERENT PAGES W WILL HAVE > 
@app.route("/")
def homepage():
        return render_template ("welcomepage.html") 


if __name__ == "__main__":
    app.run()