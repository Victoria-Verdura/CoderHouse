use victoria;
delimiter //
create table if not exists log_persona
(id_log int auto_increment ,
nr_dni int ,
nm_nombre text,
nm_seg_nombre text,
nm_apellido text,
nombre_accion varchar (100),
nombre_tabla varchar (100),
usuario varchar (200),
fecha_mod date ,
primary key (id_log)
); 
delimiter;

/*PRIMER TRIGGER: SU FUNCION ES QUE ANTES DE BORRAR CUALQUIER DATO DE LA TABLA PERSONA QUEDE REGISTRADO*/
delimiter //
create trigger trg_control_persona_eliminadas
before delete on persona 
for each row 
begin
insert into log_persona (nr_dni, nm_nombre, nm_seg_nombre, nm_apellido, nombre_accion, nombre_tabla, usuario, fecha_mod)
values ( old.nr_dni, old.nm_nombre, old.nm_seg_nombre, old.nm_apellido, 'delete', 'persona', current_user(), now());
end //
delimiter ;

/*SEGUNDO TRIGGER: SU FUNCION ES QUE DESPUES DE INSERTAR UN NUEVO DATO EN LA TABLA PERSONA QUEDE REGISTRADO*/
delimiter //
create trigger trg_control_persona
after insert on persona 
for each row 
begin
insert into log_persona (nr_dni, nm_nombre, nm_seg_nombre, nm_apellido, nombre_accion, nombre_tabla, usuario, fecha_mod)
values (new.nr_dni, new.nm_nombre, new.nm_seg_nombre, new.nm_apellido, 'insert', 'persona', current_user(), now());
end //
delimiter ;

insert into persona (nr_dni,cd_cod_persona,nm_nombre,nm_seg_nombre,nm_apellido)
values (35987555,60, 'Macarena', null, 'Arce');

delete from persona where cd_cod_persona =60;

------------------------------------------------------------------------------------------------------
delimiter //
create table if not exists log_salario
(id_log int auto_increment,
cd_puesto int,
nr_sequencia int, 
vl_sueldo decimal(10,0), 
camponuevo_campoanterior varchar (1000),
nombre_accion varchar (100),
nombre_tabla varchar (100),
usuario varchar (200),
fecha_mod date ,
primary key (id_log)
);
delimiter;

/*PRIMER TRIGGER: SU FUNCION ES QUE ANTES DE UNA ACTUALIZACION EN LA TABLA SALARIO QUEDE REGISTRADO*/
delimiter //
create trigger trg_control_salario_old
before update on salario
for each row 
begin
insert into log_salario ( cd_puesto, nr_sequencia, vl_sueldo, nombre_accion, nombre_tabla, usuario, fecha_mod)
values ( old.cd_puesto, old.nr_sequencia, old.vl_sueldo, 'update', 'salario', current_user() , now());
end //
delimiter ;

update salario set vl_sueldo = 9500 where cd_puesto = 1;

/*SEGUNDO TRIGGER: SU FUNCION ES QUE DESPUES QUE SE INSERTE UN DATO NUEVO EN LA TABLA SALARIO QUEDE REGISTRADO*/
delimiter //
create trigger trg_control_salario_new
after insert on salario
for each row 
begin 
insert into log_salario ( cd_puesto, nr_sequencia, vl_sueldo, nombre_accion, nombre_tabla, usuario, fecha_mod)
values (new.cd_puesto, new.nr_sequencia, new.vl_sueldo, 'insert', 'salario', current_user() , now());
end //
delimiter ;

insert into salario (cd_puesto, nr_sequencia, vl_sueldo)
values (6,6, 200000);
---------------------------------------------------------------------------------------
/*ESTE ES UN INTENTO QUE NO ME SALIO, QUISIERA PODER REALIZARLO CON SU AYUDA, SI NO ES MOLESTIA. GRACIAS*/
drop trigger trg_control_salario;
delimiter //
create trigger trg_control_salario
after update on salario
for each row 
begin
insert into log_salario ( cd_puesto, nr_sequencia, vl_sueldo, camponuevo_campoanterior, nombre_accion, nombre_tabla, usuario, fecha_mod)
values (new.cd_puesto, new.nr_sequencia, concat ('Valor anterior: ', old.vl_sueldo, 'Valor actual: ', new.vl_sueldo) , 'update', 'salario' , current_user(), now());
end //
delimiter ;

update salario set vl_sueldo = 160000 where cd_puesto = 4;