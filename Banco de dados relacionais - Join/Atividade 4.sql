create database db_cidade_das_frutas;

use db_cidade_das_frutas;

-- Criar a tabela Categoria

create table tb_categoria(
id bigint(5) auto_increment,
tipo varchar(20),
agrotoxico boolean,
primary key (id)
);

-- Criar a tabela Produto

create table tb_produto(
id bigint(5) auto_increment,
nome varchar(50),
preco decimal(3,2),
qtEstoque int(3),
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references tb_categoria (id)
);

-- Inserir dados na tabela Categoria

insert into tb_categoria (tipo, agrotoxico) values ("Fruta", true);
insert into tb_categoria (tipo, agrotoxico) values ("Verdura", true);
insert into tb_categoria (tipo, agrotoxico) values ("Verdura", false);
insert into tb_categoria (tipo, agrotoxico) values ("Legume", true);
insert into tb_categoria (tipo, agrotoxico) values ("Legume", false);

-- Inserir dados na tabela Produto

insert into tb_produto (nome, preco, qtEstoque, id_categoria) values ("Banana Prata", 2.99, 50, 1);
insert into tb_produto (nome, preco, qtEstoque, id_categoria) values ("Melancia", 9.99, 14, 1);
insert into tb_produto (nome, preco, qtEstoque, id_categoria) values ("Alface Americana", 1.99, 22, 2);
insert into tb_produto (nome, preco, qtEstoque, id_categoria) values ("Batata", 6.99, 47, 5);
insert into tb_produto (nome, preco, qtEstoque, id_categoria) values ("Cenoura", 3.49, 32, 4);
insert into tb_produto (nome, preco, qtEstoque, id_categoria) values ("Couve", 4.39, 18, 3);
insert into tb_produto (nome, preco, qtEstoque, id_categoria) values ("Goiaba", 3.79, 21, 1);
insert into tb_produto (nome, preco, qtEstoque, id_categoria) values ("Mandioca", 7.99, 12, 4);

-- Produtos com preco maior que R$50,00

select * from tb_produto where preco > 50.00;

-- Produtos com preço entre R$3,00 e R$60,00

select * from tb_produto where preco between 3 and 60;

-- Produtos que tenham a letra 'C' no nome

select * from tb_produto where nome like "%C%";

-- Inner Join das duas tabelas

SELECT 
    tb_categoria.tipo,
    tb_categoria.agrotoxico,
    nome,
    preco,
    qtEstoque
FROM
    tb_produto
        INNER JOIN
    tb_categoria ON tb_produto.id_categoria = tb_categoria.id;

-- Produtos que são frutas

select * from tb_produto where id_categoria = 1;
