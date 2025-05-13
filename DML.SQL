INSERT INTO fabricante (Nombre) VALUES
    ('Asus'),
    ('Lenovo'),
    ('Hewlett-Packard'),
	('Samsung'),
    ('Seagate'),
    ('Crucial'),
    ('Gigabyte'),
    ('Huawei'),
    ('Xiaomi');

INSERT INTO producto (Nombre, , Fabricante) VALUES
    ('Disco duro SATA3 1TB', 86.99, 'Seagate'),
    ('Memoria RAM DDR4 8GB', 120, 'Crucial'),
    ('Disco SSD 1 TB', 150.99, 'Samsung'),
    ('GeForce GTX 1050Ti', 185, 'Gigabyte'),
    ('GeForce GTX 1080 Xtreme', 755, 'Crucial'),
    ('Monitor 24 LED Full HD', 202, 'Asus'),
    ('Monitor 27 LED Full HD', 245.99, 'Asus'),
    ('Portátil Yoga 520', 559, 'Lenovo'),
    ('Portátil Ideapd 320', 444, 'Lenovo'),
    ('Impresora HP Deskjet 3720', 59.99, 'Hewlett-Packard'),
    ('Impresora HP Laserjet Pro M26nw', 180, 'Hewlett-Packard');



/*1:
SELECT nombre FROM PRODUCTOS*/

/*2:
SELECT nombre, Valor FROM PRODUCTOS*/

/*3:
SELECT nombre, Valor, Fabricante FROM PRODUCTOS*/

/*4:
SELECT nombre, Valor, Fabricante FROM PRODUCTOS*/