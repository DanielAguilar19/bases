create database Ejericio_Clase;

create table region( regionID nchar(5) unique, nom_region nvarchar(150)
constraint regionPK primary key (regionID));

create table proveedor( proveedorID nchar(5) unique, nombre_proveedor nvarchar(150), regionID nchar(5), fecha_ingreso datetime, costo int, RTN int unique,
constraint proveedorPK primary key(proveedorID),
constraint regionFK foreign key (regionID) references region(regionID));

create table Producto( productoID nchar(5) unique, nombre_producto nvarchar(150), proveedorID nchar(5), fecha_ingreso datetime
constraint productoPK primary key (productoID),
constraint proveedorFK foreign key(proveedorID) references proveedor(proveedorID));