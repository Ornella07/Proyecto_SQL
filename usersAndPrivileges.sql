USE MYSQL;
SHOW TABLES;
SELECT * FROM USER;

##Creacion de usuarios, colocacion de clave, modificacion de usuario y eliminacion.
CREATE USER ornella@localhost; ## Creo el usuario Ornella

CREATE USER cursoSQL@localhost; ## Creo el usuario cursoSQL sin constraseña

ALTER USER cursoSQL@localhost IDENTIFIED BY 'miPassword'; ## altero el usuario asignando una clave

CREATE USER sqlCruso@localhost IDENTIFIED BY 'miClave'; ##Creo el usuario sqlCruso

RENAME USER sqlCruso@localhost TO SqlCurso@localhost; ##modifico nombre del ususario

DROP USER ornella@localhost; ##elimino el usuario ornella

##Dando privilegios
SELECT * FROM mysql.user WHERE user LIKE 'SqlCurso';

SHOW GRANTS FOR SqlCurso@localhost;


		##Otorgo permiso de solo lectura en la tabla Peliculas. 
GRANT SELECT ON peliculas.* TO SqlCurso@localhost;
		
		##Otorgo permiso de lectura, insercion y modificacion de datos.. 
GRANT SELECT, UPDATE, INSERT ON peliculas.* TO cursoSQL@localhost;
