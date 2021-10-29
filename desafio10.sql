DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(ID_Usuario INT)
RETURNS INT READS SQL DATA
BEGIN
    DECLARE Resultado INT;
    SELECT 
    COUNT(*) AS 'quantidade_musicas_no_historico'
    FROM SpotifyClone.Historico_musica
    WHERE Usuario_ID = ID_Usuario

    INTO Resultado ;
    RETURN Resultado;
END $$

DELIMITER ;
