CREATE DEFINER=`root`@`localhost` FUNCTION `descripcion_puesto`(cd_cod_persona int) RETURNS varchar(300) CHARSET utf8mb4
    NO SQL
BEGIN
	declare nombre varchar (300);
    select pu.nm_puesto
    into nombre 
    from puesto pu, empleados em
    where em.cd_cod_persona = cd_cod_persona
    and em.cd_puesto = pu.cd_puesto;
RETURN nombre ;
END


