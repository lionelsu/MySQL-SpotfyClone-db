SELECT
  art.artist_name AS 'artista',
  abm.album_title AS 'album'
FROM
  SpotifyClone.artist AS art
INNER JOIN
  SpotifyClone.album as abm ON art.artist_id = abm.artist_id
WHERE
  art.artist_name = 'Elis Regina'
ORDER BY abm.album_title ASC;
