create database concurso_publico;
use concurso_publico;

create table cargos (
	id int,
    nome varchar (45),
    primary key (id)
);

create table concursos (
	id int,
    data date,
    nome varchar(45),
    primary key (id)
);

create table candidatos (
	id int,
    nome varchar(45),
    sobrenome varchar(45),
    cpf char(11),
    telefone char(15),
    email varchar(60),
    primary key (id)
);

create table inscricao (
	codigo_incricao varchar(8),
    id_cargo int,
    id_concurso int,
    id_candidato int,
    primary key(id_cargo, id_concurso, id_candidato),
    foreign key(id_cargo) references cargos(id),
    foreign key(id_concurso) references concursos(id),
    foreign key(id_candidato) references candidatos(id)
);

insert into cargos values (1, " medico ");

insert into concursos values (1, 19830517, " enem ");

insert into candidatos values (1, "kayky", "de souza", 43256790854, 24998638035, "kayky.souza@gmail.com");

select * from cargos;
select * from concursos;
select * from candidatos;

drop database concurso_publico;