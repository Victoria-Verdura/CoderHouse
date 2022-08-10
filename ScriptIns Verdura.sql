use victoria;
insert into establacimiento (cd_establecimiento, nm_establecimiento, cd_cuit, nr_telefono, ds_direccion, cd_postal, ds_ciudad, ds_provincia, ds_email	)
 values (	1	,	'Sanatorio GO'	,	1112	,	15669871	,	'Galindo 2415'	,	2134	,	'Funes'	,	'Santa Fe'	,	'sanatorio@gmail.com'	);
commit;

insert into establacimiento (cd_establecimiento, nm_establecimiento, cd_cuit, nr_telefono, ds_direccion, cd_postal, ds_ciudad, ds_provincia, ds_email	)
values (	2	,	'Clinica GO'	,	17432789	,			15889762	,	'Cordoba 15'	,	2000	,	'Rosario'	,	'Santa Fe'	,	'clinica@gmail.com'	);
commit;

insert into establacimiento (cd_establecimiento, nm_establecimiento, cd_cuit, nr_telefono, ds_direccion, cd_postal, ds_ciudad, ds_provincia, ds_email	)
values (	3	,	'Clinica DMO' 	,	15986432	,			15678543	,	'Moreno 308'	,	2000	,	'Rosario'	,	'Santa Fe'	,	'dmo@gmail.com'	),	
(	4	,	'Urgencias CER' 	,	18765324	,			15876543	,	'Zeballos 2354'	,	2000	,	'Rosario'	,	'Santa Fe'	,	'cer@gmail.com'	);
commit;

insert into establacimiento (cd_establecimiento, nm_establecimiento, cd_cuit, nr_telefono, ds_direccion, cd_postal, ds_ciudad, ds_provincia, ds_email	)
values (	5	,	'Hospital Maternidad' 	,	12131489	,			15772132	,	'Ovideos Lagos 2890'	,	2000	,	'Rosario'	,	'Santa Fe'	,	'maternidad@gmail.com'	)	;
commit;

select * from establecimiento;

use victoria;
insert into persona (nr_dni, cd_cod_persona, nm_nombre, nm_seg_nombre, nm_apellido, dt_nacimiento, cd_edad	, ds_sexo	, nr_telefono, ds_direccion , cd_numero, cd_postal, ds_ciudad, ds_provincia, cd_establecimiento, ie_empleado	, ds_email)
values (41735948, 10, 'Victoria', 'Belen', 'Verdura', '1999-10-02', 23, 'Femenino', 13145353, 'Galindo', 2415, 2134, 'Funes', 'Santa Fe', 1, 1, 'verduravictoria@gmail.com'),
(39091447, 15, 'Rocio', 'Celeste', 'Magallanes', '1995-07-25', 27, 'Femenino', 164569813, 'Ovidio', 426, 2000, 'Rosario', 'Santa Fe', 2, 1, 'magallanesrocio@gmail.com'),
(14434811, 20, 'Graciela', 'Rita', 'Grosso', '1962-11-27', 60, 'Femenino', 15123555, 'Catamarca', 1818, 2134, 'Funes', 'Santa Fe', 3, 1, 'grossograciela@gmail.com'),
(40987123, 25, 'Valentina', 'Valeria', 'De Pascual', '1999-01-01', 23, 'Femenino', 12523333, 'Independencia', 22, 2132, 'Roldan', 'Santa Fe', 4, 1, 'valeriadepascual@gmail.com'),
(35555876, 30, 'Gloria', null , 'Gomez', '1990-12-31', 32, 'Femenino', 12889977, 'Cordoba', 1245, 2134, 'Funes', 'Santa Fe', 1, 1, 'gloriagomez@gmail.com'),
(14287090, 35, 'Marcelo', 'Andres', 'Rodriguez', '1960-09-09', 62, 'Masculino', 1675843, 'Elorza', 124, 2134, 'Funes', 'Santa Fe', 3, 1, 'marcelorodriguez@gmail.com'),
(27336664, 40, 'Florencia', 'Maria', 'Bourre', '1995-07-27', 27, 'Femenino', 1677654, 'Moreno', 789, 2000, 'Rosario', 'Santa Fe', 2, 1, 'florenciabourre@gmail.com'),
(27886543, 45, 'Nicolas', null , 'Perez', '1997-06-21', 25, 'Nicolas', 16897321, 'Oroño', 2354, 2000, 'Rosario', 'Santa Fe', 4, 1, 'nicolasperez@gmail.com');
commit;

select * from persona;

use victoria;
insert into puesto (cd_puesto ,nm_puesto ,cd_establecimiento	,nr_piso)
values (1, 'Admisión', 1, 0),
(2, 'Facturación', 1, 2),
(3, 'Encargado del sector', 1, 0),
(4, 'Recursos Humanos', 1 , 3),
(5, 'Contaduria', 1, 3),
(6, 'Admisión', 2, 0),
(7, 'Facturación', 2, 2),
(8, 'Encargado del sector', 2, 0),
(9, 'Recursos Humanos', 2 , 3),
(10, 'Contaduria', 2, 3),
(11, 'Admisión', 3, 0),
(12, 'Facturación', 3, 2),
(13, 'Encargado del sector', 3, 0),
(14, 'Recursos Humanos', 3 , 3),
(15, 'Contaduria', 3, 3),
(16, 'Admisión', 4, 0),
(17, 'Facturación', 4, 2),
(18, 'Encargado del sector', 4, 0),
(19, 'Recursos Humanos', 4 , 3),
(20, 'Contaduria', 4, 3),
(21, 'Admisión', 5, 0),
(22, 'Facturación', 5, 2),
(23, 'Encargado del sector', 5, 0),
(24, 'Recursos Humanos', 5 , 3),
(25, 'Contaduria', 5, 3);
commit;

select * from puesto;

use victoria;
insert into empleados (cd_cod_persona , nr_legajo , cd_puesto , dt_inicio , dt_fin)
values (10, 5, 2, '2021-12-01', null),
(15, 25, 3, '2021-09-01', null),
(20, 13, 1, '2019-01-05', null),
(25, 14, 1, '2022-08-01', null),
(30, 67, 2, '2021-12-01', null),
(35, 7, 4, '2021-12-01', null),
(40, 18, 3, '2021-12-01', null),
(45, 55, 4, '2021-12-01', null);
commit;

select * from empleados;

insert into salario ( cd_puesto	, nr_sequencia , vl_sueldo	, vl_presentismo	, vl_adicional	, vl_horas_extras	, vl_jubilacion	, vl_obra_social)
values ( 1,1,90000, 10000,12000, 800, '-1000', '-3000'),
(2,2,100000, 10000, 12000, 900, '-1100', '-4000'),
(3,3,150000, 11000, null, 1600, '1500', '8000'),
(4,4,150000, 11000, null, 1600, '1500', '8000'),
(5,5,110000, 10000, null, 1000, '-1000', '-3000');
commit;
update salario set vl_jubilacion = '-1500', vl_obra_social = '-8000' where nr_sequencia = 4;

select * from salario;
