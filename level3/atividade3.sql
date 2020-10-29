create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
	id bigint auto_increment,
    nome varchar(255),
    publico varchar(255),
    primary key(id)
);

create table tb_curso(
	id bigint auto_increment,
    nome varchar(255),
    carga double,
    preco decimal(10,2),
    ativo boolean,
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria(nome, publico) values ("Culinária", "Adulto");
insert into tb_categoria(nome, publico) values ("Xadrez", "livre");
insert into tb_categoria(nome, publico) values ("Pintura", "Infantil");
insert into tb_categoria(nome, publico) values ("Crochê", "Idosos");

insert into tb_curso(nome, carga, preco, ativo, categoria_id) values ("Culinária Turca", 18, 120.00, true, 1);
insert into tb_curso(nome, carga, preco, ativo, categoria_id) values ("Culinária chinesa", 22, 180.00, true, 1);
insert into tb_curso(nome, carga, preco, ativo, categoria_id) values ("Jogadas avançadas", 6, 60.00, true, 2);
insert into tb_curso(nome, carga, preco, ativo, categoria_id) values ("Pintura com giz", 11, 70.00, true, 3);
insert into tb_curso(nome, carga, preco, ativo, categoria_id) values ("Bordando com dona Lulu", 10, 0.00, true, 4);

select * from tb_curso where preco > 50;
select * from tb_curso where preco >= 3 and preco <= 50;
select * from tb_curso where nome like "%Jav%";
select * from tb_curso inner join tb_categoria;
select * from tb_cursos where categoria_id = 1;

