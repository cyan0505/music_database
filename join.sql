CREATE VIEW album_by_nick AS
  SELECT nick, album_name FROM users
  LEFT JOIN users_playlist ON
  users.id_user = users_playlist.id_user
  JOIN playlist ON
  playlist.id_playlist = users_playlist.id_playlist
  JOIN playlist_song ON
  playlist.id_playlist = playlist_song.id_playlist
  JOIN song ON
  playlist_song.id_song = song.id_song
  JOIN band_song ON
  song.id_song = band_song.id_song
  JOIN band ON
  band_song.id_song = band.id_band
  JOIN album ON
  album.id_band = band.id_band;

SELECT * FROM album_by_nick;