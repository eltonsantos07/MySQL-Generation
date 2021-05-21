create database db_E_commerce;

use db_E_commerce;

-- Criando a tabela de dados
create table tb_produtos(

id int auto_increment,
setor varchar (255),
nomeProduto varchar (255),
marca varchar (255),
valor decimal (7,2),
quantidade int(3),
primary key (id)
);

-- Inserindo dados na tabela
insert into tb_produtos (setor, nomeProduto, marca, valor, quantidade) values("Tecnologia", "Notebook IdeaPad S145", "Lenovo", 3700.00, 18);
insert into tb_produtos (setor, nomeProduto, marca, valor, quantidade) values("Farmácia", "Dipirona em gotas", "Genérico", 8.00, 57);
insert into tb_produtos (setor, nomeProduto, marca, valor, quantidade) values("Móveis e decoração", "Cadeira escritório", "Inovation", 600.00, 14);
insert into tb_produtos (setor, nomeProduto, marca, valor, quantidade) values("Tecnologia", "Chromebook C7", "Acer", 1800.00, 23);
insert into tb_produtos (setor, nomeProduto, marca, valor, quantidade) values("Acessórios", "Fone de ouvido in-ear", "JBL", 70.00, 39);
insert into tb_produtos (setor, nomeProduto, marca, valor, quantidade) values("PetShop", "Sachê de frango", "Whiskas", 8.00, 80);
insert into tb_produtos (setor, nomeProduto, marca, valor, quantidade) values("Papelaria", "Pacote Sulfilte A4", "Seninha", 8.00, 45);
insert into tb_produtos (setor, nomeProduto, marca, valor, quantidade) values("Papelaria", "Lápis Grafite 2B", "Bic", 2.50, 100);

-- Mostrar toda a tabela
select * from tb_produtos;

-- Mostrar produtos com valor maior que R$500,00
select * from tb_produtos where valor > 500;

-- Mostrar produtos com valor menor que R$500,00
select * from tb_produtos where valor < 500;

-- Atualizando um dado na tabela
update tb_produtos set valor = 450.00 where id = 3;

-- Mostrar toda a tabela após a atualização
select * from tb_produtos;

-- Mostrar produtos com valor maior que R$500,00 após a atualização
select * from tb_produtos where valor > 500;

-- Mostrar produtos com valor menor que R$500,00 após a atualização
select * from tb_produtos where valor < 500;