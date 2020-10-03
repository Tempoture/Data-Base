-- Table: User
CREATE TABLE "User" (
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


