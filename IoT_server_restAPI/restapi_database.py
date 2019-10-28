# ------------------------------------------
# --- Author: Debjyoti Chowdhury
# --- Date: 12th September 2019
# --- Version: 1.0
# --- Python Ver: 3.6
# ------------------------------------------

# ====================================================
# import statements
import paho.mqtt.client as mqtt
from flask import Flask, render_template
from flask_restful import Resource, Api, reqparse
from sqlalchemy import create_engine
import datetime
import secrets

# ====================================================


db_connect = create_engine('sqlite:////Users/deb/PycharmProjects/consentium_iot/database.db')
# db_connect = create_engine('sqlite:////home/pi/Consentium-IoT/IoT_server_restAPI/database.db') # for pi
app = Flask(__name__)
api = Api(app)

api_key_write = secrets.token_urlsafe(16).upper()  # generate write API key
api_key_read = secrets.token_urlsafe(16).upper()  # generate write API key

topic = "/ic/nm/serialdata/uno/"
broker_url = "test.mosquitto.org"
broker_port = 1883


def on_connect(client, userdata, rc):
    print("Connected With Result Code " + rc)


def on_message(client, userdata, message):
    data = message.payload.decode()
    topic = message.topic
    conn = db_connect.connect()
    conn.execute("INSERT INTO mqtt_sensor_values (created_at, topic_name, field) VALUES(?, ?, ?)",
                 (str(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')), topic, int(data)))


@app.route("/")
def index():
    return render_template('index.html')


@app.route("/things")
def things():
    keys = [api_key_write, api_key_read]
    conn = db_connect.connect()  # connect to database
    query_1 = conn.execute("select * from sensor_values")  # This line performs query and returns json result
    data_1 = query_1.cursor.fetchall()
    raw_data_1 = list(data_1[len(data_1) - 1])
    query_2 = conn.execute("select * from mqtt_sensor_values")  # This line performs query and returns json result
    data_2 = query_2.cursor.fetchall()
    raw_data_2 = list(data_2[len(data_2) - 1])
    return render_template('elements.html', write=keys[0], read=keys[1], time_1=raw_data_1[0], data_1=raw_data_1[2],
                           time_2=raw_data_2[0], topic=raw_data_2[2], data_2=raw_data_2[3])


class ShowData(Resource):
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


class AddData(Resource):
    @staticmethod
    def get():
        parser = reqparse.RequestParser()
        parser.add_argument('api_key', type=str)
        parser.add_argument('field', type=str)
        data = parser.parse_args()
        if str(data['api_key']).upper() == api_key_write:
            conn = db_connect.connect()
            conn.execute("INSERT INTO sensor_values (created_at,field) VALUES(?, ?)",
                         (str(datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')), data['field']))
            return {"data": 'inserted'}
        else:
            return {"data": 'insertion error'}


api.add_resource(ShowData, '/feeds.json')
api.add_resource(AddData, '/update', endpoint='update')

if __name__ == '__main__':
    client = mqtt.Client()
    client.on_connect = on_connect
    client.on_message = on_message
    client.connect(broker_url, broker_port)
    client.subscribe(topic)
    client.loop_start()
    app.run(host='192.168.0.103', port=5000)
