#python playlist table testing
select_query = """INSERT INTO public."playlists"(playlist_id, playlist_name, updated_at, user_id)
                   VALUES (2, 'Chill Vibes', '2019-08-03 10:07:26', '2' );"""

    #cursor.execute(select_query)
    select_query = """select * from "playlists" WHERE playlist_name LIKE '%playlist' """
    cursor.execute(select_query)
    rows = cursor.fetchall()

    for row in rows:
      print ("playlist_id:\t\t = ", row[0])
      print ("playlist_name:\t\t = ", row[1])
      print ("update_at:\t = ", row[2])
      print ("user_id:\t = ", row[3])