drop database mus;
create database mus;
use mus;

create table jugador(
	nombre varchar(10) not null,
	contrasena varchar(10) not null, 
	edad int, 
	primary key(nombre)
);

create table partida(
	id int not null auto_increment,
	ganador1 varchar(10) not null,
	ganador2 varchar(10) not null,
	jugador3 varchar(10) not null,
	jugador4 varchar(10) not null,
	FOREIGN KEY(ganador1) REFERENCES jugador(nombre),
	FOREIGN KEY(ganador2) REFERENCES jugador(nombre),
	FOREIGN KEY(jugador3) REFERENCES jugador(nombre),
	FOREIGN KEY(jugador4) REFERENCES jugador(nombre),
	primary key(id)
);
	
insert into jugador values ('fernando','roman',20);
insert into jugador values ('sergi','lopez',23);
insert into jugador values ('ori','ramirez',23);
insert into jugador values ('albert','raventos',23);

insert into partida values (null,'fernando','sergi','ori','albert');