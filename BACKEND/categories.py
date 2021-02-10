from flask_restful import Resource


class Category(Resource):
    def get(self):
        return {"message": "Hello, World!"}