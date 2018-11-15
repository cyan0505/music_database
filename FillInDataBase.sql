copy artist (name, surname) FROM '/home/cyan/codecool/advance_java/2nd_tw/music_database/artist.csv' (DELIMITER ',');
select * from artist;

copy band (band_name) FROM '/home/cyan/codecool/advance_java/2nd_tw/music_database/band.csv' (DELIMITER ',');
select * from band;

copy artist_band FROM '/home/cyan/codecool/advance_java/2nd_tw/music_database/artist_band.csv' (DELIMITER ',');
select * from artist_band;

copy album(id_band, album_name) from '/home/cyan/codecool/advance_java/2nd_tw/music_database/albums.csv' (DELIMITER ',');
select * from album;

insert into category(genre) values ('hip-hop'), ('rock'), ('pop'), ('discopolo'), ('techno'), ('jazz'), ('classical'), ('blues'), ('metal');
select * from category;

copy song(id_band, id_album, id_category, song_name, length, published)  from '/home/cyan/codecool/advance_java/2nd_tw/music_database/song.csv' DELIMITER ',' NULL as 'null' csv;
select * from song;

copy band_song from '/home/cyan/codecool/advance_java/2nd_tw/music_database/band_song.csv' (DELIMITER ',');
select * from band_song where id_band = 3333;

insert into subscription(name, price) values ('free', null), ('basic', 10.99), ('premium', 19.99);
select * from subscription;

copy users(id_sub, nick, email) from '/home/cyan/codecool/advance_java/2nd_tw/music_database/users.csv' (DELIMITER ',');

copy playlist(title) from '/home/cyan/codecool/advance_java/2nd_tw/music_database/playlists.csv' (DELIMITER ',');

copy users_playlist from '/home/cyan/codecool/advance_java/2nd_tw/music_database/users_playlist.csv' (DELIMITER ',');

copy playlist_song from '/home/cyan/codecool/advance_java/2nd_tw/music_database/playlist_song.csv' (DELIMITER ',');







