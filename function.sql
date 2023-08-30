DELIMITER //

CREATE FUNCTION obtener_actores_en_serie(id_serie_param INT) RETURNS TEXT  
DETERMINISTIC
BEGIN
    DECLARE actor_list TEXT;
    
    SELECT GROUP_CONCAT(CONCAT(nombre, ' ', apellido)) INTO actor_list
    FROM actores
    WHERE id_actor IN (
        SELECT id_actor
        FROM actua_series
        WHERE id_serie = id_serie_param
    );
    
    RETURN actor_list;
END;
//



DELIMITER //

CREATE FUNCTION obtener_actuaciones_de_actor(id_actor_param INT) RETURNS TEXT
DETERMINISTIC
BEGIN
    DECLARE actua TEXT;
    
    SELECT GROUP_CONCAT(DISTINCT
        CONCAT('Serie: ', s.nombre, ', Película: ', p.nombre) SEPARATOR '; ') INTO actua
    FROM actores a
    INNER JOIN actua act ON a.id_actor = act.id_actor
    INNER JOIN pelicula p ON act.id_pelicula = p.id_pelicula
    LEFT JOIN serie s ON p.id_serie = s.id_serie
    WHERE a.id_actor = id_actor_param;
    
    RETURN actua;
END;
//

DELIMITER ;
