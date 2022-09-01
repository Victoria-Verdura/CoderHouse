use victoria;
#1era consigna
start transaction;
delete from puesto where cd_puesto = 25;
rollback;
#commit 

select * from puesto;

start transaction;
delete from puesto where cd_puesto = 24;
rollback;
#commit

/*insert into puesto (cd_puesto ,nm_puesto ,cd_establecimiento	,nr_piso)
(24, 'Recursos Humanos', 5 , 3),
(25, 'Contaduria', 5, 3);*/

#2da consigna
start transaction;
insert into persona (nr_dni, cd_cod_persona, nm_nombre, nm_seg_nombre, nm_apellido, dt_nacimiento	, ds_sexo	, nr_telefono, ds_direccion , cd_numero, cd_postal, ds_ciudad, ds_provincia, cd_establecimiento, ie_empleado	, ds_email)
values (14777897, 60, 'Camila', 'Lucia', 'Gonzales', '1998-10-02', 'Femenino', 13156778, 'Ruta 9', 325, 2132, 'Funes', 'Santa Fe', 1, 1, 'gonzalescamila@gmail.com'),
 (43123456, 65, 'Luciano', null , 'Herrera', '1997-10-03', 'Masculino', 13435768, 'Candelaria', 413, 2132, 'Funes', 'Santa Fe', 1, 1, 'herreraluciano@gmail.com'),
 (45323898, 70, 'Juan', 'Nicolas', 'Segovia', '1995-10-02', 'Masculino', 13154654, 'Independencia', 14, 2134, 'Roldan', 'Santa Fe', 1, 1, 'segovianicolas@gmail.com'),
 (44367389, 75, 'Carolina', null , 'Petrelli', '1998-10-10', 'Femenino', 13115689,'Montevideo', 345, 2132, 'Funes', 'Santa Fe', 1, 1, 'petrellicarolina@gmail.com');
savepoint punto_1;
insert into persona (nr_dni, cd_cod_persona, nm_nombre, nm_seg_nombre, nm_apellido, dt_nacimiento	, ds_sexo	, nr_telefono, ds_direccion , cd_numero, cd_postal, ds_ciudad, ds_provincia, cd_establecimiento, ie_empleado	, ds_email)
values (48354765, 80, 'Camilo', null , 'Morel', '1998-09-02', 'Masculino', 13345123, 'Suipacha', 2567, 2134, 'Funes', 'Santa Fe', 1, 1, 'morelcamilo@gmail.com'),
 (47897654, 85, 'Maria', 'Lucia', 'Cochet', '1995-08-05', 'Femenino', 13199654, 'Aconcagua', 55, 2134, 'Funes', 'Santa Fe', 1, 1, 'cochetmaria@gmail.com'),
 (45887232, 90, 'Julieta', null , 'Terai', '1996-01-12', 'Femenino', 13897634, 'San Jose', 7654, 2134, 'Funes', 'Santa Fe', 1, 1, 'teraijulieta@gmail.com'),
 (43657765, 95, 'Adrian', 'Andres', 'Petit', '1991-10-02', 'Masculino', 13175889, 'Elorza', 2298, 2134, 'Funes', 'Santa Fe', 1, 1, 'petitadrian@gmail.com');
savepoint punto_2;

select * from persona;

rollback to punto_1;
/*release savepoint punto_2;*/