/* CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id) */
use blog;

/* Creando una tabla llamada usuario la cual incluye llave primaria y un campo unico */
create table Usuario(
    id INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    fecha DATE  NOT NULL,
    CONSTRAINT PK_id_usuario PRIMARY KEY (id), /* LLave primaria */
    CONSTRAINT UQ_email UNIQUE(email) /* Regla de que debe ser unico */
);

/* Creando Tabla Categoria que contiene una llave primaria */
create table Categoria(
    id INT AUTO_INCREMENT NOT NULL,
    nombre VARCHAR(200) NOT NULL,
    CONSTRAINT PK_id_categoria PRIMARY KEY (id) /* Llave primaria */
);

/* Creando Tabla Categoria que contiene una llave primaria y dos llaves foraneas, 
es importante ponerla al final porque usa referencia de las tablas de arriba, de ponerlo
en otro orden esto puede generar un error porque quiere obtener una referencia que no existe
aún*/
create table Entrada(
    id INT AUTO_INCREMENT NOT NULL,
    usuario_id INT NOT NULL,
    categoria_id INT NOT NULL,
    titulo VARCHAR(200) NOT NULL,
    descripcion_text VARCHAR(300),
    fecha DATE  NOT NULL,
    CONSTRAINT PK_id_entrada PRIMARY KEY (id), /* Llave primaria */
    CONSTRAINT FK_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES Usuario(id), /* LLave foranea */
    CONSTRAINT FK_entrada_categoria FOREIGN KEY(categoria_id) REFERENCES Categoria(id) /* LLave foranea */
);