from flask_restful import Resource


class User(Resource): 
    def get(self) : 
        return {"message" : "I am the User!"}
    
