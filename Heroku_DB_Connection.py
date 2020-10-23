from __future__ import print_function
from datetime import datetime
from psycopg2 import connect
import psycopg2
import json

try:
    connection = psycopg2.connect(user = DB_USER,
                                  password = DB_PASS,
                                  host = DB_HOST,
                                  port = DB_PORT,
                                  database = DB_NAME )

    cursor = connection.cursor()
    connection.autocommit = True

#Print all the details for the connectoion

    # Print PostgreSQL Connection properties
    dsm_param = connection.get_dsn_parameters()

    print ("\nget_dsn_parameters():", json.dumps(dsm_param, indent=4))
    print ("\nYou are connected to --> dbname:", dsm_param["dbname"])
    print ("\nconnection dsn():", connection.dsn)

    # Print PostgreSQL version
    cursor.execute("SELECT version();")
    record = cursor.fetchone()
    print("\nPostgreSQL Version: " ,record , "\n")

    select_query = """INSERT INTO public."User"(user_id, email, password, spotify_id, date_created, date_updated, zip_code)
                   VALUES (1, 'Jim@gmail.com', 'Jimspassword', 'spot123', '2001-01-01' , '2012-04-09 08:14:26', '07035' );"""

    cursor.execute(select_query)
    
except (Exception, psycopg2.Error) as error :
    print ("Error while connecting to PostgreSQL", error)
    
finally:
    #closing database connection.
        if(connection):
            cursor.close()
            connection.close()
            print("PostgreSQL connection is closed")
#testing git desktop