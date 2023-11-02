--Reglas aplicadas de las subconsultas


--1) no puede utilizarse  ORDER BY dentro de una subconsulta aunque si puede emplearse en el select mas externo

--2) la lista select de la subconsulta debe estar compuesta por un unico nombre de columna o expresion exepto en el caso que se use EXIT

--3) De manera oredeterminada los nombres de las columnad de una subconsult hacen referencua al nombre de la tabla incluido
--en la clausula FROM de la subconsulta, es posible tambien hacer referencia a una tabla contenida en la calusula FROM


--LISTAR A LOS EMPLEADOS QUE GANAN IGUAL QUE SEBASTIAN USANDO SUBCONSULTAS
select * from EMPLEADO where sueldo=(select sueldo from EMPLEADO where EMPLEADO.nombre_Empleado='sebastian')
and EMPLEADO.nombre_Empleado!='sebastian'


--LISTAR TODOS LOS ID DE LOS VEHICULOS Y EL ID Y EL NOMBRE DEL EMPLEADO QUE ATENDIO, DE TODOS LOS VEHICULOS
--QUE FUERON ATENDIDOS POR EMPLEADOS CON EL MISMO PUESTO QUE JUAN

--select vehiculoID, empleadoID from ORDEN_SERVICIO,CARGO,EMPLEADO 