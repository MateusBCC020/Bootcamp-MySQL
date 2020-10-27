create database db_loja;
use db_loja;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar(256),
    preco decimal(10,2),
    marca varchar(256),
    validade date,
    primary key(id)
);

insert into tb_produtos(nome, preco, marca, validade) values("Caderno", 501.00, "Tilibra", 20250722);
insert into tb_produtos(nome, preco, marca, validade) values("Caixa de lápis", 39.90, "Faber Casttel", 20241112);

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set preco = 29.99 where id = 1;