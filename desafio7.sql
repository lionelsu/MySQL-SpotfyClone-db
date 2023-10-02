SELECT
  art.artist_name AS 'artista',
  abm.album_title AS 'album',
  COUNT(DISTINCT flw.user_id) AS 'pessoas_seguidoras'
FROM
  SpotifyClone.artist AS art
INNER JOIN
  SpotifyClone.album AS abm ON art.artist_id = abm.artist_id
INNER JOIN
  SpotifyClone.followed_artist AS flw ON art.artist_id = flw.artist_id
GROUP BY art.artist_id, abm.album_id
ORDER BY pessoas_seguidoras DESC, artista, album;
