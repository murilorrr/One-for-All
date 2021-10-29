DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artista VARCHAR(45))

BEGIN
    SELECT
    ar.Nome AS 'artista',
    ab.Nome AS 'album'
    FROM SpotifyClone.Artista AS ar
    LEFT JOIN SpotifyClone.Album AS ab
    ON ab.Artista_ID = ar.Artista_ID
    WHERE ar.Nome LIKE artista;
    
END $$

DELIMITER ;
