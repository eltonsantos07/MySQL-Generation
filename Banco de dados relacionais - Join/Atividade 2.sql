create database db_pizzaria_legal;

use db_pizzaria_legal;

-- Criando a tabela de categorias

create table tb_categoria(

id bigint auto_increment,
produto varchar(50),
tamnaho varchar(50),
brinde varchar(50),
primary key (id)
);

-- Criando a tabela de Pizzas

create table tb_pizza(

pedido_id bigint auto_increment,
tipo varchar(50),
sabor varchar(50),
borda varchar(50),
acompanhamento varchar(50),
preco decimal(5,2),
pizza_id bigint,
primary key (pedido_id),
foreign key (pizza_id) references tb_categoria (id)
);

-- Inserindo dados na tabela Categoria

insert into tb_categoria (produto, tamanho, brinde) values ("Pizza", "Broto", "");
insert into tb_categoria (produto, tamanho, brinde) values ("Pizza", "Grande", "Refrigerante 2L");
insert into tb_categoria (produto, tamanho, brinde) values ("Esfiha", "Aberta", "Refrigerante lata 3500 ml");
insert into tb_categoria (produto, tamanho, brinde) values ("Esfiha", "Fechada", "");
insert into tb_categoria (produto, tamanho, brinde) values ("Salgados", "Pequeno", "");

-- Inserindo dados na tabela Pizza

insert into tb_pizza (tipo, sabor, borda, acompanhamento, preco, pizza_id) values ("Salgada", "Calabresa", "Catupiri", "Refrigerante 2L", 26.00, 1);
insert into tb_pizza (tipo, sabor, borda, acompanhamento, preco, pizza_id) values ("Doce", "Chocolate com morango", "Chocolate", "Sorvete 2L", 59.99, 2);
insert into tb_pizza (tipo, sabor, borda, acompanhamento, preco, pizza_id) values ("Doce", "Chocolate com M&M's", "", "Refrigerante 250 ml", 22.99, 3);
insert into tb_pizza (tipo, sabor, borda, acompanhamento, preco, pizza_id) values ("Salgado", "Presunto e queijo", "", "Refrigerante lata 350 ml", 26.00, 5);
insert into tb_pizza (tipo, sabor, borda, acompanhamento, preco, pizza_id) values ("Salgada", "Frango com Catupiri", "", "", 8.00, 4);
insert into tb_pizza (tipo, sabor, borda, acompanhamento, preco, pizza_id) values ("Doce", "Brócolis", "Cheddar", "", 49.99, 2);
insert into tb_pizza (tipo, sabor, borda, acompanhamento, preco, pizza_id) values ("Salgada", "Carne", "Catupiri", "Refrigerante 2L", 29.99, 1);
insert into tb_pizza (tipo, sabor, borda, acompanhamento, preco, pizza_id) values ("Salgada", "Prtuguesa", "Cheddar", "Soevete 2L", 55.99, 2);

-- Produtos com valor maior que R$45,00

select * from tb_pizza where preco > 45;
