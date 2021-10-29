CREATE VIEW cancoes_premium
AS
SELECT 
m.Nome AS 'nome',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.Musica AS m
LEFT JOIN SpotifyClone.Historico_musica as hm
ON m.Musica_ID = hm.Musica_ID
LEFT JOIN SpotifyClone.Usuario as u
ON hm.Usuario_ID = u.Usuario_ID
WHERE u.Plano_ID NOT IN (1)
GROUP BY nome
ORDER BY nome;
