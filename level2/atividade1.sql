create database db_RH2;
use db_RH2;

create table tb_cargo(
	id bigint auto_increment,
    nome varchar(256),
    setor varchar(256),
    carga_horaria time,
    primary key(id)
);

create table tb_funcionario(
	id bigint auto_increment,
    nome varchar(256),
    idade int,
    salario decimal(10,2),
    turno varchar(256),
    cargo_id bigint,
    foreign key (cargo_id) references tb_cargo(id),
    primary key(id)
);

insert into tb_cargo(nome, setor, carga_horaria) values("Desenvolvedor Jr", "TI", "40:00");
insert into tb_cargo(nome, setor, carga_horaria) values("Desenvolvedor Pleno", "TI", "40:00");
insert into tb_cargo(nome, setor, carga_horaria) values("Desenvolvedor Sênior", "TI", "40:00");
insert into tb_cargo(nome, setor, carga_horaria) values("Gerente", "ADM", "40:00");
insert into tb_cargo(nome, setor, carga_horaria) values("Auxiliar administrativo", "ADM", "48:00");

insert into tb_funcionario(nome, idade, salario, turno, cargo_id) values("Mateus", 22, 12.00, "Matutino", 5);
insert into tb_funcionario(nome, idade, salario, turno, cargo_id) values("Anderson", 23, 3500.00, "Noturno", 1);
insert into tb_funcionario(nome, idade, salario, turno, cargo_id) values("Guilherme", 20, 6000.00, "Matutino", 4);
insert into tb_funcionario(nome, idade, salario, turno, cargo_id) values("Cristina", 24, 5000.00, "Vespertino", 2);
insert into tb_funcionario(nome, idade, salario, turno, cargo_id) values("Cintia", 24, 10000.00, "Vespertino", 3);

select * from tb_funcionario where salario > 2000.00;
select * from tb_funcionario where salario > 1000.00 and salario < 2000;

select * from tb_funcionario where nome like "%Cr%";

update tb_funcionario set salario = 1200.00 where id = 1;
