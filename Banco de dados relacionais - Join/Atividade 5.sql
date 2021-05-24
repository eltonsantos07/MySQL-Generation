create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

-- Criar a tabela Categoria

create table tb_categoria(
id bigint(5) auto_increment,
secao varchar(30),
disponibilidade boolean,
primary key (id)
);

-- Criar tabela Produto

create table tb_produto(
id bigint(5) auto_increment,
nome varchar(50),
descricao varchar(50),
preco decimal(5,2),
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references tb_categoria (id)
);

-- Inserir dados na tabela Categoria

insert into tb_categoria (secao, disponibilidade) values ("Hidráulica", true);
insert into tb_categoria (secao, disponibilidade) values ("Elétrica", true);
insert into tb_categoria (secao, disponibilidade) values ("Estrutura", true);
insert into tb_categoria (secao, disponibilidade) values ("Portas e Janelas", false);
insert into tb_categoria (secao, disponibilidade) values ("Cerâmicas", true);

-- Inserir dados na tabela Produto

insert into tb_produto (nome, descricao, preco, id_categoria) values ("Caixa D'água - Fortlev", "1000L", 239.99, 1);
insert into tb_produto (nome, descricao, preco, id_categoria) values ("Porta Sanfonada - Portech", "Cores Brana e Preta", 49.99, 4);
insert into tb_produto (nome, descricao, preco, id_categoria) values ("Torneira p/ pia - Hidrosun", "Acabamento inox", 27.99, 1);
insert into tb_produto (nome, descricao, preco, id_categoria) values ("Eletroduto", "3/4", 59.99, 2);
insert into tb_produto (nome, descricao, preco, id_categoria) values ("Mictório - Mondialle", "Cor: Cinza", 179.99, 5);
insert into tb_produto (nome, descricao, preco, id_categoria) values ("Cimento Votoran", "50 kg", 28.50, 3);
insert into tb_produto (nome, descricao, preco, id_categoria) values ("Massa Corrida", "Hidronorth (25 kg)", 29.50, 3);
insert into tb_produto (nome, descricao, preco, id_categoria) values ("Lâmpada Led", "9W", 2.99, 2);

-- Produtos com preco maior que R$50,00

select * from tb_produto where preco > 50;

-- Produtos com preco entre R$3,00 e 60,00

select * from tb_produto where preco between 3 and 60;

-- Inner Join das duas tabelas

SELECT 
    tb_categoria.secao,
    tb_categoria.disponibilidade,
    nome,
    descricao,
    preco
FROM
    tb_produto
        INNER JOIN
    tb_categoria ON tb_produto.id_categoria = tb_categoria.id;
    
-- Todos os produtos que são da seção elétrica

select nome from tb_produto where id_categoria = 2;