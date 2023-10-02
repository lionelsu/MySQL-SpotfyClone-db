SELECT 
  art.artist_name AS 'artista',
  CASE
    WHEN COUNT(abm.album_title) >= 5 THEN 'A'
    WHEN COUNT(abm.album_title) IN (3, 4) THEN 'B'
    WHEN COUNT(abm.album_title) IN (1, 2) THEN 'C'
    ELSE '-'
  END AS 'ranking'
FROM
  SpotifyClone.favorite_musics AS fav
INNER JOIN
  SpotifyClone.track AS trk ON trk.track_id = fav.track_id
INNER JOIN
  SpotifyClone.album AS abm ON abm.album_id = trk.album_id
RIGHT JOIN
  SpotifyClone.artist AS art ON art.artist_id = abm.artist_id
GROUP BY art.artist_name
ORDER BY COUNT(ranking) DESC, artista
