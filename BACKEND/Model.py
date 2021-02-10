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
    
class User(db.Model) :  
    __tablename__ = "user" 
   #  __table_args__ = 

   id = db.Column(db.String[], primary_key = True, unique = True )
   username = db.Column(db.String[], primary_key = True)
   first_name = db.Column(db.String[])
   last_name = db.Column(db.String[])
   password = db.Column(db.String[])
   emailadress = db.Column(db.String[])

   def __init__(self, id, username, first_name, last_name, password, email_address):
       self.id = id 
       self.username = username 
       self.first_name = first_name
       self.last_name = last_name
       self.password = password
       self.email_address = email_address

