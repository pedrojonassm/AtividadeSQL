create database semnome;
GRANT ALL ON semnome.* TO 'batman'@'localhost';

use semnome;

create table Empregado(
	matricula int primary key auto_increment,
    nome varchar(100) not null,
    endereco varchar(255),
    salario int not null,
    supervisor int,
    depto int
);


create table Departamento(
	coddep int primary key not null,
    nome varchar(100) not null,
    gerente int,
    dataini varchar(255)
);

create table Projeto(
	codproj int primary key not null auto_increment,
    nome varchar(255) not null,
    local varchar(255),
    depart int
);

create table Alocacao(
	matric int,
    codigop int,
    horas int,
    primary key (matric, codigop)
);

create table Dependente(
	coddepend int primary key not null auto_increment,
    matricula int,
    nome varchar(100),
    sexo char
);

ALTER TABLE Empregado
  ADD CONSTRAINT oSupervisor FOREIGN KEY (supervisor)
    REFERENCES Empregado (matricula)
    ON DELETE restrict,
  ADD CONSTRAINT odepto FOREIGN KEY (depto)
    REFERENCES Departamento (coddep)
    ON DELETE restrict;


alter table Departamento
	add constraint ger foreign key (gerente)
	references Empregado (matricula)
    on delete cascade;

alter table projeto
	add constraint depto foreign key (depart)
    references Departamento (coddep);


