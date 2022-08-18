#Su funcion es insertar personas a la tabla 'Persona', los parametros de entrada son: el codigo de persona, numero de identidad, fecha de nacimiento, apellido, nombre, segundo nombre, numero de telefono, codigo del establecimiento, y si es empleado o no.
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertar_personas`(cd_cod_persona int, nr_dni INT, dt_nacimiento date, nm_apellido text, nm_nombre text, nm_seg_nombre text, nr_telefono int, cd_establecimiento int, ie_empleado tinyint(1))
BEGIN
insert into persona 
( cd_cod_persona, nr_dni, nm_nombre, nm_seg_nombre, nm_apellido, dt_nacimiento, ds_sexo, nr_telefono, ds_direccion, cd_numero, cd_postal, ds_ciudad, cd_establecimiento, ie_empleado, ds_email)
values (cd_cod_persona, nr_dni, nm_nombre, nm_seg_nombre, nm_apellido, dt_nacimiento, null, nr_telefono, null, null, null, null, cd_establecimiento, ie_empleado, null);
commit;
END

call insertar_personas (50, 45057226, '2000-01-11', 'Palermo', 'Facundo', 'Ezequiel', 15559091, 1, 1);
call insertar_personas (55, 40005006, '1998-02-02', 'Candida', 'Ema', null, 15252333, 1, 1);

----------------------------------------------------------------------------------------------------------------------

#Su funcion es ordenar la tabla 'Empleados', orden 1: se ordena por la fecha de inicio, orden 2: por el numero de legajo y orden 3: por el codigo del puesto, y tambien por ascendente y descendente.
CREATE PROCEDURE `ordenar_empleados` (orden int, asc_desc varchar (50))
BEGIN
if orden = 1 and asc_desc = 'ASC' then 
	select * from empleados 
    order by dt_inicio ASC ;
elseif orden = 1 and asc_desc = 'DESC' then
	select * from empleados 
    order by dt_inicio DESC ;
elseif orden = 2 and asc_desc = 'ASC' then 
	select * from empleados 
    order by nr_legajo ASC;
elseif orden = 2 and asc_desc = 'DESC' then
	select * from empleados
    order by nr_legajo DESC;
elseif orden = 3 and asc_desc = 'ASC' then 
	select * from empleados
    order by cd_puesto ASC;
elseif orden = 3 and asc_desc = 'DESC' then  
	select * from empleados
    order by cd_puesto DESC;
else select * from empleados;
end if ;
END

call ordenar_empleados (1, 'DESC');