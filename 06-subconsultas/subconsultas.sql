/*subconsultas
son consultas que se ejecutan dentro de otras consultas
*/

/*consulta para saber que usuarios tienenaplicaciones*/
SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas);

/*en esta consulta obtenemos los id de los usuarios que tienen publicaciones*/
SELECT usuario_id FROM  entradas;

/*esta consulta representa os valores que recibe la consulta principal*/
SELECT * FROM usuarios WHERE id INT (1, 1, 1,  2, 2, 2, 3, 3, 3);

/*consulta equivalente con where*/
SELECT * FROM usuarios WHERE id = 1 AND id = 2 AND id= 3;

/*OBTENER LOS USUARIOS QUE TENGAN ALGUNA ENTRADA  QUE EL TITULO CONTENGA LA PALABRA GTA*/
SELECT nombre, apellidos FROM usuarios WHERE id IN(
    SELECT usuario_id FROM entradas WHERE titulo LIKE '%GTA%'
);

/*OBTENER TODAS LAS ENTRADAS DE LA CATEGORIA ACCION UTILIZANDO SU NOMBRE */
SELECT categoria_id, titulo FROM entradas WHERE categoria_id IN(
    SELECT id FROM categorias WHERE nombre = 'Deportes'
);

/*obtener la categoria sin entradas
NOT IN */
SELECT * FROM categorias WHERE id NOT IN( 
    SELECT categpria_id FROM etradas
);

/*mostrar usuarios que crearon una entrada en un martes*/
SELECT * FROM usuarios WHERE id IN(
    SELECT usuario_id FROm entradas WHERE DAYOFWEEK(fecha) = 3
);