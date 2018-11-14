Create table artist (
  id serial primary key,
  name varchar(30),
  surname varchar(30)
);

copy artist (name, surname) FROM '/home/polikkox/music_database/artist.csv' (DELIMITER ',');
select * from test;


create table band(
  id serial primary key,
  band_name varchar(30)
);
copy band (band_name) FROM '/home/polikkox/music_database/band.csv' (DELIMITER ',');
select * from band;

create table artist_band(
  id_artist int,
  id_band int
);
copy artist_band FROM '/home/polikkox/music_database/artist_band.csv' (DELIMITER ',');
select * from artist_band
where id_artist = 19999;

CREATE TABLE IF NOT EXISTS  song (
    id_song SERIAL PRIMARY KEY,
    id_band INTEGER NOT NULL,
    id_album INTEGER default  null,
    id_category INTEGER NOT NULL,
    song_name VARCHAR(50) NOT NULL,
    length TIME NOT NULL,
    published VARCHAR(50) DEFAULT ('1900-01-01')
);

create table band_song (id_band integer, id_song integer);
copy band_song from '/home/polikkox/music_database/band_song.csv' (DELIMITER ',');
select * from band_song where id_band = 3333;


copy song(id_band, id_album, id_category, song_name, length, published)  from '/home/polikkox/music_database/song.csv' DELIMITER ',' NULL as 'null' csv;
select * from song;
