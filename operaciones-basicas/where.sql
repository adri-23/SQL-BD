/*WHERE nos permite seleccionar elementos especificos */
SELECT nombre, email FROM usuario WHERE id= 4;

SELECT* FROM usuario WHERE email != 'adriana@gmail.com';

/*
OPERADORES DE COMPARACION QUE PODEMOS UTLIZAR EN SQL:
Igual           =
Distinto        !=
Menor           <
Mayor           >
Menor o igual   <=
Mayor o igual   >=
Entre           between A and B
En              in
Es nulo         is null
No nulo         is not null
Como            like
No es como      not like
*/


/*traer todos los usuarios que se aigan registrado en el 2020*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha)= '2020';

/*trae todos los usuarios que se aigan registrado en el 2020 y 2021*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha)= '2020' OR YEAR(fecha) = '2021';

/*TRAER TODOS LOS USUARIOS QUE SE AIGAN REGISTRADO DESDE 2019*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) >= '2019';

/*TRAER LOS USUARIOS QUE NO SE AIGAN REGISTRADO EN 2020*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != '2020' OR ISNULL(fecha);

/*SELECCIONAR REGISTRO POR DOS COLUMNAS 
que coincida el email con el password*/
SELECT nombre, apellidos FROM usuarios WHERE email='adriana@gmail.com' AND password ='1254';


/*elementos que conrtengan un texto*/
/*si ponemos %o = que busque los nombres que contengan una o al final , 
o%= a que busque un nombre que empiece con la letra o, 
%o%= que busque un nombre que contenga la letra o ya sea al principio o al final*/
SELECT * FROM usuarios WHERE nombre LIKE '%o%' ;
