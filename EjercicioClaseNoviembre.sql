SELECT
    O.OrdenID,
    O.OBS AS Descripcion_Orden,
    DL.cantidad AS Cantidad_Lubricante,
    E.nombre_Empleado AS Nombre_Empleado,
    OS.servicioID AS Numero_De_Servicio,
    M.nombre_Marca AS Marca,
    P.nom_proveedor AS Proveedor,
    (DL.cantidad * MO.costo_venta) AS Total_Mano_De_Obra
FROM ORDEN_SERVICIO O
INNER JOIN DETALLE_LUBRICANTE DL ON O.OrdenID = DL.ordenID
INNER JOIN EMPLEADO E ON O.empleadoID = E.empleadoID
INNER JOIN ORDEN_SERVICIO OS ON O.OrdenID = OS.OrdenID
INNER JOIN VEHICULO V ON OS.vehiculoID = V.vehiculoID
INNER JOIN MARCA M ON V.marcaID = M.marcaID
INNER JOIN Proveedor P ON V.proveedorID = P.proveedorID
INNER JOIN MO ON MO.cantidad = DL.cantidad



SELECT
    OS.OrdenID,
    R.Descripcion_rep AS Descripcion,
    DR.cantidad AS Cantidad,
    E.nombre_Empleado AS NombreEmpleado,
    OS.sucursalID AS NumeroServicio,
    M.nombre_Marca AS Marca,
    P.nom_proveedor AS Proveedor,
    (DR.cantidad * R.costo_venta) AS TotalManoDeObra
FROM
    DETALLE_REPUESTO AS DR
INNER JOIN REPUESTO AS R ON DR.repuestoID = R.RepuestoID
INNER JOIN ORDEN_SERVICIO AS OS ON DR.ordenID = OS.OrdenID
INNER JOIN EMPLEADO AS E ON OS.empleadoID = E.empleadoID
INNER JOIN VEHICULO AS V ON OS.vehiculoID = V.vehiculoID
INNER JOIN MARCA AS M ON V.marcaID = M.marcaID
INNER JOIN Proveedor AS P ON V.proveedorID = P.proveedorID
WHERE
    DR.cantidad IS NOT NULL;
