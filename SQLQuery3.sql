--SELECT * FROM VEHICULO where(versionID='2') and (ano_ingreso between '2003-01-01' AND '2010-12-31')

--SELECT COUNT(*) AS SERVICIOS_POR_VEHICULO FROM ORDEN_SERVICIO AS s  inner join  VEHICULO AS v ON s.vehiculoID = v.vehiculoID  WHERE v.marcaID='1'or v.marcaID='4'  AND s.fecha_orden BETWEEN '2008-01-01' AND '2009-12-31';

--JUAN= ID 1 ::::: SEBASTIAN= ID 2