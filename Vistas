## -- CREO VISTAS -- ##
##Películas en las que trabajó un actor específico
CREATE VIEW Vista_PeliculasDeActor AS
SELECT
    a.nombre AS Nombre_Actor,
    p.nombre  AS Pelicula_Trabajada
FROM actores a
INNER JOIN actua_peliculas ap ON a.id_actor = ap.id_actor
INNER JOIN pelicula p ON ap.id_pelicula = p.id_pelicula;


##Actores que trabajaron en una serie en particular
CREATE VIEW Vista_ActoresEnSerie AS
SELECT
    s.nombre AS serie,
    a.nombre AS Nombre_Actor
FROM serie s
INNER JOIN actua_series asr ON s.id_serie = asr.id_serie
INNER JOIN actores a ON asr.id_actor = a.id_actor;

SELECT * FROM Vista_ActoresEnSerie;


## Listado de actores que trabajaron en alguna serie 
CREATE VIEW Vista_ActoresEnAlgunaSerie AS
SELECT DISTINCT
    a.nombre AS Nombre_Actor,
    a.apellido AS Apellido_Actor
FROM actores a
INNER JOIN actua_series asr ON a.id_actor = asr.id_actor;
SELECT * FROM Vista_ActoresEnAlgunaSerie;
