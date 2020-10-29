create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

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
    marca varchar(255),
    categoria_id bigint,
    foreign key (categoria_id) references tb_categoria(id),
    primary key(id)
);

insert into tb_categoria(nome, fornecedor) values ("Elétro", "Ricardo");
insert into tb_categoria(nome, fornecedor) values ("Hidráulica", "Luiz");
insert into tb_categoria(nome, fornecedor) values ("Ferramentas", "Alice");
insert into tb_categoria(nome, fornecedor) values ("Utensilios", "Alice");

insert into tb_produto(nome, preco, marca, categoria_id) values ("Chuveiro", 115.00, "Lorenzetti", 1);
insert into tb_produto(nome, preco, marca, categoria_id) values ("Cano", 2.00, "Tigre", 2);
insert into tb_produto(nome, preco, marca, categoria_id) values ("Chave de fenda", 19.00, "alguma", 3);
insert into tb_produto(nome, preco, marca, categoria_id) values ("Cadeado", 17.00, "shield", 4);

select * from tb_produto where preco > 50;
select * from tb_produto where preco >= 3 and preco <= 60;
select * from tb_produto where nome like "%cl%";
select * from tb_produto inner join tb_categoria;
select * from tb_produto where categoria_id = 2;
