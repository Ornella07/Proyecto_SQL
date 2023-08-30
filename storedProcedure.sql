delimiter //
CREATE PROCEDURE `peliculasActor`(in nombreAc VARCHAR(25))
BEGIN 
	SELECT *
	FROM actores
	WHERE nombre like concat('%',nombreAc, '%');
END //

CALL peliculasActor('Adam');

DELIMITER //
CREATE PROCEDURE actores(actor_id INT)
BEGIN
    SELECT s.nombre AS titulo, 'Serie' AS media_type
    FROM serie s
    INNER JOIN actua_series aser ON s.id_serie = aser.id_serie
    WHERE aser.id_actor = actor_id
    UNION
    SELECT p.nombre AS titulo, 'Película' AS media_type
    FROM pelicula p
    INNER JOIN actua_pelicula ap ON p.id_pelicula = ap.id_pelicula
    WHERE ap.id_actor = actor_id;
END;
//
DELIMITER ;

CALL actores(19);
CALL actores(25);
CALL actores(30);