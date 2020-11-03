    select_query = """INSERT INTO public."User"(user_id, email, password, spotify_id, date_created, date_updated, city)
                   VALUES (1, 'tempoture@gmail.com', 'weather123', 'spot_pass', '2020-10-16' , '2020-10-16 04:24:34', '07035' );"""

    cursor.execute(select_query)
    select_query = """select * from "User" WHERE user_id > 4"""
    cursor.execute(select_query)
    rows = cursor.fetchall()

    for row in rows:
      print ("ID:\t\t = ", row[0])
      print ("Email:\t\t = ", row[1])
      print ("password:\t = ", row[2])
      print ("spotify_id:\t = ", row[3])
      print ("date_created:\t = ", row[4])
      print ("date_updated:\t = ", row[5])
      print ("zip_code:\t = ", row[6], "\n")
