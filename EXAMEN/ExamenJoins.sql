USE ComicsStore;

CREATE TABLE Autores (
id_autor bigint identity(300,1) PRIMARY KEY,
nombre VARCHAR(100),
pais_origen VARCHAR(100)
);

ALTER TABLE Comics
ADD id_autor bigint,
FOREIGN KEY (id_autor) REFERENCES Autores(id_autor);

INSERT INTO Autores (nombre, pais_origen) VALUES
('Larrinaga Morales Oswaldo', 'MÉXICO'),
('Mayorga Becerra Luis Eduardo', 'AFGANISTÁN'),
('Claudia Sheinbaum ', 'MÉXICO'),
('Andrés Manuel López Obrador', 'BRASIL');


SELECT * FROM Autores;

SELECT * FROM Comics;

UPDATE Comics
SET id_autor = 300
WHERE id_comic = 20;

UPDATE Comics
SET id_autor = 301
WHERE id_comic = 24;

UPDATE Comics
SET id_autor = 302
WHERE id_comic = 26;

UPDATE Comics SET id_autor = 303 WHERE id_comic = 28;
UPDATE Comics SET id_autor = 303 WHERE id_comic = 30;
UPDATE Comics SET id_autor = 300 WHERE id_comic = 32;
UPDATE Comics SET id_autor = 301 WHERE id_comic = 36;
UPDATE Comics SET id_autor = 302 WHERE id_comic = 38;
UPDATE Comics SET id_autor = 302 WHERE id_comic = 38;
UPDATE Comics SET id_autor = 302 WHERE id_comic = 38;
UPDATE Comics SET id_autor = 300 WHERE id_comic = 44;
UPDATE Comics SET id_autor = 302 WHERE id_comic = 46;
UPDATE Comics SET id_autor = 303 WHERE id_comic = 48;

SELECT * FROM Comic_Compras;
SELECT * FROM Inventario;

SELECT 
    Autores.nombre as Autor,
    Comics.nombre Comic,
    Inventario.cantidad_disponible AS 'Cantidad disponible'
FROM Comics
LEFT JOIN Autores ON Autores.id_autor = Comics.id_autor
JOIN Inventario ON Inventario.id_comic = Comics.id_comic;

SELECT 
    pais_origen AS 'País',
    Autores.nombre AS Autor,
    Comics.nombre AS Comic
FROM Autores
JOIN Comics ON Comics.id_autor = Autores.id_autor;