SELECT
  COUNT(lsn.track_id) AS 'musicas_no_historico'
FROM
  SpotifyClone.playback_history AS lsn
INNER JOIN
  SpotifyClone.user AS usr ON lsn.user_id = usr.user_id
WHERE
  usr.user_name = 'Barbara Liskov';
