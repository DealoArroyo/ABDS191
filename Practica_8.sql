USE ComicsStore;

CREATE VIEW Vista_ComprasComic AS
SELECT 
    Comic_Compras.id_CC, 
    Comic_Compras.cantidad, 
    Comics.nombre, 
    Compras.id_compra, 
    Compras.fecha_compra, 
    Compras.total
FROM 
    Comic_Compras
JOIN 
    Comics ON Comics.id_comic = Comic_Compras.id_comic
JOIN
    Compras ON Compras.id_compra = Comic_Compras.id_compra;

SELECT * FROM Vista_ComprasComic;



CREATE VIEW Vista_ComicsComprados AS
SELECT 
    c.id_clientes AS id_cliente, 
    c.nombre AS nombre_cliente, 
    COALESCE(SUM(cc.cantidad), 0) AS cantidad_comics_comprados
FROM 
    Clientes c
LEFT JOIN 
    Compras cp ON c.id_clientes = cp.id_cliente
LEFT JOIN 
    Comic_Compras cc ON cp.id_compra = cc.id_compra
GROUP BY 
    c.id_clientes, 
    c.nombre;

SELECT * FROM Vista_ComicsComprados;


CREATE VIEW VW_AutoresComics AS
SELECT
    Autores.id_autor,
    Autores.nombre AS 'AUTOR',
    Autores.pais_origen AS 'PAÍS',
    Comics.id_comic AS 'ID_COMIC',
    Comics.nombre AS 'COMIC',
    Comics.anio AS 'AÑO',
    Comics.precio AS 'PRECIO'
FROM
    Comics
JOIN
    Autores ON Autores.id_autor = Comics.id_autor;

SELECT * FROM VW_AutoresComics;

CREATE VIEW Vista_ComprasClientes_Autores AS
SELECT 
    Compras.id_compra,
    Clientes.nombre AS 'CLIENTE',
    Comics.nombre AS 'COMIC',
    Autores.nombre AS 'AUTOR',
    Comics.anio AS 'AÑO',
    Comics.precio AS 'PRECIO',
    Comic_Compras.cantidad AS 'CANTIDAD',
    (Comics.precio * Comic_Compras.cantidad) AS 'SUBTOTAL'
FROM
    Comic_Compras
JOIN 
    Compras ON Compras.id_compra = Comic_Compras.id_compra
JOIN 
    Comics ON Comics.id_comic = Comic_Compras.id_comic
JOIN 
    Clientes ON Clientes.id_clientes = Compras.id_cliente
JOIN
    Autores ON Autores.id_autor = Comics.id_autor
GROUP BY 
    Compras.id_compra,
    Clientes.nombre,
    Comics.nombre,
    Autores.nombre,
    Comics.anio,
    Comics.precio,
    Comic_Compras.cantidad;

SELECT * FROM Vista_ComprasClientes_Autores;