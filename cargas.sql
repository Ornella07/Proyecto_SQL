INSERT INTO actores (id_actor,nombre, apellido, edad)
VALUES 
(1,'Caitriona','Balfe', 43),(2,'Sam','Heughan', 43),(3,'Graham','McTavish', 62),(4,'Tobias','Menzies', 49),(5,'Sophie','Skelton', 29),
(6,'Richard','Rankin', 40),(7,'Claire','Danes', 44),(8,'Damian','Lewis', 52),(9,'Mandy','Patinkin', 70),(10,'Rupert','Friend', 41),
(11,'Morena','Baccarin', 44),(12,'Jim','Parsons', 50),(13,'Kaley','Cuoco', 37),(14,'Johnny','Galecki', 48),(15,'Simon', 'Helberg', 42),
(16,'Mayim', 'Bialik', 47),(17,'Kunal', 'Nayyar', 42),(18,'Melissa', 'Rauch', 43),(19,'Jennifer','Aniston', 54),(20,'Courteney','Cox', 59),
(21,'Lisa', 'Kudrow', 60),(22, 'Matt', 'LeBlanc', 56),(23,'Matthew', 'Perry', 53),(24, 'David', 'Schwimmer',56),(25,'Kit', 'Harington', 36),
(26,'Sophie', 'Turner', 27),(27,'Lena', 'Headey', 49),(28, 'Natalie', 'Dormer', 41),(29,'Peter', 'Dinklage', 54),(30, 'Jason', 'Momoa',44),
(31, 'Nikolaj', 'Coster-Waldau', 53);

SELECT * FROM actores;

#Director 
INSERT INTO director (id_director,nombre, apellido, edad)
VALUES (1,'Chuck', 'Lorre', 70),
(2,'Ronald D.','Moore', 59),
(3,'Gideon', 'Raff', 70),
(4,'Marta', 'Kauffman'),
(5,'D. B.','Weiss'),
(6,'Dennis', 'Dugan');



#Productor
INSERT INTO productor (id_productor,nombre, apellido)
VALUES (1,'	Steven', 'Molaro'),
(2,'David', 'Brown'),
(3,'Howard', 'Gordon'),
(4,'Kevin S.', 'Bright'),
(5,'David','Benioff'),
(6,'Jack', 'Giarraputo');

select * from director;
select * from productor;

#Generos
INSERT INTO genero (id_genero, genero)
VALUES (1, 'Novela Homónima'),
(2, 'Comedia'),
(3, 'Suspense dramático'),
(4, 'Ciencia ficción'),
(5, 'Dramas políticos');
select * from genero;






