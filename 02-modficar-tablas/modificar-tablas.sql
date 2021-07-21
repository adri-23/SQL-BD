/*renombrar la tabla*/

/*modificar tabla con alter table*/
ALTER TABLE usuario RENAME TO usuarios_renom;


/*renombrar una columna*/
ALTER TABLE usuarios_renom CHANGE apellidos apellido VARCHAR(50) NULL;


/*MODIFICAR LA COLUMNA SIN CAMBIAR L NOMBRE*/
ALTER TABLE usuarios_renom MODIFY apellido VARCHAR(50) NOT NULL;

/*AÑADIR COLUMNA*/
ALTER TABLE usuarios_renom ADD website VARCHAR(50) NULL;

/*añadir una restriccion a  una columna*/
ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email UNIQUE (email);
/*ALTER TABLE + NOMBRE DE LA TABLA+ AGREGAR RESTRICCION CON  CONSAINT+ EL CAMPO QUE QUEREMOS RESTRINGIR*/


/*BORRAR UNA COLUMNA*/
ALTER TABLE usuarios_renom DROP website;