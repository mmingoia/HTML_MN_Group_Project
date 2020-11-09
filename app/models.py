from flask import Flask 
from flask_sqlalchemy import SQLAlchemy 

db = SQLAlchemy()
  
class PostgresDataframe(object):
        __abstract__ = True

        def __init__(self, *args):
                super().__init__(*args)
