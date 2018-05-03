drop database Escola;
create database Escola;
use Escola;

create table Aluno(id_alu int PRIMARY KEY , nome_alu varchar(80) not null, date_nasc_alu DateTime not null,  email_alu varchar(80) not null, fone_alu varchar(14) not null, ender_alu varchar(100), cidade_alu varchar(20) not null);

create table Professor(id_prof int PRIMARY KEY , nome_prof varchar(80) not null, date_nasc_prof DateTime not null,  email_prof varchar(80) not null, fone_prof varchar(14) not null, ender_prof varchar(100), cidade_prof varchar(20) not null);

create table Aula(id_Aula int PRIMARY KEY, nome_materia varchar(30) not null, sala_aula varchar(30) not null, Id_aluno int, id_professor int);

alter table Aula add Id_aluno int;
alter table Aula add constraint fk_IDAluno foreign key (id_aluno) references Aluno (id_alu);
alter table Aula add constraint fk_IDProfessor foreign key (id_professor) references Professor (id_prof);