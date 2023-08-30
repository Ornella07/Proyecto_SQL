
CREATE VIEW vista_homeland AS
select * from serie
WHERE nombre = "Homeland" ;
 
 select * from vista_homeland;
 
CREATE VIEW vista_outlander AS
SELECT * FROM serie
WHERE nombre = "outlander";

  select * from vista_outlander;
 
CREATE view vista_edad_actor AS
select nombre, apellido, edad FROM actores
where edad >= 35;

 select * from vista_edad_actor;
 
CREATE VIEW vista_peliculas_nuevas AS
select nombre, año, id_actor FROM pelicula p
WHERE año > 2013-00-00;
 
select * from vista_peliculas_nuevas;
 

 
 
 

