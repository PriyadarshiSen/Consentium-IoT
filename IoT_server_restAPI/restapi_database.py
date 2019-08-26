from flask import Flask
from flask_restful import Resource, Api
from sqlalchemy import create_engine
import datetime


db_connect = create_engine('sqlite:///database.db')
app = Flask(__name__)
api = Api(app)


class add_data(Resource):
    def get(self, entry_val):
        conn = db_connect.connect()
        conn.execute("INSERT INTO sensor_values (created_at,entry_id,field) VALUES(?, ?, ?)", (str(datetime.datetime.now()), '1', entry_val))


class show_data(Resource):
    def get(self):
        conn = db_connect.connect()  # connect to database
        query = conn.execute("select * from sensor_values")  # This line performs query and returns json result
        data = list(query.cursor.fetchall()[0])
        return {"feeds": [{"created_at": data[0], "entry_id": data[1], "fields": data[2]}]}


api.add_resource(add_data, '/update/field=<entry_val>')
api.add_resource(show_data, '/fields')

if __name__ == '__main__':
    app.run()
