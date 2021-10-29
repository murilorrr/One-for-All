CREATE VIEW top_2_hits_do_momento AS 
SELECT
m.Nome AS 'cancao',
COUNT(*) AS 'reproducoes'
FROM SpotifyClone.Musica AS m
LEFT JOIN SpotifyClone.Historico_musica as hm
ON m.Musica_ID = hm.Musica_ID
LEFT JOIN SpotifyClone.Usuario as u
ON u.Usuario_ID = hm.Usuario_ID
GROUP BY m.Nome
ORDER BY reproducoes DESC, cancao
LIMIT 2;
