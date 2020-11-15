--INSERTING TO DATABASE

--INSERT Countries table
INSERT INTO "countries"(country_id, country_name)
                   VALUES(DEFAULT, 'United States');

--INSERT States table
INSERT INTO "states"(state_id, state_name, country_id)
                   VALUES(DEFAULT, 'New Jersey', 1);
                   
--INSERT Cities table
INSERT INTO "cities"(city_id, city_name, state_id)
                   VALUES(DEFAULT, 'Montville', 1);

--INSERT User table
INSERT INTO "users"(user_id, email, password, spotify_id, date_created, time_updated, city_id)
                   VALUES (DEFAULT, 'tempoture@gmail.com', 'weather123', 'spot_pass', '2020-10-16' , '2020-10-16 04:24:34', 1);

--INSERT Tracks table
INSERT INTO "tracks"(track_id, track_name, duration, key, mode, time_signature, acousticness, danceability, energy, instrumentalness,
    liveness, loudness, speechiness, valence, tempo)
                   VALUES (DEFAULT, 'Havana ooo nah nah', '00:03:57', 'C#', .07, .41, .25, .56, .15, .7883, .513, .412, .153, .513, .864);

--INSERT Playlists table
INSERT INTO "playlists"(playlist_id, playlist_name, time_updated, user_id)
                   VALUES (DEFAULT, 'John playlist 1', '2020-10-16 04:24:34', 2);

--INSERT Playlist_tracks table
INSERT INTO "playlist_tracks"(playlist_track_id, playlist_id, track_id)
                   VALUES (DEFAULT, 1, 3);
--this says that this is playlist 1924 out of all the playlists we store in the #database, 
        --the 2532'th track of Spotify, and its the 2nd song in your playlist

--INSERT Listening_history table
INSERT INTO "listening_history"(listening_history_id, time_updated, user_id)
                   VALUES (DEFAULT, '2020-10-16 04:24:34', 2);

--INSERT Recently_listened table
INSERT INTO "recently_listened"(recently_listened_track_id, track_id, date_time_listened, num_of_tracks_ago, listening_history_id, tracks_track_id)
                   VALUES (DEFAULT, 1, '2020-11-14 02:47:34', 4, 2, 1);

--INSERT Daily_Forecast table
INSERT INTO "daily_forecasts"(daily_forecast_id, weather_date, average_temp, pressure, humidity, wind_speed, wind_direction, cloudiness, 
        precipitation_volume, snow_volume, precipitation_probability, time_updated, city_id)
                   VALUES (DEFAULT, '2020-10-16', 68.2, 2.14, 4.24, 10, 2, 50, 2, 0, 16, '2020-11-14 02:47:34', 1);



-----------------------------------------------------------------------------------------------------------------------------------------------
--QUERYING FROM DATABASE

--QUERY User table
SELECT * FROM "users" WHERE email LIKE '%.com' AND password='weather123';

--QUERY Cities table
SELECT * FROM "cities" WHERE state_id=2;

--QUERY States table
SELECT * FROM "states" WHERE state_name LIKE '%New%';

--QUERY Countries table
SELECT * FROM "countries" WHERE country_name='Russia';

--QUERY Daily_Forecasts table
SELECT * FROM "daily_forecasts" WHERE city_id = 3;

