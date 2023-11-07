--La cardinalidad expresa el numero de entidades a las que se pueda asociar otra entidad a traves de un conjunto de relaciones
--es decir si la relacion es de uno a muchos, de uno a uno o de muchos a muchos
--la relacion de uno a uno se logra relacionando a la llave primaria a llave primaria, usando la llave foranea relacionada a una pk se lograria tener uno a muchos
--relacionando una llave foranea con otra llave foranea se logra el grado de cardinalidad de muchos a muchos


--		entidad=tabla y atributo=elemento de la tabla

--atributo simple o atomico son aquellos que no contienen otros atributos, no es divisible

--compuesto son los que incluyen otros atributos simples, si es divisible

--monovalorados o univalorados es el atributo que toma un solo valor, para una entidad en particular, por ejemplo un campo edad solo puede recibir un entero

--multivalorados son los que para una misma entidad puede tomar muchos valores, por ejemplo una persona puede haber estudiado varias carreras

--derivados o calculados son aquellos que se pueden conseguir con operaciones sobre valores de otros atributos, por ejemplo los totales por eso no se guardan en las tablas porque varian

--nulos son aquellos atributos para los cuales en algun momento no existe o no se conoce su valor, por ejemplo si se pide segundo apellido y solo tiene un apellido la persona, campo queda null


