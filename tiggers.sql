CREATE TABLE NEW_ACTOR(
id_actor INT PRIMARY KEY,
nombre VARCHAR(50),
apellido VARCHAR(50)
);

select * FROM new_actor;

CREATE TRIGGER `tr_add_new_actor`
AFTER INSERT ON `actores`
FOR EACH row
INSERT INTO `NEW_ACTOR`(id_actor, nombre, apellido) 
VALUES (NEW.id_actor, NEW.nombre, NEW.apellido);

INSERT INTO actores(id_actor, nombre, apellido,edad )
VALUES(41, 'Sarah Jessica','Parker', 58),
	(42, 'Kim','Cattrall', 67),
    (43, 'Cynthia','Nixon', 57),
    (44, 'Kristin','Davis', 58),
    (45, 'Chris','Noth', 68),
    (46, 'Willie','Garson', 57),
    (47, 'David','Eigenberg', 59);

select * FROM actores;


CREATE TABLE NEW_SERIE(
id_serie INT PRIMARY KEY,
nombre VARCHAR(50),
descripcion text,
genero VARCHAR(25),
episodios INT,
id_actor int
);

CREATE TRIGGER `tr_add_new_serie`
AFTER INSERT ON `serie`
FOR EACH row
INSERT INTO `NEW_SERIE`(id_serie, nombre, descripcion, genero, episodios, id_actor) 
VALUES (NEW.id_serie, NEW.nombre, NEW.descripcion, NEW.genero, NEW.episodios,NEW.id_actor);

INSERT INTO serie (id_serie, nombre, descripcion, genero, idioma, episodios, id_actor, id_productor, id_director)  
VALUES (30, 'Sex And The City', 'Una columnista de sexo, Carrie Bradshaw, y sus tres amigas -- Samantha, Charlotte y Miranda --
 exploran el mundo de las citas de Manhattan, haciendo una crónica de los hábitos los neoyorquinos solteros.
 No es sorprendente que las mujeres tienen una serie de pretendientes durante el trayecto de la serie..', 'Comedia', 'Ingles', 94, 41, 9,9);


select * from new_serie