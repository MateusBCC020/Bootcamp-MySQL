create database db_rh;
use db_rh;

create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(256)not null,
    cargo varchar(256),
    salario decimal(10,2),
    ativo boolean,
    primary key (id)
);

insert into tb_funcionarios(nome, cargo, salario, ativo) values("Matheus", "Estagiário", 1200.00, true);
insert into tb_funcionarios(nome, cargo, salario, ativo) values("Miguel", "Programador pleno", 6000.00, true);
insert into tb_funcionarios(nome, cargo, salario, ativo) values("Rose", "Estagiária", 1200.00, true);
insert into tb_funcionarios(nome, cargo, salario, ativo) values("Mônica", "Gerente", 6500.00, true);

select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario < 2000;

update tb_funcionarios set nome = "Mateus" where id = 1;