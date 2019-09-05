import urllib3
import json

url = 'http://127.0.0.1:5000/fields'

http = urllib3.PoolManager()
request = http.request('GET', url)
raw_data = json.loads(request.data.decode('UTF-8'))
data = raw_data['feeds'][0]
print(data)
print(data['created_at'])
request.release_conn()


