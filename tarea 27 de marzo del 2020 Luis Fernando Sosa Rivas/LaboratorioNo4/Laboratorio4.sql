use bd_ins;

create table Maestros
(
CodigoMaestro varchar(10) primary key,
NombreMaestro varchar(60),
DireccionMaestro varchar(60),
telefonoMaestro varchar(29),
CorreoElectronicoMaestro varchar(30),
EstatusMaestros varchar(1)
)engine=InnoDB;

create table estudiantes
(
CodigoCarne varchar(10) primary key,
NombreEstudiante varchar(60) not null,
TelefonoEstudiante varchar(20) not null,
CorreoElectronicoEstudiante varchar(30),
EstatusMaestro varchar(1)
)engine=InnoDB;