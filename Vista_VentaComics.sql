USE ComicsStore;


CREATE VIEW VISTA_VentaComics AS
SELECT 
    Clientes.nombre AS CLIENTE,
    CONVERT(varchar, Compras.fecha_compra, 103) AS "FECHA DE COMPRA", 
    Comics.nombre AS COMIC, 
    Autores.nombre AS AUTOR
FROM 
    Comic_Compras
JOIN 
    Comics ON Comics.id_comic = Comic_Compras.id_comic
JOIN 
    Compras ON Compras.id_compra = Comic_Compras.id_compra
JOIN 
    Clientes ON Clientes.id_clientes = Compras.id_cliente
JOIN 
    Autores ON Autores.id_autor = Comics.id_autor;

SELECT * FROM VISTA_VentaComics;