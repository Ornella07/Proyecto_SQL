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




