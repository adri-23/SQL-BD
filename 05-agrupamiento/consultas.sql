/*consulta para obetener el numero de entradas por categoria*/
SELECT COUNT(titulo) AS 'numero de entradas', categoria_id FROM entradas GROUP BY categoria_id;

/*consulta agrupada con condiciones */
/*trae los titulos y cuentalos y las categorias_id de la tabla entradas agrupada categorias_id
xuando el numero de entradas sea mayor o igual a 4 */
/*cuando lleva GROUP BY NO LLEVA EL WHERE Y LLEVA having */
SELECT COUNT(titulo) AS 'numero de entradas', categoria_id FROM entradas GROUP BY categoria_id
HAVING COUNT(titulo) >= 4;

/*sacarpromedio de los id  de la tabla entradas */
/*AVG nos permite sacar el promedio de elementos numericos*/
SELECT AVG(id) AS 'promedio id' FROM entradas;

/*obtener el numero maximo de los elementos que son numericos*/
/*MAX  NOS PERMITE OBTENER EL UMERO MAYOR*/
SELECT MAX(id) AS 'maximo id' FROM  entradas;

/*MIN NOS PERMITE OBTENER EL NUMERO MENOR*/
SELECT MIN(id) AS 'minimo id' FROM  entradas;

/*SUM NOS PERMITE SUMAR ELEMNTOS NUMERICOS*/
SELECT SUM(id) AS 'suma de ids' FROM entradas;

/*obtener eel promedio del id de las entradas cuyo categoria id = 1*/
SELECT AVG(id) AS 'promedio id' FROM entradas WHERE categoria_id =1;