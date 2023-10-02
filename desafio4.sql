SELECT
  usr.user_name AS 'pessoa_usuaria',
  CASE 
    WHEN MAX(YEAR(lsn.playback_date)) >= '2021-01-01' THEN 'Ativa' 
      ELSE 'Inativa' 
    END AS status_pessoa_usuaria
FROM
    SpotifyClone.user AS usr
INNER JOIN
    SpotifyClone.playback_history AS lsn ON lsn.user_id = usr.user_id
GROUP BY lsn.user_id
ORDER BY usr.user_name ASC;
