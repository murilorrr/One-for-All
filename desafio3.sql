CREATE VIEW historico_reproducao_usuarios
AS 
SELECT
u.Nome AS 'usuario',
m.Nome AS 'nome'
FROM SpotifyClone.Usuario as u
LEFT JOIN SpotifyClone.Historico_musica as hm
ON u.Usuario_ID = hm.Usuario_ID
LEFT JOIN SpotifyClone.Musica as m
ON hm.Musica_ID = m.Musica_ID
ORDER BY usuario, nome;
