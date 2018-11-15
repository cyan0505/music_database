CREATE TABLE IF NOT EXISTS  artist (
    id_artist SERIAL PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    surname VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS  band (
    id_band SERIAL PRIMARY KEY,
    band_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS  artist_band (
    id_band INTEGER NOT NULL,
    id_artist INTEGER NOT NULL,
    PRIMARY KEY (id_band, id_artist),

    FOREIGN KEY (id_band) REFERENCES band (id_band),
    FOREIGN KEY (id_artist) REFERENCES artist (id_artist)
);

CREATE TABLE IF NOT EXISTS  album (
    id_album SERIAL PRIMARY KEY,
    id_band INTEGER NOT NULL,
    album_name VARCHAR(50) NOT NULL,

    FOREIGN KEY (id_band) REFERENCES band (id_band)
);

CREATE TABLE IF NOT EXISTS  category (
    id_category SERIAL PRIMARY KEY,
    genre VARCHAR(25) DEFAULT ('MUSIC')
);

CREATE TABLE IF NOT EXISTS song (
    id_song SERIAL PRIMARY KEY,
    id_band INTEGER NOT NULL,
    id_album INTEGER,
    id_category INTEGER NOT NULL,
    song_name VARCHAR(50) NOT NULL,
    length TIME NOT NULL,
    published DATE DEFAULT ('1900-01-01'),

    FOREIGN KEY (id_band) REFERENCES band (id_band) ON DELETE CASCADE,
    FOREIGN KEY (id_album) REFERENCES album (id_album) ON DELETE SET NULL,
    FOREIGN KEY (id_category) REFERENCES category (id_category) ON DELETE SET DEFAULT
);



CREATE TABLE IF NOT EXISTS  band_song (
    id_band INTEGER NOT NULL,
    id_song INTEGER NOT NULL,
    PRIMARY KEY (id_band, id_song),

    FOREIGN KEY (id_band) REFERENCES band (id_band),
    FOREIGN KEY (id_song) REFERENCES song (id_song)
);

CREATE TABLE IF NOT EXISTS  subscription (
    id_sub SERIAL PRIMARY KEY,
    name VARCHAR(25),
    price NUMERIC(12,2) CHECK (price > 0)
);

CREATE TABLE IF NOT EXISTS  users (
    id_user SERIAL PRIMARY KEY,
    id_sub INTEGER NOT NULL,
    nick VARCHAR(50) NOT NULL,
    email VARCHAR(50),

    FOREIGN KEY (id_sub) REFERENCES subscription (id_sub)
);


CREATE TABLE IF NOT EXISTS  playlist (
    id_playlist SERIAL PRIMARY KEY,
    title VARCHAR(25)
);

CREATE TABLE IF NOT EXISTS   users_playlist (
    id_user INTEGER NOT NULL,
    id_playlist INTEGER NOT NULL,
    PRIMARY KEY (id_user, id_playlist),
    FOREIGN KEY (id_user) REFERENCES users (id_user),
    FOREIGN KEY (id_playlist) REFERENCES playlist (id_playlist)
);

CREATE TABLE IF NOT EXISTS   playlist_song (
    id_playlist INTEGER NOT NULL,
    id_song INTEGER NOT NULL,
    PRIMARY KEY (id_playlist, id_song),
    FOREIGN KEY (id_playlist) REFERENCES playlist (id_playlist),
    FOREIGN KEY (id_song) REFERENCES song (id_song)
);

