CREATE VIEW perfil_artistas
AS
SELECT
 ar.Nome AS 'artista',
 ab.Nome AS 'album',
 COUNT(*) AS 'seguidores'
-- ab.Artista_ID
-- COUNT(Usuario_ID) AS 'seguidores'
FROM SpotifyClone.Artista AS ar
LEFT JOIN SpotifyClone.Album AS ab
ON ar.Artista_ID = ab.Artista_ID
LEFT JOIN SpotifyClone.Seguindo_artistas as sa
ON sa.Artista_ID = ar.Artista_ID
GROUP BY ab.Album_ID, ar.Artista_ID
ORDER BY seguidores DESC, artista, album;
