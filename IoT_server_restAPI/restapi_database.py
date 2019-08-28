from flask import Flask
from flask_restful import Resource, Api, reqparse
from sqlalchemy import create_engine
import datetime
import secrets

db_connect = create_engine('sqlite:///database.db')
app = Flask(__name__)
api = Api(app)

api_key = secrets.token_urlsafe(16).upper()  # generate API key


# class add_data(Resource):
#     def get(self, entry_val):
#         conn = db_connect.connect()
#         conn.execute("INSERT INTO sensor_values (created_at,field) VALUES(?, ?)", (str(datetime.datetime.now()), entry_val))
#         return '256'

@app.route("/")
def hello():
    return "Your API key is: %s" % api_key


class show_data(Resource):
    def get(self):
        conn = db_connect.connect()  # connect to database
        query = conn.execute("select * from sensor_values")  # This line performs query and returns json result
        data = list(query.cursor.fetchall()[0])
        return {"feeds": [{"created_at": data[0], "entry_id": data[1], "fields": data[2]}]}


class add_data(Resource):
    def get(self):
        parser = reqparse.RequestParser()
        parser.add_argument('api_key', type=str)
        parser.add_argument('field', type=str)
        data = parser.parse_args()
        if str(data['api_key']).upper() == api_key:
            conn = db_connect.connect()
            conn.execute("INSERT INTO sensor_values (created_at,field) VALUES(?, ?)",
                         (str(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')), data['field']))
            return {'data': 'inserted'}
        else:
            return {'data': 'insertion error'}


# api.add_resource(add_data, '/update/field=<entry_val>') # old api method
api.add_resource(show_data, '/feeds')
api.add_resource(add_data, '/update', endpoint='update')

if __name__ == '__main__':
    print("Your API key is:", api_key)
    app.run(host='192.168.1.6', port=5000)
