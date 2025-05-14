DROP DATABASE IF EXISTS tienda_fabricante;
CREATE DATABASE tienda_fabricante;
USE tienda_fabricante;

CREATE TABLE fabricante (
    codigo INT(10) PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100)
);

CREATE TABLE producto (
    codigo INT(10) PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    precio DOUBLE,
    codigo_fabricante INT(10)
);

ALTER TABLE producto
ADD CONSTRAINT fk_codigo_fabricante
FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo);