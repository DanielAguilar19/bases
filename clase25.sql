--------creacion de base de datos
create database BaseNueva;
 use Ejercicio

---------creacion de tablas
create table region( regionID nchar(5) unique, nom_region nvarchar(150)
constraint regionPK primary key (regionID));

create table clientes( clienteID nchar(5) not null,
regionID nchar(5) not null,
nom_cliente nvarchar(150),
direccion nvarchar(150),
telefono nchar(7),
constraint clientePK primary key(clienteID),
constraint regionFk foreign key (regionID) references region(regionID)
);

create table proveedor ( proveedorID nchar(5) unique, nombre_proveedor nvarchar(150), regionID nchar(5), fecha_ingreso datetime, costo int, RTN int unique,
constraint proveedorPK primary key(proveedorID),
constraint regionFK foreign key (regionID) references region(regionID));

create table Producto( productoID nchar(5) unique, nombre_producto nvarchar(150), proveedorID nchar(5), fecha_ingreso datetime
constraint productoPK primary key (productoID),
constraint proveedorFK foreign key(proveedorID) references proveedor(proveedorID));

---------Alter table
alter table clientes add sueldo int 
constraint check1 check(sueldo > 10000);

alter table clientes add fecha date 
constraint check2 check(fecha >'01-01-2010' and fecha <'31-12-2012');

---------Inserts
---insert into clientes(clienteID, regionID,nom_cliente,direccion, telefono, sueldo, fecha) values ('1', '1', 'Daniel Aguilar', 'Tegucigalpa', '95456447','15000', '02-05-2011');

---insert into clientes(clienteID, regionID,nom_cliente,direccion, telefono, sueldo, fecha) values ('2', '1', 'Maria Jose', 'Gracias Lempira', '98879556','16000', '03-05-2011');

--------Updates
---update clientes set sueldo='20000' where nom_cliente = 'Daniel Aguilar'

--update clientes set direccion='Col. Kennedy' where nom_cliente = 'Maria Jose'