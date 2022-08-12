use victoria;
create or replace view empleados_view as 
select p.cd_cod_persona,
p.nm_nombre, 
p.nm_seg_nombre,
p.nm_apellido,
p.nr_dni,
e.nr_legajo
from empleados e, persona p
where e.cd_cod_persona = p.cd_cod_persona;

create or replace view sectores_view as 
select e.cd_establecimiento, 
e.nm_establecimiento,
p.nm_puesto,
p.nr_piso
from establecimiento e, puesto p
where e.cd_establecimiento = p.cd_establecimiento;

create or replace view empleados_sector_establecimiento_view as
select count(e.cd_cod_persona), p.nm_puesto, es.nm_establecimiento 
from empleados e, puesto p, establecimiento es 
where e.cd_puesto = p.cd_puesto and p.cd_establecimiento = es.cd_establecimiento
group by nm_puesto, nm_establecimiento;


create or replace view salario_establecimiento_view as
select p.nm_puesto , s.vl_sueldo, es.nm_establecimiento
from salario s, puesto p , establecimiento es
where p.cd_puesto = s.cd_puesto
and p.cd_establecimiento = es.cd_establecimiento;


create or replace view salario_puesto_view as
select  distinct p.nm_puesto, 
s.vl_sueldo, s.vl_presentismo, s.vl_adicional, s.vl_horas_extras, s.vl_jubilacion, s.vl_obra_social
from salario s, puesto p
where s.nr_sequencia = p.nr_sequencia;
