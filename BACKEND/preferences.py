from flask_restful import Resource


class Preference(Resource):
    def get(self):
        return {"message": "Hello, World!"}