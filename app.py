from __future__ import print_function
from flask import Flask, render_template
from os.path import exists
from os import makedirs
from os.path import join, dirname
from dotenv import load_dotenv
from datetime import datetime
from psycopg2 import connect
import psycopg2
import json
import os


dotenv_path = join(dirname(__file__), '.env')
load_dotenv(dotenv_path)

connection = psycopg2.connect(  user = DB_USER,
                                password = DB_PASS,
                                host = DB_HOST,
                                port = DB_PORT,
                                database = DB_NAME )

cur = connection.cursor()
app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello World!'

@app.route('/Users')
def contacts():
        select_query = 'SELECT * FROM public."Users"'
        cur.execute(select_query )
        rows = cur.fetchall()
        response = ''
        my_list = []
        for row in rows:
            my_list.append(row[1])

        return render_template('template.html',  results=my_list)

if __name__ == '__main__':
    app.run()
