SELECT 
  abm.album_title AS 'album',
  COUNT(abm.album_title) AS 'favoritadas'
FROM
  SpotifyClone.favorite_musics AS fav
INNER JOIN
  SpotifyClone.track AS trk ON trk.track_id = fav.track_id
INNER JOIN
  SpotifyClone.album AS abm ON abm.album_id = trk.album_id
GROUP BY abm.album_title
ORDER BY favoritadas DESC, album
LIMIT 3;
