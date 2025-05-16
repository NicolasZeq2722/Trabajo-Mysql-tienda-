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

/*1
select f.nombre, p.nombre
from producto as p RIGHT JOIN fabricante as f ON p.codigo_fabricante = f.codigo;*/

/*2
select f.nombre
from producto as p RIGHT JOIN fabricante as f ON p.codigo_fabricante = f.codigo
WHERE p.codigo_fabricante is null*/

/*3
Si, pueden existir productos que no esten relacionados a su fabricante esto en Mysql podria suceder si el producto no esta asociado a ninguna marca registrada o en el caso de bases de datos no se añade el campo del fabricante, de por ejemplo, un paquete de arroz*/


/*Seccion 4*/

/*1
select count(nombre) from producto;*/

/*2
select count(nombre) from fabricante;*/

/*3
select count(distinct codigo_fabricante) from producto*/

/*4
select avg(precio) from producto*/

/*5
select min(precio) from producto*/

/*6
select max(precio) from producto*/

/*7
select nombre, precio
from producto
where precio = (select min(precio)from producto)*/

/*8
select nombre, precio 
from producto 
where precio =(select max(precio) from producto)*/

/*9
select sum(precio) AS SumaProductos
from producto*/

/*10
select count(*) AS 'FabricanteAsus'
from producto as p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo
where f.nombre = 'Asus'*/

/*11
select avg(precio) AS 'MediaPrecio'
from producto as p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo
where f.nombre = 'Asus'*/

/*12
select min(precio) AS 'PrecioMinimo'
from producto as p INNER JOIN fabricante as f ON p.codigo_fabricante = f.codigo
where f.nombre = 'Asus'*/

/*13
select max(precio) AS 'PrecioCaro'
from producto as p INNER JOIN fabricante as f ON p.codigo_fabricante = f.codigo
where f.nombre = 'Asus'*/

/*14
select sum(precio) AS 'SumaPrecios'
from producto as p INNER JOIN fabricante as f ON p.codigo_fabricante = f.codigo
where f.nombre = 'Asus'*/

/*15
select max(precio) as 'PrecioMaximo', min(precio) as 'PrecioMinimo', avg(precio) as 'MediaPrecio', count(*) 'TotalProductos'
from producto as p INNER JOIN fabricante as f ON p.codigo_fabricante = f.codigo
where f.nombre = 'Crucial'*/

/*16
select f.nombre as 'Fabricantes', count(p.codigo_fabricante) AS 'CantidadProductos'
from producto as p RIGHT JOIN fabricante as f ON p.codigo_fabricante = f.codigo
group by f.nombre
order by p.nombre DESC*/

/*17
select f.nombre as 'fabricante', ifnull(max(precio), 0) as 'PrecioMaximo', ifnull(min(precio), 0) as 'PrecioMinimo', ifnull(avg(precio), 0) as 'PrecioPromedio'
from producto as p RIGHT JOIN fabricante as f ON p.codigo_fabricante = f.nombre
group by f.nombre*/

/*18
select codigo_fabricante as 'Codigofabricante', max(precio) as 'PrecioMaximo', min(precio) as 'PrecioMinimo', avg(precio) as 'PrecioPromedio', count(codigo_fabricante) as 'TotalProductos'
from producto as p right join fabricante as f on p.codigo_fabricante = f.codigo
group by f.nombre
having PrecioPromedio>200*/ 

/*19
select f.nombre as 'NombreFabricante', max(precio) as 'PrecioMaximo', min(precio) as 'PrecioMinimo', avg(precio) as 'PrecioPromedio', count(codigo_fabricante) as 'TotalProductos'
from producto as p right join fabricante as f on p.codigo_fabricante = f.codigo
group by f.nombre
having PrecioPromedio>200*/

/*20
select count(*) as 'Productos con precio >= a 180'
from producto p right join fabricante as f on p.codigo_fabricante = f.codigo
where precio >=180*/

/*21
select f.nombre, count(p.nombre) as 'TotalProductos'
from producto as p right join fabricante as f on p.codigo_fabricante = f.codigo
where p.precio>=180
group by f.nombre*/

/*22
select f.codigo as 'CodigoFabricante', ifnull(avg(p.precio), 0) as 'promedio'
from producto as p right join fabricante as f on p.codigo_fabricante = f.codigo
group by f.nombre*/

/*23
select f.nombre as 'Fabricante', ifnull(avg(p.precio), 0) as 'promedio'
from producto as p right join fabricante as f on p.codigo_fabricante = f.codigo
group by f.nombre*/

/*24
select f.nombre as 'NombreFabricantes', ifnull(avg(precio), 0) as 'PromedioProductos'
from producto as p right join fabricante as f on p.codigo_fabricante = f.codigo
group by f.nombre
having PromedioProductos >=150*/

