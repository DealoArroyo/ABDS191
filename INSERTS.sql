USE ComicsStore;

-- Se me borraron mis INSERTS de los clientes y cómics, m perdona?:(

SELECT * FROM Clientes;
SELECT * FROM Comics;
SELECT * FROM Comic_Compras;
SELECT * FROM Compras;

INSERT INTO Inventario(id_comic, cantidad_disponible, disponibilidad) VALUES
(20, 10, 1),
(22, 2, 1),
(24, 1, 1),
(26, 0, 0),
(28, 10, 1),
(30, 0, 0),
(32, 10, 1),
(34, 3, 1),
(36, 4, 1),
(38, 5, 1),
(40, 12, 1),
(42, 7, 1),
(44, 7, 1),
(46, 10, 1),
(48, 12, 1);

SELECT * FROM Inventario;

INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (1, '2024-05-27', 360);
INSERT INTO Comic_Compras (cantidad, id_compra, id_comic) VALUES (1, 10, 20), (1, 10, 20);

INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (2, '2024-05-27', 900);
INSERT INTO Comic_Compras (cantidad, id_compra, id_comic) VALUES (2, 11, 24);

INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (3, '2024-05-28', 720);
INSERT INTO Comic_Compras (cantidad, id_compra, id_comic) VALUES (1, 12, 28);

INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (4, '2024-05-29', 900);
INSERT INTO Comic_Compras (cantidad, id_compra, id_comic) VALUES (1, 13, 30);

INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (5, '2024-05-27', 360);
INSERT INTO Comic_Compras (cantidad, id_compra, id_comic) VALUES (1, 14, 48);

INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (6, '2024-05-27', 450);
INSERT INTO Comic_Compras (cantidad, id_compra, id_comic) VALUES (1, 15, 46);

INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (7, '2024-05-27', 720);
INSERT INTO Comic_Compras (cantidad, id_compra, id_comic) VALUES (2, 16, 40);

INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (1, '2024-05-30', 450);
INSERT INTO Comic_Compras (cantidad, id_compra, id_comic) VALUES (1, 17, 46);

INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (7, '2024-05-28', 360);
INSERT INTO Comic_Compras (cantidad, id_compra, id_comic) VALUES (1, 18, 48);

INSERT INTO Compras (id_cliente, fecha_compra, total) VALUES (4, '2024-05-30', 360);
INSERT INTO Comic_Compras (cantidad, id_compra, id_comic) VALUES (1, 19, 48);