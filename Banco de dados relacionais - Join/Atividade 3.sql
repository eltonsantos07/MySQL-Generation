create database db_farmacia_do_bem;

use db_farmacia_do_bem;

-- Crair a tabela Categoria

create table tb_categoria(

id bigint(5) auto_increment,
secao varchar(50),
tipo varchar(50),
primary key (id)
);

-- Criar a tabela Produto
create table tb_produto(

id bigint(5) auto_increment,
marca varchar(50),
nome varchar(50),
descricao varchar(100),
preco decimal(5,2),
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references tb_categoria (id)
);

-- Inserir dados na tabela Categoria

insert into tb_categoria (secao, tipo) values ("Cosméticos", "Outros");
insert into tb_categoria (secao, tipo) values ("Analgésicos", "Comprimidos/Líquidos");
insert into tb_categoria (secao, tipo) values ("Antibióticos", "Comprimidos");
insert into tb_categoria (secao, tipo) values ("Higiene Pessoal", "Outros");
insert into tb_categoria (secao, tipo) values ("Vitaminas", "Comprimidos");

-- Inserir dados na tabela Produto

insert into tb_produto (marca, nome, descricao, preco, id_categoria) values ("EMS", "Dipirona", "Dipirona em gotas (Genérico", 3.99, 2);
insert into tb_produto (marca, nome, descricao, preco, id_categoria) values ("Libbs", "Umiditá Rosto", "Hidratante p/ rosto 50 mL", 69.99, 1);
insert into tb_produto (marca, nome, descricao, preco, id_categoria) values ("EMS", "Amoxicilina", "Comprimido (Genérico)", 16.69, 3);
insert into tb_produto (marca, nome, descricao, preco, id_categoria) values ("Natulab", "ViterC", "Vitamina C 1g - 10 comprimidos", 5.19, 5);
insert into tb_produto (marca, nome, descricao, preco, id_categoria) values ("TRESemmé", "Kit TRESemmé", "Shampoo e condicionador p/ cabelos lisos", 14.24, 4);
insert into tb_produto (marca, nome, descricao, preco, id_categoria) values ("Laby", "Manteiga de Cacau", "Hidratante labial FPS8", 1.99, 1);
insert into tb_produto (marca, nome, descricao, preco, id_categoria) values ("Uci-Farma", "Uciclav", "Amoxicilina + Clavunato de Potássio", 3.99, 3);
insert into tb_produto (marca, nome, descricao, preco, id_categoria) values ("Darrow", "Actine Sabonete", "Produto p/ rosto", 40.59, 1);

-- Produtos com preço maior que R$50,00

select * from tb_produto where preco > 50.00;

-- Produtos com preço entre R$3,00 3 R$60,00

select * from tb_produto where preco between 3.00 and 60.00;

-- Produtos que possuem a letra 'B' no nome

select * from tb_produto where nome like "%B%";

-- Inner Join entre as duas tabelas

select tb_categoria.secao, tb_categoria.tipo, marca, nome, descricao, preco from tb_produto inner join tb_categoria on tb_produto.id_categoria = tb_categoria.id;

-- Produtos que são da seção de cosméticos

select * from tb_produto where id_categoria = 1;
