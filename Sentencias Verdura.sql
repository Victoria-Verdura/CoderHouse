
use victoria;
/*ESTE USUARIO TIENE PERMISO UNICAMENTE PARA LECTURA DE LAS TABLAS Y TIENE DENEGADO EL PERMISO DE ELIMINAR*/
create user if not exists 'usuariolector'@'localhost' identified by 'lector123';
grant select on victoria.empleados to 'usuariolector'@'localhost' ;
grant select on victoria.establecimiento to 'usuariolector'@'localhost' ;
grant select on victoria.persona to 'usuariolector'@'localhost' ;
grant select on victoria.puesto to 'usuariolector'@'localhost' ;
grant select on victoria.salario to 'usuariolector'@'localhost' ;
grant select on victoria.log_persona to 'usuariolector'@'localhost' ;
grant select on victoria.log_salario to 'usuariolector'@'localhost' ;
revoke delete on *.* from 'usuariolector'@'localhost' ;
show grants for 'usuariolector'@'localhost' ;

/*ESTE USUARIO TIENE PERMISO PARA LECTURA, INSERTAR Y MODIFICAR LAS TABLAS Y TIENE DENEGADO EL PERMISO DE ELIMINAR*/
create user if not exists 'usuario2'@'localhost' identified by 'usuario123';
grant select, insert, update on victoria.empleados to 'usuario2'@'localhost';
grant select, insert, update on victoria.establecimiento to 'usuario2'@'localhost';
grant select, insert, update on victoria.persona to 'usuario2'@'localhost';
grant select, insert, update on victoria.puesto to 'usuario2'@'localhost';
grant select, insert, update on victoria.salario to 'usuario2'@'localhost';
grant select, insert, update on victoria.log_persona to 'usuario2'@'localhost';
grant select, insert, update on victoria.log_salario to 'usuario2'@'localhost';
revoke delete on *.* from 'usuario2'@'localhost';
show grants for 'usuario2'@'localhost';