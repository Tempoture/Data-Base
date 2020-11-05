#python playlist_tracks table testing
select_query = """INSERT INTO public."playlist_tracks"(playlist_track_id, playlist_id, track_id)
                   VALUES (2, 1924, 2532);"""
#this says that this is playlist 1924 out of all the playlists we store in the #database, 
#the 2532'th track of Spotify, and its the 2nd song in your playlist

    #cursor.execute(select_query)
    select_query = """select * from "playlists" WHERE playlist_name LIKE '%playlist' """
    cursor.execute(select_query)
    rows = cursor.fetchall()

    for row in rows:
      print ("playlist_track_id:\t\t = ", row[0])
      print ("playlist_id:\t\t = ", row[1])
      print ("track_id:\t = ", row[2])
