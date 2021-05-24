create database db_pizzaria_legal;

use db_pizzaria_legal;

-- Criando a tabela de categorias

create table tb_categoria(

id bigint auto_increment,
produto varchar(50),
tamanho varchar(50),
tipo varchar(50),
primary key (id)
);

-- Criando a tabela de Pizzas

create table tb_pizza(

id bigint auto_increment,
sabor varchar(50),
borda varchar(50),
acompanhamento varchar(50),
preco decimal(5,2),
entrega varchar(50),
id_pizza bigint,
primary key (id),
foreign key (id_pizza) references tb_categoria (id)
);

-- Inserindo dados na tabela Categoria

insert into tb_categoria (produto, tamanho, tipo) values ("Pizza", "Broto", "Salgada");
insert into tb_categoria (produto, tamanho, tipo) values ("Pizza", "Grande", "Salgada");
insert into tb_categoria (produto, tamanho, tipo) values ("Pizza", "Broto", "Doce");
insert into tb_categoria (produto, tamanho, tipo) values ("Pizza", "Grande", "Doce");
insert into tb_categoria (produto, tamanho, tipo) values ("Esfiha", "Aberta", "Salgada");

-- Inserindo dados na tabela Pizza

insert into tb_pizza (sabor, borda, acompanhamento, preco, entrega, id_pizza) values ("Calabresa", "Catupiri", "Refrigerante 2L", 26.99, "No local", 1);
insert into tb_pizza (sabor, borda, acompanhamento, preco, entrega, id_pizza) values ("Chocolate com morango", "Chocolate", "Sorvete 2L", 59.99, "P/ Entrega", 4);
insert into tb_pizza (sabor, borda, acompanhamento, preco, entrega, id_pizza) values ("Chocolate com M&M's", "Chocolate branco", "Refrigerante 250 ml", 22.99, "P/ Entrega", 3);
insert into tb_pizza (sabor, borda, acompanhamento, preco, entrega, id_pizza) values ("Presunto e queijo", "", "Refrigerante lata 350 ml", 14.99, "No local", 5);
insert into tb_pizza (sabor, borda, acompanhamento, preco, entrega, id_pizza) values ("Frango com Catupiri", "", "", 8.00, "No local", 5);
insert into tb_pizza (sabor, borda, acompanhamento, preco, entrega, id_pizza) values ("Brócolis", "Cheddar", "Refrigerante 2L", 49.99, "P/ Entrega", 2);
insert into tb_pizza (sabor, borda, acompanhamento, preco, entrega, id_pizza) values ("Carne", "Catupiri", "Refrigerante 2L", 29.99, "No local", 1);
insert into tb_pizza (sabor, borda, acompanhamento, preco, entrega, id_pizza) values ("Portuguesa", "Cheddar", "Sorvete 2L", 55.99, "P/ Entrega", 2);

-- Produtos com valor maior que R$45,00

select * from tb_pizza where preco > 45;

-- Produtos com valor entre R$29,00 e R$60,00

select * from tb_pizza where preco between 29.00 and 60.00;

-- Produtos com a letra 'C' no sabor

select * from tb_pizza where sabor like "%c%";

-- Inner Join entre as duas tabelas

select tb_categoria.produto, tb_categoria.tamanho, tb_categoria.tipo, sabor, borda, acompanhamento, preco, entrega from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id_pizza;

-- Todos os produtos que são pizza salgada

select * from tb_pizza where id_pizza in (1,2);