/*25
select f.nombre, count(p.codigo_fabricante) as 'CantidadProducto'
from producto as p inner join fabricante as f on p.codigo_fabricante = f.codigo
group by f.nombre
having CantidadProducto >= 2*/

/*26
select f.nombre, count(p.codigo_fabricante) as 'CantidadDeProductos'
from producto as p inner join fabricante as f on p.codigo_fabricante = f.codigo
where p.precio >=220
group by f.nombre desc*/

/*27
select f.nombre, COUNT(CASE WHEN p.precio >= 220 THEN f.nombre ELSE null END) as 'cantidad'
from fabricante as f left join producto p ON p.codigo_fabricante = f.codigo
group by f.nombre desc*/

/*28
select f.nombre, sum(precio) as 'Suma'
from producto as p inner join fabricante as f on p.codigo_fabricante = f.codigo
group by f.nombre
having Suma > 1000*/

/*29
select p.nombre, p.precio, f.nombre as 'NombreFabricante'
from producto p
inner join fabricante f on p.codigo_fabricante = f.codigo
inner join (
    select codigo_fabricante, max(precio) as 'PrecioMaximo'
    from producto
    group by codigo_fabricante
) PrecioMaximo on p.codigo_fabricante = PrecioMaximo.codigo_fabricante and p.precio = PrecioMaximo.PrecioMaximo
order by f.nombre asc;*/


/*Seccion 5*/

/*1
select p.nombre from producto p 
where p.codigo_fabricante = (select codigo from fabricante where nombre = 'lenovo')*/

/*2
 select * from producto p 
 where p.precio = (select max(p.precio) from fabricante f, producto p  
 where f.codigo = p.codigo_fabricante AND f.nombre = 'Lenovo')*/
 
 /*3
 select p.nombre from producto p where p.precio = 
 (select max(p.precio) from fabricante f, producto p  
 where f.codigo = p.codigo_fabricante AND f.nombre = 'Lenovo')*/
 
 /*4
select p.nombre from producto p where p.precio = 
(select min(p.precio) from fabricante f, producto p  
 where f.codigo = p.codigo_fabricante AND f.nombre = 'Hewlett-Packard')*/
 
 /*5
select p.nombre from producto p 
 where p.precio>= (select max(p.precio) from fabricante f, producto p  
 where f.codigo = p.codigo_fabricante AND f.nombre = 'Lenovo')*/
 
 /*6
select p.nombre from producto p
where p.precio > (select avg(p.precio)
from fabricante f, producto p
where p.codigo_fabricante = f.codigo AND f.nombre= 'Asus')*/


 /*seccion 6*/

/*1
select p.nombre from producto p 
where p.precio >= all(select p.precio from producto p)*/

/*2
select p.nombre from producto p 
where p.precio <=all(select p.precio from producto p)*/

/*3
select f.nombre from fabricante f
where f.codigo = ANY (select p.codigo_fabricante from producto p)*/

/*4
select f.nombre from fabricante f
where f.codigo <> ALL  (select p.codigo_fabricante from producto p)*/

/*seccion 7*/

/*1
select f.nombre from fabricante f
where f.codigo IN (select p.codigo_fabricante from producto p)*/

/*2
select f.nombre from fabricante f
where f.codigo NOT IN (select p.codigo_fabricante from producto p)*/


/*seccion 8*/

/*1
select distinct f.nombre from fabricante f INNER JOIN producto p ON p.codigo_fabricante = f.codigo
WHERE EXISTS(select distinct p.codigo_fabricante from producto p)*/

/*2
select distinct f.nombre from fabricante f LEFT JOIN producto p ON p.codigo_fabricante = f.codigo
WHERE NOT EXISTS(select distinct p.codigo_fabricante from producto p INNER JOIN fabricante ON f.codigo = p.codigo_fabricante)*/


/*seccion 9*/

/*1
select f.nombre, p.nombre, MAX(p.precio) as Precio
from producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo 
group by f.nombre*/

/*2
select p.nombre , p.precio , f.nombre from producto p JOIN fabricante f 
ON p.codigo_fabricante = f.codigo
where p.precio >= (select AVG(precio) from Producto where f.codigo = p.codigo_fabricante)*/

/*3
select p.nombre from fabricante f INNER JOIN producto p ON p.codigo_fabricante = f.codigo
where f.nombre = (select f.nombre from fabricante f where f.nombre = 'Lenovo') 
AND p.precio = 
(select MAX(p.precio) from fabricante f INNER JOIN producto p 
ON p.codigo_fabricante = f.codigo where f.nombre = 'Lenovo')*/

/*4
select f.nombre from fabricante f INNER JOIN producto p ON p.codigo_fabricante = f.codigo
group by f.nombre
HAVING COUNT(p.codigo_fabricante) = 
(select COUNT(*) from producto p INNER JOIN fabricante f ON p.codigo_fabricante = f.codigo
where f.nombre = 'Lenovo')*/               
