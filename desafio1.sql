DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE Plano(
    Plano_ID INT PRIMARY KEY AUTO_INCREMENT,
    Tipo VARCHAR(45) NOT NULL UNIQUE,
    Valor DECIMAL(9,2) NOT NULL
) engine = InnoDB;

CREATE TABLE Artista(
    Artista_ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL
) engine = InnoDB;

CREATE TABLE Album(
    Album_ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    Artista_ID INT NOT NULL,
    FOREIGN KEY (Artista_ID) REFERENCES Artista (Artista_ID)
) engine = InnoDB;

CREATE TABLE Musica(
    Musica_ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    Album_ID INT NOT NULL,
    FOREIGN KEY (Album_ID) REFERENCES Album (Album_ID)
) engine = InnoDB;

CREATE TABLE Usuario(
    Usuario_ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    Idade INT NOT NULL,
    Plano_ID INT NOT NULL,
    FOREIGN KEY (Plano_ID) REFERENCES Plano (Plano_ID)
) engine = InnoDB;

CREATE TABLE Historico_musica(
    Usuario_ID INT NOT NULL,
    Musica_ID INT NOT NULL,
    CONSTRAINT PRIMARY KEY(Usuario_ID, Musica_ID),
    FOREIGN KEY (Usuario_ID) REFERENCES Usuario (Usuario_ID),
    FOREIGN KEY (Musica_ID) REFERENCES Musica (Musica_ID)
) engine = InnoDB;

CREATE TABLE Seguindo_artistas(
    Usuario_ID INT NOT NULL,
    Artista_ID INT NOT NULL,
    CONSTRAINT PRIMARY KEY(Usuario_ID, Artista_ID),
    FOREIGN KEY (Usuario_ID) REFERENCES Usuario (Usuario_ID),
    FOREIGN KEY (Artista_ID) REFERENCES Artista (Artista_ID)
) engine = InnoDB;

INSERT INTO Plano (Tipo, Valor)
VALUES
  ('gratuito', 0),
  ('familiar', 7.99),
  ('universitário', 5.99);

INSERT INTO Artista (Nome)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon');
  
INSERT INTO Album (Nome, Artista_ID)
VALUES
  ('Envious', 1),
  ('Exuberant', 1),
  ('Hallowed Steam', 2),
  ('Incandescent', 3),
  ('Temporary Culture', 4);
  
INSERT INTO Musica (Nome, Album_ID)
VALUES
  ('Soul For Us', 1),
  ('Reflections Of Magic', 1),
  ('Dance With Her Own', 1),
  ('Troubles Of My Inner Fire', 2),
  ('Time Fireworks', 2),
  ('Magic Circus', 3),
  ('Honey, So Do I', 3),
  ("Sweetie, Let's Go Wild", 3),
  ('She Knows', 3),
  ('Fantasy For Me', 4),
  ('Celebration Of More', 4),
  ('Rock His Everything', 4),
  ('Home Forever', 4),
  ('Diamond Power', 4),
  ("Honey, Let's Be Silly", 4),
  ('Thang Of Thunder', 5),
  ('Words Of Her Life', 5),
  ('Without My Streets', 5);
  
INSERT INTO Usuario (Nome, Idade, Plano_ID)
VALUES
  ('Thati', 23, 1),
  ('Cintia', 35, 2),
  ('Bill', 20, 3),
  ('Roger', 45, 1); 

INSERT INTO Historico_musica (Usuario_ID, Musica_ID)
VALUES
  (1, 1),
  (1, 6),
  (1, 14),
  (1, 16),
  (2, 13),
  (2, 17),
  (2, 2),
  (2, 15),
  (3, 4),
  (3, 16),
  (3, 6),
  (4, 3),
  (4, 18),
  (4, 11);
  
INSERT INTO Seguindo_artistas (Usuario_ID, Artista_ID)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4);
