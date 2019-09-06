from flask import Flask, render_template
from flask_restful import Resource, Api, reqparse
from sqlalchemy import create_engine
import datetime
import secrets

db_connect = create_engine('sqlite:///database.db')
app = Flask(__name__)
api = Api(app)

api_key_write = secrets.token_urlsafe(16).upper()  # generate write API key
api_key_read = secrets.token_urlsafe(16).upper()  # generate write API key


@app.route("/")
def index():
    return render_template('index.html')


@app.route("/things")
def things():
    keys = [api_key_write, api_key_read]
    conn = db_connect.connect()  # connect to database
    query = conn.execute("select * from sensor_values")  # This line performs query and returns json result
    data = query.cursor.fetchall()
    raw_data = list(data[len(data) - 1])
    return render_template('elements.html', write=keys[0], read=keys[1], time=raw_data[0], data=raw_data[2])


class show_data(Resource):
    @staticmethod
    def get():
        parser = reqparse.RequestParser()
        parser.add_argument('read_api_key', type=str)
        data = parser.parse_args()
        if str(data['read_api_key']).upper() == api_key_read:
            conn = db_connect.connect()  # connect to database
            query = conn.execute("select * from sensor_values")  # This line performs query and returns json result
            data = query.cursor.fetchall()
            raw_data = list(data[len(data) - 1])
            return {"feeds_last": [{"created_at": raw_data[0], "entry_id": raw_data[1], "fields": raw_data[2]}]}
        else:
            return {"feeds_last": 'wrong api key'}


class add_data(Resource):
    @staticmethod
    def get():
        parser = reqparse.RequestParser()
        parser.add_argument('write_api_key', type=str)
        parser.add_argument('field', type=str)
        data = parser.parse_args()
        if str(data['write_api_key']).upper() == api_key_write:
            conn = db_connect.connect()
            conn.execute("INSERT INTO sensor_values (created_at,field) VALUES(?, ?)",
                         (str(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')), data['field']))
            return {"data": 'inserted'}
        else:
            return {"data": 'insertion error'}


api.add_resource(show_data, '/feeds.json')
api.add_resource(add_data, '/update', endpoint='update')

if __name__ == '__main__':
    app.run(host='192.168.1.6', port=5000)
