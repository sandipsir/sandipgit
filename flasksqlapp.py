from flask import Flask, request
from flask import jsonify
import pymysql


app = Flask(__name__)

connection = pymysql.connect(host='localhost',
                             user='root',
                             password='password',
                             db='test',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)

@app.route('/fetch')
def facilityy():
    with connection.cursor() as cursor:
            sql = "SELECT * FROM `students`"
            print(sql)
            cursor.execute(sql)
            result = cursor.fetchall()
            with open ('abc.txt', 'w') as f:
            	f.write(str(result[0]))
            resp=jsonify(result[0])
            return resp


if __name__ == '__main__':
    app.run('0.0.0.0', 5000, debug=True)
