SELECT
  MIN(pln.plan_price) AS 'faturamento_minimo',
  MAX(pln.plan_price) AS 'faturamento_maximo',
  ROUND(AVG(pln.plan_price), 2) AS 'faturamento_medio',
  ROUND(SUM(pln.plan_price), 2) AS 'faturamento_total'
FROM
  SpotifyClone.user AS usr
INNER JOIN
  SpotifyClone.plan AS pln ON usr.plan_id = pln.plan_id;
