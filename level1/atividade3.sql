create database db_escola;
use db_escola;

create table tb_turmas(
	id bigint auto_increment,
    turno varchar(256),
    primary key(id)
);

create table tb_alunos(
	id bigint auto_increment,
    nome varchar(256),
    idade int,
    turma_id bigint,
    nota decimal(2,2),
    foreign key(turma_id) references tb_turmas(id),
    primary key(id)
);

insert into tb_turmas(turno) values("Matutino");
insert into tb_turmas(turno) values("Vespertino");
insert into tb_turmas(turno) values("Noturno");

insert into tb_alunos(nome, idade, turma_id, nota) values ("Luiza", 19, 3, 10.00);
insert into tb_alunos(nome, idade, turma_id, nota) values ("Mateus", 22, 1, 3.00);
insert into tb_alunos(nome, idade, turma_id, nota) values ("Miguel", 19, 2, 7.10);

select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;

update tb_alunos set nota = 6.00 where id = 2;

