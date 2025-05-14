CREATE DEFINER=`root`@`localhost` PROCEDURE `fabricante`(
	IN p_nombre VARCHAR(100)
)
BEGIN
	INSERT INTO fabricante (nombre)
    VALUES (p_nombre);
END