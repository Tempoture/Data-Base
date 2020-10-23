from flask import Flask, render_template
import psycopg2
import urllib.parse as urlparse
import os

url = urlparse.urlparse(os.environ['DATABASE_URL'])
db = "dbname=%s user=%s password=%s host=%s " % (url.path[1:], url.username, url.password, url.hostname)

connection = psycopg2.connect(db)
cur = connection.cursor()
app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello World!'

#@app.route('/Users')
#def contacts():
#        select_query = 'SELECT * FROM public."Users"'
#        cur.execute(select_query )
#        rows = cur.fetchall()
#        response = ''
#        my_list = []
#        for row in rows:
#            my_list.append(row[1])
#
#        return render_template('template.html',  results=my_list)

if __name__ == '__main__':
    app.run()
