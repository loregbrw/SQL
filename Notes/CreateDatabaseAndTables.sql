create database ets

use ets

create table Sala (
	id_sala int primary key not null,
	nome varchar(50) not null,
	capacidade int
)

create table Evento (
	id_evento int primary key not null,
	descricao varchar(200) not null,
	dh_inicio datetime not null,
	dh_fim datetime not null,
	id_sala int not null
	foreign key (id_sala)
		references sala(id_sala)
)

create table Equipamento (
	id_equipamento int primary key not null,
	nome varchar(50) not null,
	tipo varchar(50) not null,
	id_sala int not null,
	foreign key (id_sala)
		references sala(id_sala)
)

create table Pessoa (
	id_pessoa int primary key not null,
	nome varchar(50) not null,
	categoria varchar(50)
)


create table EventoPessoa (
	id_eventopessoa int primary key not null,
	id_pessoa int not null,
	id_evento int not null,
	statuspessoa bit not null,
	foreign key (id_pessoa)
		references pessoa(id_pessoa),
	foreign key (id_evento)
		references evento(id_evento)
)

create table EquipamentoEvento (
	id_equipamentoevento  int primary key not null,
	id_equipamento int not null,
	id_evento int not null,
	quantidade int not null,
	foreign key (id_equipamento)
		references equipamento(id_equipamento),
	foreign key (id_evento)
		references evento(id_evento)
)


insert into sala 
(id_sala, nome, capacidade)
values
(1, 'ETS', 21),
(2, 'ETS', 21)


select * from Sala
order by id_sala desc

select * from Equipamento 

delete from Sala where id_sala = 1