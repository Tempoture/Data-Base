-- Table: User
/* CREATE TABLE "User" (
    user_id bigint  NOT NULL,
    email varchar(100)  NOT NULL,
    password varchar(50)  NOT NULL,
    spotify_id varchar(100)  NOT NULL,
    date_created date  NOT NULL,
    date_updated timestamp  NOT NULL,
    zip_code varchar(5)  NOT NULL,
    CONSTRAINT User_pk PRIMARY KEY (user_id)
);

-- Table: Listening_History
CREATE TABLE Listening_History (
    listening_history_id bigint  NOT NULL,
    last_updated timestamp  NOT NULL,
    user_id bigint  NOT NULL,
    CONSTRAINT Listening_History_pk PRIMARY KEY (listening_history_id)
);

-- Table: Playlist_Tracks
CREATE TABLE Playlist_Tracks (
    playlist_track_id bigint  NOT NULL,
    playlist_id bigint  NOT NULL,
    track_id bigint  NOT NULL,
    CONSTRAINT Playlist_Tracks_pk PRIMARY KEY (playlist_track_id)
);

-- Table: Playlists
CREATE TABLE Playlists (
    playlist_id bigint  NOT NULL,
    playlist_name varchar(100)  NOT NULL,
    last_updated timestamp  NOT NULL,
    user_id bigint  NOT NULL,
    CONSTRAINT Playlists_pk PRIMARY KEY (playlist_id)
);

-- Table: Recently_Listened
CREATE TABLE Recently_Listened (
    recently_listened_track_id bigint  NOT NULL,
    track_id bigint  NOT NULL,
    date_time_listened timestamp  NOT NULL,
    num_of_tracks_ago int  NOT NULL,
    listening_history_id bigint  NOT NULL,
    Tracks_track_id int  NOT NULL,
    CONSTRAINT Recently_Listened_pk PRIMARY KEY (recently_listened_track_id)
);

-- Table: Tracks
CREATE TABLE Tracks (
    track_id bigint  NOT NULL,
    track_name varchar(100)  NOT NULL,
    duration time  NOT NULL,
    key varchar(3)  NOT NULL,
    mode decimal  NOT NULL,
    time_signature decimal  NOT NULL,
    acousticness decimal  NOT NULL,
    danceability decimal  NOT NULL,
    energy decimal  NOT NULL,
    instrumentalness decimal  NOT NULL,
    liveness decimal  NOT NULL,
    loudness decimal  NOT NULL,
    speechiness decimal  NOT NULL,
    valence decimal  NOT NULL,
    tempo decimal  NOT NULL,
    CONSTRAINT Tracks_pk PRIMARY KEY (track_id)
);

-- Table: Weather
CREATE TABLE Weather (
    zip_code varchar(5)  NOT NULL,
    last_updated timestamp  NOT NULL,
    CONSTRAINT Weather_pk PRIMARY KEY (zip_code)
);

-- Table: Daily_Forecast
CREATE TABLE Daily_Forecast (
    daily_forecast_id bigint  NOT NULL,
    date date  NOT NULL,
    average_temp decimal  NOT NULL,
    pressure decimal  NOT NULL,
    humidity decimal  NOT NULL,
    weather_id int  NOT NULL,
    wind_speed decimal  NOT NULL,
    wind_direction decimal  NOT NULL,
    cloudiness decimal  NOT NULL,
    precipitation_volume decimal  NOT NULL,
    snow_volume decimal  NOT NULL,
    precipitation_probability decimal  NOT NULL,
    last_updated timestamp  NOT NULL,
    zip_code varchar(5)  NOT NULL,
    CONSTRAINT Daily_Forecast_pk PRIMARY KEY (daily_forecast_id)
);
-- foreign keys
-- Reference: Daily_Forecast_Weather (table: Daily_Forecast)
ALTER TABLE Daily_Forecast ADD CONSTRAINT Daily_Forecast_Weather
    FOREIGN KEY (zip_code)
    REFERENCES Weather (zip_code)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;

-- Reference: Listening_History_to_User (table: Listening_History)
ALTER TABLE Listening_History ADD CONSTRAINT Listening_History_to_User
    FOREIGN KEY (user_id)
    REFERENCES "User" (user_id)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;

-- Reference: Playlist_Tracks_Tracks (table: Playlist_Tracks)
ALTER TABLE Playlist_Tracks ADD CONSTRAINT Playlist_Tracks_Tracks
    FOREIGN KEY (track_id)
    REFERENCES Tracks (track_id)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;

-- Reference: Playlist_to_Tracks_Playlists (table: Playlist_Tracks)
ALTER TABLE Playlist_Tracks ADD CONSTRAINT Playlist_to_Tracks_Playlists
    FOREIGN KEY (playlist_id)
    REFERENCES Playlists (playlist_id)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;

-- Reference: Playlists_to_User (table: Playlists)
ALTER TABLE Playlists ADD CONSTRAINT Playlists_to_User
    FOREIGN KEY (user_id)
    REFERENCES "User" (user_id)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;

-- Reference: Recently_Listened_Tracks (table: Recently_Listened)
ALTER TABLE Recently_Listened ADD CONSTRAINT Recently_Listened_Tracks
    FOREIGN KEY (track_id)
    REFERENCES Tracks (track_id)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;

-- Reference: Recently_Listened_to_Listening_History (table: Recently_Listened)
ALTER TABLE Recently_Listened ADD CONSTRAINT Recently_Listened_to_Listening_History
    FOREIGN KEY (listening_history_id)
    REFERENCES Listening_History (listening_history_id)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;

-- Reference: User_to_Weather (table: User)
ALTER TABLE "User" ADD CONSTRAINT User_to_Weather
    FOREIGN KEY (zip_code)
    REFERENCES Weather (zip_code)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
; */

-- End of file.
