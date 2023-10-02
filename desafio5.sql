SELECT
  trk.track_title AS 'cancao',
    COUNT(lsn.track_id) AS 'reproducoes'
FROM
  SpotifyClone.track AS trk
INNER JOIN
  SpotifyClone.playback_history AS lsn ON lsn.track_id = trk.track_id
GROUP BY trk.track_id
ORDER BY reproducoes DESC, cancao ASC 
LIMIT 2;
