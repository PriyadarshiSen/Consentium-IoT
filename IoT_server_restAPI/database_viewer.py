from sqlalchemy import create_engine
from flask import jsonify
db_connect = create_engine('sqlite:///database.db')
conn = db_connect.connect()  # connect to database

query = conn.execute("select * from sensor_values")  # This line performs query and returns json result
data = list(query.cursor.fetchall()[0])
print({"feeds": [{"created_at": data[0], "entry_id":data[1], "fields":data[2]}]})
