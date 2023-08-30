DELIMITER //
CREATE FUNCTION vasAVer(nombre VARCHAR(50))
RETURNS VARCHAR (50)
	DETERMINISTIC
	BEGIN 
    DECLARE nombre VARCHAR(60);
    SET nombre = CONCAT(nombre);
    return concat('Vas a ver ',nombre);
    END//
    
SELECT id_serie, nombre AS 'vasAVer' FROM serie;
    
SELECT * FROM serie;