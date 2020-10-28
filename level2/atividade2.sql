create database db_ecommerce;
use db_ecommerce;

create table tb_categorias(
	id bigint auto_increment,
    nome varchar(256),
    ativo boolean,
    primary key(id)
);

create table tb_produto(
	id bigint auto_increment,
    nome varchar(256),
    marca varchar(256),
    preco decimal(10,2),
    cor varchar(256),
    categoria_id bigint,
    foreign key (categoria_id) references tb_categorias(id),
    primary key(id)
);

insert into tb_categorias(nome, ativo) values("Eletônicos", true);
insert into tb_categorias(nome, ativo) values("Games", true);
insert into tb_categorias(nome, ativo) values("Quadriinhos", true);
insert into tb_categorias(nome, ativo) values("Roupas", true);
insert into tb_categorias(nome, ativo) values("Action Figures", true);

insert into tb_produto(nome, marca, preco, cor, categoria_id) values("Nintendo Switch", "Nintendo", 2900.00, "preto", 2);
insert into tb_produto(nome, marca, preco, cor, categoria_id) values("Fone de ouvido", "Beats", 60.00, "vermelho", 1);
insert into tb_produto(nome, marca, preco, cor, categoria_id) values("Sandman", "Nintendo", 400.00, "colorido", 3);
insert into tb_produto(nome, marca, preco, cor, categoria_id) values("Moletom", "loja.descealetra.com.br", 200.00, "preto", 4);
insert into tb_produto(nome, marca, preco, cor, categoria_id) values("Maito Gai", "J-Toy", 2600.00, "colorido", 5);

select * from tb_produto where preco > 2000;
select * from tb_produto where preco < 2000;

select * from tb_produto where nome like "%C%";