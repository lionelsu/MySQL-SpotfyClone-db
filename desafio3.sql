SELECT
  usr.user_name AS 'pessoa_usuaria',
  COUNT(lsn.track_id) AS 'musicas_ouvidas',
  ROUND(SUM(trk.track_length/60), 2) AS 'total_minutos'
FROM
  SpotifyClone.user AS usr
INNER JOIN
  SpotifyClone.playback_history AS lsn ON lsn.user_id = usr.user_id
INNER JOIN
  SpotifyClone.track AS trk ON lsn.track_id = trk.track_id
GROUP BY usr.user_id
ORDER BY usr.user_name;
