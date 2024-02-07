create database [escola de música]

use [escola de música]

drop database [escola de música]


create table aluno (
	id_aluno int identity(1,1) primary key not null,
	nome varchar(50) not null,
	id_professor int,
	foreign key (id_professor)
		references professor(id_professor)
)

create table professor (
	id_professor int identity(1,1) primary key not null,
	nome varchar(50) not null,
)

create table curso (
	id_curso int identity(1,1) primary key not null,
	id_instrumento int not null,
	nome varchar(50) not null,
	foreign key (id_instrumento)
		references instrumento(id_instrumento)
)

create table alunocurso (
	id_alunocurso int identity(1,1) primary key not null,
	id_aluno int not null,
	id_curso int not null
	foreign key (id_aluno)
		references aluno(id_aluno),
	foreign key (id_curso)
		references curso(id_curso)
)

create table professorcurso (
	id_professorcurso int identity(1,1) primary key not null,
	id_professor int not null,
	id_curso int not null,
	foreign key (id_professor)
		references professor(id_professor),
	foreign key (id_curso)
		references curso(id_curso)
)

create table competidor (
	id_competidor int identity(1,1) primary key not null,
	id_aluno int not null,
	id_professor int not null,
	id_competicao int not null,
	foreign key (id_aluno)
		references aluno(id_aluno),
	foreign key (id_professor)
		references professor(id_professor),
	foreign key (id_competicao)
		references competicao(id_competicao)
)

create table competicao (
	id_competicao int identity(1,1) primary key not null,
	modalidade varchar(50) not null
)

create table instrumento (
	id_instrumento int identity(1,1) primary key not null,
	nome varchar(50) not null,
	quantidade int
)

insert into aluno
(nome, id_professor)
values
('yasmim', 1)

insert into professorcurso
(id_professor, id_curso)
values
(1, 1)

select * from aluno
select * from professor
select * from professorcurso
select * from professor
select * from instrumento

delete from professor where id_professor = 2

insert into professor
(nome)
values
('dom')