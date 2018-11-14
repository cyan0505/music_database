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
where id_artist = 19999


