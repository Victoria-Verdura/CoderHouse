CREATE DEFINER=`root`@`localhost` FUNCTION `valor_total`(cd_puesto int ) RETURNS float
    NO SQL
BEGIN
	declare resultado float;
	select sum(s.vl_sueldo + s.vl_presentismo)
    into resultado
    from salario s
    where s.cd_puesto = cd_puesto; 
RETURN resultado;
END