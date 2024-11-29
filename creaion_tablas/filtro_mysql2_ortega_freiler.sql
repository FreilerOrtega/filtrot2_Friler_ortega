create database filtro_t2_ortega_freiler;

use filtro_t2_ortega_freiler;

create table departamento (
id_departamento int (10) primary key,
nombre varchar (50)
);


create table curso_escolar (
id_curso_escolar int (10) primary key,
anyo_inicio year (4),
anyo_fin year (4)
);

create table grado (
id_grado int (10) primary key auto_increment ,
nombre varchar(100)

);

create table alumno (
id_alumno int(10) primary key ,
nif varchar (9),
nombre varchar (25),
apellido varchar (50),
apellid2 varchar (50),
ciudad varchar (25),
direccion varchar (50),
telefono varchar (9),
fecha_nacimiento date, 
sexo enum('H','M')
);


create table profesor(
id_profesor int (10) primary key,
nif varchar (19) ,
nombre varchar (25),
apellido varchar (50),
apellid2 varchar (50),
ciudad varchar (25),
direccion varchar (50),
telefono varchar (9),
fecha_nacimiento date, 
sexo enum('H','M'),
id_departamento int (10),
foreign key (id_departamento) references departamento (id_departamento)
);



create table asignatura (
id_asignatura int (10) primary key ,
nombre varchar (100),
creditos float, 
tipo enum('basica','obligatoria','optativa'),
curso tinyint (3),
cuatrimestre tinyint(3),
id_profesor int (10),
id_grado int (10),
foreign key (id_profesor) references profesor(id_profesor),
foreign key (id_grado) references grado(id_grado)
);





create table alumno_se_matricula_asignatura(
id_alumno int  (10) ,
id_asignatura int (10),
id_curso_escolar int (10),
foreign key (id_alumno) references alumno (id_alumno),
foreign key (id_asignatura) references asignatura (id_asignatura),
foreign key (id_curso_escolar) references curso_escolar (id_curso_escolar)

);




