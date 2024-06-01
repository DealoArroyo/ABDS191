USE ComicsStore;

SELECT
    nombre Nombre,
    cantidad_disponible 'Cantidad disponible'
FROM Comics
JOIN Inventario ON id_inventario = Comics.id_comic;

SELECT * FROM Comic_Compras;
SELECT * FROM Clientes;
SELECT * FROM Compras;
SELECT * FROM Comics;
SELECT * FROM Inventario;

SELECT 
    Clientes.nombre Nombre,
    id_compra,
    Comics.nombre,
    cantidad
FROM Comic_Compras
JOIN Clientes ON Clientes.id_clientes = Comic_Compras.id_compra
JOIN Comics ON Comics.id_comic = Comic_Compras.id_comic;

SELECT 
    id_compra,
    Comics.nombre,
    Inventario.cantidad_disponible
FROM Comic_Compras
FULL JOIN Comics ON Comics.id_comic = Comic_Compras.id_comic
FULL JOIN Inventario ON Inventario.id_inventario = Comic_Compras.id_CC;

SELECT 
    Comics.nombre,
    Inventario.cantidad_disponible
FROM Comic_Compras
FULL JOIN Comics ON Comics.id_comic = Comic_Compras.id_comic
JOIN Inventario ON Inventario.id_inventario = Comic_Compras.id_CC;

SELECT 
    *
FROM Comics, Inventario, Comic_Compras;

SELECT 
    Clientes.nombre AS Cliente,
    Compras.id_compra AS COMPRA,
    Comics.nombre AS COMIC,
    Cantidad,
    Inventario.cantidad_disponible
FROM Comic_Compras 
JOIN Compras ON Compras.id_compra = Comic_Compras.id_compra
JOIN Comics ON Comics.id_comic = Comic_Compras.id_comic
JOIN Inventario ON Inventario.id_inventario = Comic_Compras.id_CC
JOIN Clientes ON Clientes.id_clientes = Compras.id_cliente;