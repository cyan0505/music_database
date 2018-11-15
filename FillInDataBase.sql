copy artist (name, surname) FROM '/home/ania/Advance/TW2/music_database/artist.csv' (DELIMITER ',');

copy band (band_name) FROM '/home/ania/Advance/TW2/music_database/band.csv' (DELIMITER ',');

copy artist_band FROM '/home/ania/Advance/TW2/music_database/artist_band.csv' (DELIMITER ',');

copy album(id_band, album_name) from '/home/ania/Advance/TW2/music_database/albums.csv' (DELIMITER ',');

insert into category(genre) values ('hip-hop'), ('rock'), ('pop'), ('discopolo'), ('techno'), ('jazz'), ('classical'), ('blues'), ('metal');

copy song(id_band, id_album, id_category, song_name, length, published)  from '/home/ania/Advance/TW2/music_database/song.csv' DELIMITER ',' NULL as 'null' csv;

copy band_song from '/home/ania/Advance/TW2/music_database/band_song.csv' (DELIMITER ',');

insert into subscription(name, price) values ('free', null), ('basic', 10.99), ('premium', 19.99);

copy users(id_sub, nick, email) from '/home/ania/Advance/TW2/music_database/users.csv' (DELIMITER ',');

copy playlist(title) from '/home/ania/Advance/TW2/music_database/playlists.csv' (DELIMITER ',');

copy users_playlist from '/home/ania/Advance/TW2/music_database/users_playlist.csv' (DELIMITER ',');

copy playlist_song from '/home/ania/Advance/TW2/music_database/playlist_song.csv' (DELIMITER ',');







