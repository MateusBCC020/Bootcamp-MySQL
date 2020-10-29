use db_ecommerce;

select tb_produto.nome, tb_produto.preco, tb_produto.marca, tb_categorias.* from tb_produto
	inner join tb_categorias on tb_categorias.id = tb_produto.categoria_id;
    
select tb_produto.*, tb_categorias.nome from tb_produto
    inner join tb_categorias on tb_categorias.id = tb_produto.categoria_id
    where tb_categorias.nome like "%n%" and tb_produto.preco < 1000.00