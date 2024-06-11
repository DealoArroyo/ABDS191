USE ComicsStore;
CREATE VIEW VISTA_ComicsInventario AS
SELECT Inventario.id_inventario, Comics.id_comic, Comics.nombre AS COMIC, Inventario.cantidad_disponible, Inventario.disponibilidad
FROM Comics
INNER JOIN Inventario ON Comics.id_comic = Inventario.id_comic;

SELECT * FROM VISTA_ComicsInventario;