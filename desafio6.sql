CREATE VIEW faturamento_atual
AS
SELECT
MIN(Valor) AS 'faturamento_minimo',
MAX(VALOR) AS 'faturamento_maximo',
CAST(AVG(VALOR) AS DECIMAL(3,2)) AS 'faturamento_medio',
SUM(VALOR) AS 'faturamento_total'
FROM SpotifyClone.Plano as p
LEFT JOIN SpotifyClone.Usuario as u
ON u.Plano_ID = p.Plano_ID;
