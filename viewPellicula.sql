CREATE VIEW VistaDetallesPeliculas AS
SELECT p.id_pelicula, p.nombre, a.nombre AS NombreActor
FROM pelicula p
JOIN actua_pelicula pa ON p.id_pelicula = pa.id_pelicula
JOIN actores a ON pa.id_actor = a.id_actor;

select * from VistaDetallesPeliculas;