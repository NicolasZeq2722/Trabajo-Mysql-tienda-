/*1:
select nombre from producto*/

/*2:
select nombre, precio from producto*/

/*3:
select * from producto*/

/*4:
select nombre, precio, precio * 1.09 AS precio_usd
from producto*/

/*5:
select nombre, precio * 1.12 AS euro, precio *1.09 AS dolares
from producto*/

/*6
select upper(nombre), precio from producto*/

/*7
select lower(nombre), precio from producto*/

/*8
select nombre, CONCAT(UPPER(SUBSTR(nombre, 1,2)), LOWER(SUBSTR(nombre, 3)))
from fabricante*/

/*9
select nombre, ROUND(precio, 2) AS precio_redondeado 
from producto*/

/*10
select nombre, truncate(precio, 0) AS precio_truncado from producto*/

/*11
select codigo_fabricante from producto*/

/*12
select distinct codigo_fabricante from producto*/

/*13
select nombre from fabricante ORDER BY nombre ASC;*/

/*14
select nombre from fabricante ORDER BY nombre DESC;*/

/*15
select nombre, precio from producto
ORDER BY nombre ASC, precio DESC;*/

/*16
select * from fabricante limit 5;*/

/*17
select * from fabricante limit 2 offset 3;*/

/*18
select nombre, precio from producto order by precio asc limit 0,1;*/

/*19
select nombre, precio from producto order by precio desc limit 0,1;*/

/*20
select nombre from fabricante limit 2;*/

/*21
select nombre from producto where precio<=120;*/

/*22
select nombre from producto where precio>=400;*/

/*23
select nombre from producto where precio<400;*/

/*24
select * from producto
where precio >= 80 and precio <= 300;*/

/*25
select * from producto
where precio between 60 and 200;*/

/*26
select nombre from producto
where precio > 200 and codigo_fabricante = 6;*/

/*27
select nombre from producto
WHERE codigo_fabricante = 1 OR codigo_fabricante = 3 OR codigo_fabricante = 5;*/

