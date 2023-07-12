SELECT
  CASE
    WHEN usr.user_age <= 30 THEN 'Até 30 anos'
    WHEN usr.user_age BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
    ELSE 'Maior de 60 anos'
  END AS faixa_etaria,
  COUNT(DISTINCT usr.user_id) AS total_pessoas_usuarias,
  COUNT(fav.track_id) AS total_favoritadas
FROM
  SpotifyClone.user AS usr
LEFT JOIN
  SpotifyClone.favorite_musics AS fav ON fav.user_id = usr.user_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;
