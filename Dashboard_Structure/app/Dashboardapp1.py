#%%
import datetime as dt
import numpy as np
import pandas as pd
import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func
#%%
from flask import Flask, jsonify
#%%
from flask import Flask, render_template
import psycopg2

# t_host = "provisionaldb2.cpvxmi357s0k.us-east-2.rds.amazonaws.com" # either "localhost", a domain name, or an IP address.
# t_port = "5432" # default postgres port
# t_dbname = "GroupProjectDB"
# t_user = "postgres"
# t_pw = "postgres"
# db_conn = psycopg2.connect(host=t_host, port=t_port, dbname=t_dbname, user=t_user, password=t_pw)
# db_cursor = db_conn.cursor()

# Read data from PostgreSQL database table and load into a DataFrame instance
# DashboardDataDF =  pd.read_sql("select * from \"turnoutanalysisdata\"", db_conn)
# PercentRegisteredData =  [DashboardDataDF["electionyear"],DashboardDataDF["stateabbreviation"], DashboardDataDF["statename"] , DashboardDataDF["pct_reg_of_vep_vrs"]]
# PercentRegisteredHeaders = ["ElectionYear","StateAbbreviation","StateName","PercentOfRegisteredVoters" ]
# PercentRegisteredDF = pd.concat(PercentRegisteredData, axis=1, keys=PercentRegisteredHeaders)



# ***** NEED TO FIGURE OUT CONNECTING TO OUR DATABASE HERE ******

#engine = create_engine("sqlite:///hawaii.sqlite")

#Base = automap_base()

#Base.prepare(engine, reflect=True)

#Measurement = Base.classes.measurement
#Station = Base.classes.station 

#session = Session(engine)

#**********************************************
#%%
app = Flask(__name__)

#----------------------
# Creating the routes

## < NEED TO EDIT THE ROUTES TO REFLECT THE DIFFERENT PAGES WE WILL HAVE > 
@app.route("/")
def index():
        return render_template ("index.html") 
#-------Route will return the webpage with turnout based on voter demographics: visualizations


@app.route("/GeneralTurnout")
def turnout():
    return render_template ("generalTurnout.html")


@app.route("/Nonvoters")
#----- Route will return the webpage with reasons why people don't turn out: visualizations
def visualize():
    return render_template ("nonvoters.html")


@app.route("/Competitiveness")
#---- Route will return the webpage with visualizations depicting turnout based on voter competitiveness
def visualize2():
    return render_template("Competitiveness.html")


@app.route("/PredictTurnout")
#****** FIGURE OUT CONNECTING TO OUR MACHINE LEARNING MODEL HERE**********
def visualize3():
    return ("DOES THIS PAGE WORK?")

# if __name__ == "__main__":
#     app.run()

# %%
