CREATE VIEW estatisticas_musicais
AS
SELECT
COUNT(DISTINCT m.Musica_ID) AS 'cancoes',
COUNT(DISTINCT ar.Artista_ID) AS 'artistas',
COUNT(DISTINCT ab.Album_ID) AS 'albuns'
FROM SpotifyClone.Musica as m
LEFT JOIN SpotifyClone.Album as ab
ON m.Album_ID = ab.Album_ID
LEFT JOIN SpotifyClone.Artista as ar
ON ab.Artista_ID = ar.Artista_ID;
