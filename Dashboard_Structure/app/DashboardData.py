
#%%
import numpy as np
import pandas as pd
import matplotlib
import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func
from flask import Flask
from flask import Flask, render_template
import psycopg2
from bokeh.models import ColumnDataSource
from bokeh.plotting import figure, output_file, show

#%%
t_host = "provisionaldb2.cpvxmi357s0k.us-east-2.rds.amazonaws.com" # either "localhost", a domain name, or an IP address.
t_port = "5432" # default postgres port
t_dbname = "GroupProjectDB"
t_user = "postgres"
t_pw = "postgres"
db_conn = psycopg2.connect(host=t_host, port=t_port, dbname=t_dbname, user=t_user, password=t_pw)
db_cursor = db_conn.cursor()

#%%
# Read data from PostgreSQL database table and load into a DataFrame instance
DashboardDataDF =  pd.read_sql("select * from \"turnoutanalysisdata\"", db_conn)
PercentRegisteredData =  [DashboardDataDF["electionyear"],DashboardDataDF["stateabbreviation"], DashboardDataDF["statename"] , DashboardDataDF["pct_reg_of_vep_vrs"]]
PercentRegisteredHeaders = ["ElectionYear","StateAbbreviation","StateName","PercentOfRegisteredVoters" ]
PercentRegisteredDF = pd.concat(PercentRegisteredData, axis=1, keys=PercentRegisteredHeaders)
<<<<<<< HEAD:Dashboard_Structure/DashboardData.py
# %%
=======

>>>>>>> 9e71b1bf7efe832c1b41e21656f469705f369b16:Dashboard_Structure/app/DashboardData.py
