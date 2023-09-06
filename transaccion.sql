##Eliminar un Elemento

-- Iniciar una transacción
BEGIN;
-- Eliminar registros de la tabla "peliculas" donde el id de pelicula sea =  15;
DELETE FROM pelicula WHERE id_pelicula = 15;

-- Confirmar la transacción si estás seguro de los cambios
COMMIT;
##ROLLBACK;




## Ingreso de datos con transition 


-- Iniciar una transacción
BEGIN;
-- Insertar un nuevo actor
INSERT INTO actores (id_actor, nombre, apellido, edad) 
VALUES (48, 'Ricardo', 'Darin',66);

INSERT INTO actores (id_actor, nombre, apellido, edad) 
VALUES(49, 'Guillermo', 'Francella',68);

INSERT INTO actores (id_actor, nombre, apellido, edad) 
VALUES (50, 'Soledad', 'Villamil',54);

INSERT INTO actores (id_actor, nombre, apellido, edad) 
VALUES (51, 'Javier', 'Godino',45);

##SAVEPOINT savepoint1;

INSERT INTO actores (id_actor, nombre, apellido, edad) 
VALUES (52, 'Pablo', 'Rago',50);

INSERT INTO actores (id_actor, nombre, apellido, edad) 
VALUES (53, 'Carla', 'Quevedo',35);

INSERT INTO actores (id_actor, nombre, apellido, edad) 
VALUES (54, 'Mario', 'Alarcón',78);

INSERT INTO actores (id_actor, nombre, apellido, edad) 
VALUES (55, 'José Luis', 'Gioia',68);

SAVEPOINT savepoint2;

-- Confirmar la transacción
COMMIT;
