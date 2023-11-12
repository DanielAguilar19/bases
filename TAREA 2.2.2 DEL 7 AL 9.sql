--7. Promedio de sueldos por categorías de cargos:
SELECT c.cargoID, AVG(sueldo) AS promedio_sueldo
FROM EMPLEADO
inner join CARGO AS c on EMPLEADO.cargoID=c.cargoID
GROUP BY c.cargoID;


--7.1. Promedio de sueldos solo para los cargos que ganan más de 5000:
SELECT c.cargoID, AVG(sueldo) AS promedio_sueldo
FROM EMPLEADO
inner join CARGO AS c on EMPLEADO.cargoID=c.cargoID
where sueldo>5000
GROUP BY c.cargoID 

--8. Total de sueldos que se pagan arriba de LPS.10,000:
SELECT SUM(sueldo) AS total_sueldos
FROM EMPLEADO
WHERE sueldo > 10000;
 

--9. Códigos de factura, importe total de la venta, nombre del empleado, código del vehículo, color del vehículo y nombre completo del cliente:
SELECT
    f.FacturaId,
    f.total_pagar AS importe_total_venta,
    e.nombre_Empleado AS nombre_empleado,
    v.vehiculoID,
    v.colorid,
    c.P_nombre AS nombre_cliente
FROM FACTURA f
JOIN ORDEN_SERVICIO os ON f.ordenID=os.OrdenID
JOIN EMPLEADO e ON os.empleadoID = e.empleadoID
JOIN VEHICULO v ON os.vehiculoID = v.vehiculoID
JOIN Cliente c ON os.clienteID = c.clienteID;
