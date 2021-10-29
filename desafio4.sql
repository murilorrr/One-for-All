CREATE VIEW top_3_artistas AS 
SELECT
a.Nome AS 'artista',
COUNT(*) AS 'seguidores'
FROM SpotifyClone.Artista AS a
LEFT JOIN SpotifyClone.Seguindo_artistas as sa
ON a.Artista_ID = sa.Artista_ID
LEFT JOIN SpotifyClone.Usuario as u
ON u.Usuario_ID = sa.Usuario_ID
GROUP BY a.Nome
ORDER BY seguidores DESC, artista;