INSERT INTO pelicula (id_pelicula, nombre, año, descripcion, genero, idioma, id_actor, id_productor, id_director)  
VALUES 
      (1, 'Una esposa de mentira','2011-04-21', 'El cirujano Danny decide contratar a su ayudante Katherine, 
una madre soltera con hijos, para que finjan ser su familia. 
Su intención es demostrarle a Palmer que su amor por ella es tan grande que está a punto de divorciarse de su mujer.','Comedia','Ingles',19 ,6 ,6),
      (2, 'Una esposa de mentira','1999-09-23', 'Un irresponsable neoyorquino trata de darle estabilidad a su vida al 
adoptar a un niño rebelde de cinco años.','Comedia','Ingles',19 ,6 ,6),
      (3, 'Son Como Niños','2010-07-22', 'Un grupo de amigos y excompañeros descubren que envejecer no siempre significa madurar cuando se reúnen para honrar
 la memoria de su entrenador de baloncesto.','Comedia','Ingles',32 ,6, 6 ),
      (4, 'Son Como Niños 2','2013-10-19', 'Tres años después de la reunión que volvió a unirlo a sus amigos de la infancia, Lenny Feder regresa junto a su familia a su pueblo natal para poder estar más cerca de sus amigos..','Comedia','Ingles',32 ,6, 6 ),
      (5, 'Misterio a Bordo','2019-06-14', 'Un policía de Nueva York y su esposa se van de vacaciones a Europa para revitalizar
 el amor en su matrimonio. Un encuentro casual los lleva a ser acusados del asesinato de un billonario anciano..','Comedia','Ingles',32 ,7, 7 ),
      (6, 'Marley y yo','2008-12-5', 'es una película estadounidense dirigida por David Frankel y protagonizada por Owen Wilson y Jennifer Aniston.
 Perteneciente al género de comedia romántica y está basada en la novela autobiográfica del periodista John Grogan, Marley & Me.','Comedia Romántica',
 'Ingles', 19,8,8 ),
      (23, 'Misterio a Bordo','2019-06-14', 'Un policía de Nueva York y su esposa se van de vacaciones a Europa para revitalizar
 el amor en su matrimonio. Un encuentro casual los lleva a ser acusados del asesinato de un billonario anciano..','Comedia','Ingles',19 ,7, 7 ),
     (10, 'Son Como Niños','2010-07-22', 'Un grupo de amigos y excompañeros descubren que envejecer no siempre significa madurar cuando se reúnen para honrar
 la memoria de su entrenador de baloncesto.','Comedia','Ingles',36 ,6, 6 ),
      (14, 'Son Como Niños 2','2013-10-19', 'Tres años después de la reunión que volvió a unirlo a sus amigos de la infancia, Lenny Feder regresa junto a su familia 
a su pueblo natal para poder estar más cerca de sus amigos..','Comedia','Ingles',36 ,6, 6 ),
      (18, 'Marley y yo','2008-12-5', 'es una película estadounidense dirigida por David Frankel y protagonizada por Owen Wilson y Jennifer Aniston.
 Perteneciente al género de comedia romántica y está basada en la novela autobiográfica del periodista John Grogan, Marley & Me.','Comedia Romántica',
 'Ingles', 40,8,8 );


INSERT INTO serie (id_serie, nombre, descripcion, genero, idioma, episodios, id_actor, id_productor, id_director)  
VALUES
    (4, 'Game of Thrones', 'Es la descripción de dos familias poderosas, reyes y reinas, caballeros y renegados, hombres falsos y honestos, 
haciendo parte de un juego mortal por el control de los Siete Reinados de Westeros y por sentarse en el trono más alto. 
Martin es el co productor ejecutivo y uno de los escritores de la serie que fue filmada en el Norte de Irlanda y Malta.', 
'drama y fantasía medieval', 'Ingles', 73, 19, 5, 5),  
  
    (29, 'Homeland', 'Cuando el sargento del Cuerpo de Marines Nicholas Brody, que estuvo desaparecido en acción,
 regresa con una bienvenida de héroe a su tierra natal, luego de pasar ocho años cautivo, preso por el enemigo en Irak; la agente de la CIA,
 Carrie Mathison, una mujer brillante pero volátil, no está convencida de su historia. Ella cree que Brody trabaja para al-Qaeda y
 puede estar conectado con un plan terrorista que se va a llevar a cabo en suelo estadounidense. Ella termina jugando al gato y 
 al ratón con el sargento, poniendo en riesgo la seguridad nacional de EE. UU. Los métodos de investigación de Carrie la sitúan 
 en una posición complicada con Saul Berenson, su mentor de la CIA de muchos años, quien se ha arriesgado en varias ocasiones por ella,
 pero él podría ser alienado por su apoyo hacia ella y por la investigación que está realizando..','Suspense dramático','Ingles', 96, 11, 3, 3),
  
     (9, 'Friends', 'Tres hombres y tres mujeres jóvenes son mejores amigos y viven en el mismo conjunto de apartamentos.
 Ellos enfrentan la vida y el amor en la ciudad de Nueva York y se involucran en los asuntos personales de los demás, 
 donde incluso a veces intercambian novios o novias, lo que algunas veces genera situaciones que las personas comunes
 quizás nunca experimentan, especialmente durante las rupturas.', 'Comedia', 'Ingles', 236, 20, 4, 4),
  
    (17, 'Friends', 'Tres hombres y tres mujeres jóvenes son mejores amigos y viven en el mismo conjunto de apartamentos.
 Ellos enfrentan la vida y el amor en la ciudad de Nueva York y se involucran en los asuntos personales de los demás, 
 donde incluso a veces intercambian novios o novias, lo que algunas veces genera situaciones que las personas comunes
 quizás nunca experimentan, especialmente durante las rupturas.', 'Comedia', 'Ingles', 236, 25, 4, 4),
  
    (4, 'Game of Thrones', 'Es la descripción de dos familias poderosas, reyes y reinas, caballeros y renegados, hombres falsos y honestos, 
haciendo parte de un juego mortal por el control de los Siete Reinados de Westeros y por sentarse en el trono más alto. 
Martin es el co productor ejecutivo y uno de los escritores de la serie que fue filmada en el Norte de Irlanda y Malta.', 
'drama y fantasía medieval', 'Ingles', 73, 19, 5, 5);
