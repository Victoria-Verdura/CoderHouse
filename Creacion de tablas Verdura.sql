create schema Victoria; 

use Victoria;
create table if not exists PERSONA (
nr_dni	INT,
cd_cod_persona	INT,
nm_nombre TEXT,
nm_seg_nombre text,
nm_apellido text,
dt_nacimiento	DATE,
cd_edad	INT,
ds_sexo	TEXT,
nr_telefono	INT,
ds_direccion VARCHAR (90),
cd_numero	INT,
cd_postal	INT,
ds_ciudad	TEXT,
ds_provincia	TEXT,
cd_establecimiento	INT,
ie_empleado	BOOLEAN,
ds_email	VARCHAR (90),
primary key (cd_cod_persona)
);

create table if not exists EMPLEADOS(
cd_cod_persona int,
nr_legajo int,
cd_puesto int,
dt_inicio date,
dt_fin date,
primary key  (nr_legajo),
foreign key (cd_cod_persona) references persona (cd_cod_persona)
);
alter table empleados add foreign key(cd_puesto) references puesto (cd_puesto);

use victoria;


create table if not exists ESTABLACIMIENTO(
cd_establecimiento INT ,
nm_establecimiento TEXT,
cd_cuit INT ,
cd_tipo INT,
nr_telefono INT, 
ds_direccion VARCHAR (90),
cd_postal INT,
ds_ciudad TEXT,
ds_provincia TEXT,
ds_email VARCHAR (90),
primary key (cd_establecimiento)
);

create table if not exists SALARIO (
cd_puesto	INT,
nr_sequencia INT,
vl_sueldo	DECIMAL,
vl_presentismo	DECIMAL,
vl_adicional	DECIMAL,
vl_horas_extras	DECIMAL,
vl_jubilacion	DECIMAL,
vl_obra_social	DECIMAL,
primary key (nr_sequencia),
foreign key (cd_puesto) references puesto (cd_puesto)
);

create table if not exists PUESTO (
cd_puesto int,
nm_puesto text,
cd_establecimiento	INT,
nr_piso	INT,
primary key (cd_puesto),
foreign key (cd_establecimiento) references establAcimiento (cd_establecimiento)
);

alter  table establacimiento rename ESTABLECIMIENTO;