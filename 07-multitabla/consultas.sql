/*JOINS  nos permie fusioar  informacion de multiples tablas */

/*mostrar las entradas con el nombre del autor y de la categoria*/
SELECT entradas.id, entradas.titulo, usuarios.nombre, categorias.nombre
FROM entradas
INNER JOIN usuarios ON entradas.usuarios_id = usuarios.id
INNER JOIN categorias ON entradas.categoria_id = categorias.id;

SELECT e.id, e.titulo, u.nombre, c.nombre
FROM entradas e
INNER JOIN usuarios u ON e.usuarios_id = u.id
INNER JOIN categorias c ON e.categoria_id = c.id;


/*obtener el numero de entradas de categorias*/
SELECT C.NOMBRE, COUNT(e.id) FROM categorias c
INNER JOIN entradas e ON e.categorias_id = c.id GROUP BY e.categoria_id;