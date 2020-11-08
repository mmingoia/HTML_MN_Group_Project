#%%
import datetime as dt
import numpy as np
import pandas as pd
import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func
from flask import Flask, jsonify
from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
import psycopg2
import joblib


# ***** CONNECTING TO OUR DATABASE ******


t_host = "provisionaldb2.cpvxmi357s0k.us-east-2.rds.amazonaws.com" # either "localhost", a domain name, or an IP address.
t_port = "5432" # default postgres port
t_dbname = "GroupProjectDB"
t_user = "postgres"
t_pw = "postgres"
db_conn = psycopg2.connect(host=t_host, port=t_port, dbname=t_dbname, user=t_user, password=t_pw)
db_cursor = db_conn.cursor()



# #Read data from PostgreSQL database table and load into a DataFrame instance
# DashboardDataDF =  pd.read_sql_query("select * from \"turnoutanalysisdata\"", db_conn)
# PercentRegisteredData =  [DashboardDataDF["electionyear"],DashboardDataDF["stateabbreviation"], DashboardDataDF["statename"] , DashboardDataDF["pct_reg_of_vep_vrs"]]
# PercentRegisteredHeaders = ["ElectionYear","StateAbbreviation","StateName","PercentOfRegisteredVoters" ]
# PercentRegisteredDF = pd.concat(PercentRegisteredData, axis=1, keys=PercentRegisteredHeaders)

#**********************************************
#%%
app = Flask(__name__)

# POSTGRES = {
#     'user' : 'postgres',
#     'pw' : 'postgres',
#     'db' : 'GroupProjectDB',
#     'host' : 'provisionaldb2.cpvxmi357s0k.us-east-2.rds.amazonaws.com',
#     'port' : '5432'
# }
# app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://%(user)s:\
# %(pw)s@%(host)s:%(port)s/%(db)s' % POSTGRES
# db.init_app(app)
#----------------------
# Creating the routes

## < NEED TO EDIT THE ROUTES TO REFLECT THE DIFFERENT PAGES WE WILL HAVE > 
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


@app.route("/PredictTurnout", methods=['POST', 'GET'])
#****** FIGURE OUT CONNECTING TO OUR MACHINE LEARNING MODEL HERE**********
def prediction():
    # json = request.get_json()
    rfr_model = joblib.load('MachineLearningModels/rfr_model.pkl')
    DashboardDataDF =  pd.read_sql_query("select * from \"turnoutanalysisdata\"", db_conn)
    df = pd.DataFrame(DashboardDataDF, index=[0])
 
    from sklearn.preprocessing import StandardScaler
    scaler = StandardScaler()
    scaler.fit(Dataframe)

    df_x_scaled = scaler.transform(Dataframe)

    df_x_scaled = pd.DataFrame(df_x_scaled, columns=df.columns)
    y_predict = rfr_model.predict(df_x_scaled)

    result = {"Predicted Voter Turnout" : y_predict[0]}
    jsonify(result)

    return render_template('result.html')

if __name__ == "__main__":
    app.run()

# %%
 