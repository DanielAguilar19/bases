select count(VEHICULO.colorid) AS Carros,COLOR.nombre_color from VEHICULO
inner join COLOR on VEHICULO.colorid=COLOR.colorID
where vehiculo.tipo_combustibleID=1 group by COLOR.nombre_color


SELECT COUNT(*) AS SERVICIOS_POR_VEHICULO FROM ORDEN_SERVICIO AS s  
inner join  VEHICULO AS v ON s.vehiculoID = v.vehiculoID  
WHERE v.marcaID='1'or v.marcaID='4'  AND s.fecha_orden BETWEEN '2008-01-01' AND '2009-12-31';


select OrdenID,empleadoID,sucursalID,clienteID from ORDEN_SERVICIO 
where fecha_orden between '2010-03-01' and '2010-03-30'


select OrdenID,sucursalID,clienteID  from ORDEN_SERVICIO 
inner join EMPLEADO as emp on ORDEN_SERVICIO.empleadoID=emp.empleadoID
where fecha_orden between '2010-03-01' and '2010-03-30'

--REPORTE CON ORDENID, DESCRIPCION, CANTIDAD, NOMBRE EMPLEADO, NUMERO DE SERVICIO, MARCA, PROVEEDOR Y TOTAL DE MANO DE OBRA
select * from ORDEN_SERVICIO as orden ,Cliente as cliente,Tipo_Servicio as service
,VEHICULO as carro, EMPLEADO as empleado
inner join  