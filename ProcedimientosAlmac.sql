CREATE PROCEDURE `fabricante`(
	IN p_nombre VARCHAR(100)
)
BEGIN
	INSERT INTO fabricante (nombre)
    VALUES (p_nombre);
END
CREATE PROCEDURE `producto`(
	IN p_nombre VARCHAR(100),
    IN p_precio DOUBLE,
    IN p_codigo_fabricante INT(10)
)
BEGIN
	INSERT INTO producto (nombre, precio, codigo_fabricante)
    VALUES (p_nombre, p_precio, p_codigo_fabricante);
END