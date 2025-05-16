/*Seccion 1*/

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

/*28
select nombre from producto
where codigo_fabricante IN (1,3,5);*/

/*29
select nombre, precio*100 as centimos from producto*/

/*30
select nombre from fabricante where nombre like 's%';*/

/*31
select nombre from fabricante where nombre like 'e%';*/

/*32
select nombre from fabricante where nombre like '%w%';*/

/*33
select nombre from fabricante where nombre like '____';*/

/*34
select nombre from producto where nombre like '%Portátil';*/

/*35
select nombre from producto where nombre like '%Monitor' AND precio<215;*/

/*36
select nombre, precio from producto 
where precio>=180 order by precio desc, nombre asc;*/


/*Seccion 2*/

/*1
select p.Nombre AS 'NombreProducto', p.precio, f.nombre AS 'NombreFabricante'
FROM producto p INNER JOIN fabricante f ON codigo_fabricante = f.codigo*/

/*2
select p.nombre AS 'NombreProducto', p.precio, f.nombre AS 'NombreFabricante'
from producto p INNER JOIN fabricante f ON codigo_fabricante = f.codigo order by f.nombre ASC;*/

/*3
select p.codigo_fabricante AS 'CodigoFabricante', p.nombre AS 'ProductoNombre', f.codigo AS 'FabricanteProducto', f.nombre AS 'FabricanteNombre'
from producto as p INNER JOIN fabricante as f ON p.codigo_fabricante = f.codigo*/

/*4
select p.nombre AS 'NombreProducto', p.precio AS 'PrecioProducto', f.nombre AS 'FabricanteNombre'
from producto as p INNER JOIN fabricante as f ON p.codigo_fabricante = f.codigo order by p.precio*/

/*5
select p.nombre AS 'NombreProducto', p.precio AS 'PrecioProducto', f.nombre AS 'FabricanteNombre'
from producto as p INNER JOIN fabricante as f ON p.codigo_fabricante = f.codigo order by p.precio DESC;*/

/*6
select p.nombre 
from producto as p INNER JOIN fabricante as f ON p.codigo_fabricante = f.codigo where f.nombre = 'Lenovo'*/

/*7
select p.nombre from producto as p INNER JOIN fabricante as f ON p.codigo_fabricante = f.codigo where f.nombre = 'Crucial' AND p.precio > 200*/

/*8
select p.nombre from producto as p INNER JOIN fabricante as f ON p.codigo_fabricante = f.codigo 
WHERE f.nombre = 'Asus' OR f.nombre = 'HewlettPackard' OR f.nombre = 'Seagate'*/

/*9
select p.nombre from producto as p INNER JOIN fabricante as f ON p.codigo_fabricante = f.codigo 
WHERE f.nombre IN ('Asus', 'HewlettPackard', 'Seagate');*/

/*10
select p.nombre, p.precio 
from producto as p INNER JOIN fabricante as f ON p.codigo_fabricante = f.codigo
where f.nombre like '%e'*/

/*11
select p.nombre, p.precio 
from producto as p INNER JOIN fabricante as f ON p.codigo_fabricante = f.codigo
where f.nombre like '%w%';*/

/*12
select p.nombre , p.precio, f.nombre 
from producto as p INNER JOIN fabricante as f ON p.codigo_fabricante = f.codigo 
where p.precio >=180 ORDER BY p.precio DESC, p.nombre ASC*/

/*13
select f.codigo, f.nombre 
from producto as p INNER JOIN fabricante as f ON p.codigo_fabricante = f.codigo 
where f.codigo IN (select p.codigo_fabricante from producto)*/


/*Seccion 3*/
