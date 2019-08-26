import sqlite3

db = sqlite3.connect('database.db')
# print("Opened database successfully")
#
# conn.execute('CREATE TABLE sensor_values (created_at TEXT, entry_id TEXT, field TEXT)')
# print("Table created successfully")
# conn.close()

cursor = db.cursor()
cursor.execute("SELECT field FROM sensor_values where created_at= '2019-08-26 20:34:07.390616'")
data = cursor.fetchone()
print(data)
