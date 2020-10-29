create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
	id bigint auto_increment,
    nome varchar(255),
    fornecedor varchar(255),
	primary key(id)
);

create table tb_produto(
	id bigint auto_increment,
    nome varchar(255),
    preco decimal(10,2),
    peso float,
    categoria_id bigint,
    foreign key (categoria_id) references tb_categoria(id),
    primary key(id)
);

insert into tb_categoria(nome, fornecedor) values("Bovino", "Rancho vaca loka");
insert into tb_categoria(nome, fornecedor) values("Suino", "Fazenda do zé");
insert into tb_categoria(nome, fornecedor) values("Aves", "Rancho do Jão");

insert into tb_produto(nome, preco, peso, categoria_id) values("Alcatra", "29.90", "1", 1);
insert into tb_produto(nome, preco, peso, categoria_id) values("Maminha", "29.90", "1", 1);
insert into tb_produto(nome, preco, peso, categoria_id) values("Peito de peru", "69.90", "1", 3);
insert into tb_produto(nome, preco, peso, categoria_id) values("Filé de frango", "19.90", "1", 3);
insert into tb_produto(nome, preco, peso, categoria_id) values("Patinho", "19.90", "1", 1);
insert into tb_produto(nome, preco, peso, categoria_id) values("Costela de porco", "29.90", "1", 2);

select * from tb_produto where preco > 50;
select * from tb_produto where preco <= 3 and preco <= 60 ;
select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria;

select * from tb_produto where categoria_id = 3;
