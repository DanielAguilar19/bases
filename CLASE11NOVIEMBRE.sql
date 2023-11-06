--FECHAS EN SQL

--SELECT GETDATE(); para sacar la fecha de la computadora

--DATEPART(parte de fecha, fecha) para particionar la fecha
--los valores para "parte de fecha" pueden ser year año, quarter cuarto, month mes, day dia, week semana,hour
--, minute, second y millisecond.


--para sumar fechas se utiliza DATEADD(parte de fecha, numero, fecha)
--select DATEADD (day, 3, '1980-11-02'); agregaria tres dias a la fecha 


--para sacar diferencias entre dos campos fecha se utiliza DATEDIFF(parte de fecha, fecha inicial, fecha final)
--select DATEDIFF(day,'2005-10-28','2006-10-28'); esto nos retorna el entero(365 dias)

--select * from EMPLEADO where (select DATEDIFF (YEAR,fecha_ingreso,GETDATE() ))>3

select * from EMPLEADO where (select DATEDIFF (MONTH,fecha_ingreso,GETDATE() ))>3