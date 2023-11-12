--1
SELECT nombre_Empleado, cargoID, fecha_ingreso
FROM EMPLEADO
WHERE sueldo > 10000 AND nombre_Empleado LIKE '%LIA%';


--2
SELECT nombre_Empleado, sueldo, cargoID
FROM EMPLEADO
WHERE sueldo < (SELECT sueldo FROM EMPLEADO WHERE nombre_Empleado = 'Jesus Miranda');


--3
SELECT *
FROM municipio
WHERE municipioID <> (select nom_municipio from municipio where nom_municipio='Santa ANA');


--4
SELECT SUM(lu.cantidad * lubri.costo_venta) AS total_lubricantes
FROM ORDEN_SERVICIO as o
inner join DETALLE_LUBRICANTE lu on o.OrdenID=lu.ordenID
inner join LUBRICANTE lubri on lu.lubricanteID=lubri.lubricanteID
WHERE o.OrdenID = 2;


--5
select * from EMPLEADO where (select DATEDIFF (YEAR,fecha_ingreso,GETDATE() ))>2


--6
SELECT *
FROM EMPLEADO
WHERE (select DATEDIFF(MONTH,fecha_ingreso,GETDATE() ))>=12

--7
SELECT SUM(subtotal) AS total_sin_descuento_iva
FROM FACTURA
WHERE YEAR(fecha_pago) = 2010;

--8
SELECT pro.proveedorID, COUNT(VEHICULO.vehiculoID) AS total_vehiculos
FROM Proveedor as pro
inner join VEHICULO on pro.proveedorID =VEHICULO.proveedorID
inner join ORDEN_SERVICIO on VEHICULO.vehiculoID=ORDEN_SERVICIO.vehiculoID
inner join FACTURA on ORDEN_SERVICIO.OrdenID=FACTURA.ordenID
WHERE YEAR(FACTURA.fecha_pago) = 2010
GROUP BY pro.proveedorID;


--9
SELECT municipioID, COUNT(VEHICULO.vehiculoID) AS total_vehiculos
FROM ORDEN_SERVICIO
inner join cliente ON Cliente.clienteID = ORDEN_SERVICIO.clienteID
inner join	VEHICULO on VEHICULO.vehiculoID = ORDEN_SERVICIO.vehiculoID
GROUP BY municipioID;


--10
SELECT FACTURA.FacturaId, c.P_nombre AS nombre_cliente, c.municipioID, v.vehiculoID, p.nom_proveedor AS proveedor, FACTURA.total_pagar
FROM FACTURA, ORDEN_SERVICIO 
JOIN Cliente c ON ORDEN_SERVICIO.clienteID= c.clienteID
JOIN VEHICULO v ON ORDEN_SERVICIO.vehiculoID = v.vehiculoID
JOIN Proveedor p ON v.proveedorID = p.proveedorID
WHERE YEAR(FACTURA.fecha_pago) = 2010;
