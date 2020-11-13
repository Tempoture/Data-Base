--INSERTING TO DATABASE

--INSERT User table
INSERT INTO "users"(user_id, email, password, spotify_id, date_created, time_updated, city_id)
                   VALUES (1, 'tempoture@gmail.com', 'weather123', 'spot_pass', '2020-10-16' , '2020-10-16 04:24:34', 1);

--INSERT States table
INSERT INTO "states"(state_id, state_name, country_id)
                   VALUES(1, 'New Jersey', 1);
                   
--INSERT Cities table
INSERT INTO "cities"(city_id, city_name, state_id)
                   VALUES(1, 'Montville', 1);

--INSERT Countries table
INSERT INTO "countries"(country_id, country_name)
                   VALUES(1, 'United States');
                   
--INSERT Tracks table
INSERT INTO "tracks"(track_id, track_name, duration, key, mode, time_signature, acousticness, danceability, energy, instrumentalness,
    liveness, loudness, speechiness, valence, tempo)
                   VALUES (1, 'Havana ooo nah nah', '00:03:57', 'C#', .07, .41, .25, .56, .15, .7883, .513, .412, .153, .513, .864);

--INSERT Playlist table
INSERT INTO "playlists"(playlist_id, playlist_name, last_updated, user_id)
                   VALUES (1, 'John playlist 1', '2020-10-16 04:24:34', 2);

--INSERT Playlist_tracks table
INSERT INTO "playlist_tracks"(playlist_track_id, playlist_id, track_id)
                   VALUES (1, 1, 3);
--this says that this is playlist 1924 out of all the playlists we store in the #database, 
        --the 2532'th track of Spotify, and its the 2nd song in your playlist
                   
--INSERT Weather table
INSERT INTO "weather"(city, time_updated)
                   VALUES ('Montville', '2020-10-16 04:24:34');

--INSERT Daily_Forecast table
INSERT INTO "daily_forecasts"(daily_forecast_id, weather_date, average_temp, pressure, humidity, wind_speed, wind_direction, cloudiness, 
        precipitation_volume, snow_volume, precipitation_probability, time_updated, city_id)
                   VALUES (1, '2020-10-16', 68.2, 2.14, 4.24, 10, 2, 50, 2, 0, 16, '2020-11-14 02:47:34', 1);


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

