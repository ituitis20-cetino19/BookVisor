from flask import Flask
from marshmallow import Schema, fields, pre_load, validate
from flask_marshmallow import Marshmallow
from flask_sqlalchemy import SQLAlchemy


ma = Marshmallow()
db = SQLAlchemy()

class Books(db.Model): 
    __tablename = "books" 
    id =  db.Column(db.Integer(), primary_key = True , unique = True)
    title = db.Column(db.String())
    author = db.Column(db.String()) 
    publisher = db.Column(db.String())
    subjects = db.Column(db.String())
    

class  Users(db.Model): 
    __tablename = "users" 
    id = db.Column(db.Integer())
    userame = db.Column(db.String())
    email = db.Column(db.String())
    
