USE SpotifyClone;

DELIMITER $$

CREATE TRIGGER trigger_usuario_delete BEFORE DELETE
ON SpotifyClone.Usuario
FOR EACH ROW
BEGIN
	DELETE FROM SpotifyClone.Seguindo_artistas WHERE Usuario_ID = OLD.Usuario_ID;
    DELETE FROM SpotifyClone.Historico_musica WHERE Usuario_ID = OLD.Usuario_ID;
END $$

DELIMITER ;
