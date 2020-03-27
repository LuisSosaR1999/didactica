create database Planilla_bd;
use Planilla_bd;

create table conseptos_5981
(
codigo_consepto varchar(5) Primary key,
nombre_consepto varchar(60) not null,
efecto_consepto varchar(1) not null,
estatus_consepto varchar(1)
)engine=InnoDB;

create table nominad_5981
(
codigo_nomina varchar(5),
codigo_empleado varchar(5),
codigo_concepto varchar (5) ,
valor_nominaD float(10,2) ,
primary key (codigo_nomina,codigo_empleado,codigo_concepto),
foreign key(codigo_concepto) references conceptos_5981(codigo_concepto),
foreign key(codigo_comina) references nominaD_5981(codigo_nomina),
foreign key(codigo_empleado) references empleado_5981(codigo_empleado)

)engine=InnoDB default charset=latin1;

create table nominae_5981
(
codigo_nomina varchar(5) primary key,
fecha_inicial_nomina Date,
fecha_final_nomina Date
)engine=InnoDB;

create table empleado_5981
(
codigo_empleado varchar(5) primary key,
nombre_empleado varchar(60) not null,
codigo_puesto varchar(5) not null,
codigo_departamento varchar(5) not null,
sueldo_empleado float(10,2),
estatus_empleado varchar(1),

foreign key (codigo_puesto) references puesto(codigo_puesto),
foreign key (codigo_departamento) references departamento (codigo_departamento)

)engine=InnoDB default charset=latin1;

create table departamento_5981
(
codigo_departamento varchar (5) primary key,
nombre_departamento varchar (60) not null,
estatus_departamento varchar(1) 
)engine=InnoDB;

create table puesto_5981
(
codigo_puesto varchar(5) primary key,
nombre_puesto varchar(60) not null,
estatus_puesto varchar(1)
)engine=InnoDB;