from flask import Flask
from flask_restful import Resource,Api
from flask import Blueprint
 # use for some functionality
from login import login 


app = Flask(__name__)

# api_bp = Blueprint('api', __name__)
api = Api(app)

# Route
api.add_resource(login, '/Login') # creates a route 


if __name__ == '__main__':
    app.run(debug=True)