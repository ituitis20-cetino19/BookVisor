import os 



basedir = os.path.abspath(os.path.dirname(__file__))
SQLALCHEMY_ECHO = False
SQLALCHEMY_TRACK_MODIFICATIONS = True


 
SQLALCHEMY_DATABASE_URI  = 'mysql+pymysql://ozan:Ozan_172190522782@localhost/bookvisor'