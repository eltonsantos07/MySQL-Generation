create database db_recursosHumanos;

use db_recursosHumanos;

-- Criando a tabela
create table tb_funcionaries(

id int auto_increment,
nome varchar (50),
idade int (2),
setor varchar (50),
cargo varchar (50),
salario decimal (7,2),
primary key (id)
);

-- Inserindo os dados na tabela
insert into tb_funcionaries (nome, idade, setor, cargo, salario) values ("Elton", 20, "Tecnologia da Informação", "Desenvolvedor Full-Stack", 4500.00);
insert into tb_funcionaries (nome, idade, setor, cargo, salario) values ("Joaquina", 29, "Segurança", "Vigilante Diurno", 2100.00);
insert into tb_funcionaries (nome, idade, setor, cargo, salario) values ("Mário", 19, "Administração", "Recepcionista", 1900.00);
insert into tb_funcionaries (nome, idade, setor, cargo, salario) values ("Michele", 28, "Tecnologia da Informação", "Desenvolvedora Front-End", 3900.00);
insert into tb_funcionaries (nome, idade, setor, cargo, salario) values ("Rodrigo", 24, "Tecnologia da Informação", "Desenvolvedor Back-End", 3900.00);

-- Mostra a tabela completa
select * from tb_funcionaries;

-- Mostrar funcionários com salário maior que R$2000.00
select * from tb_funcionaries where salario > 2000;

-- Mostrar funcionários com salário menor que R$2000.00
select * from tb_funcionaries where salario < 2000;

-- Atualizar um dado na tabela
update tb_funcionaries set salario = 1950.00 where id = 2;

-- Mostra a tabela completa após a atualização
select * from tb_funcionaries;

-- Mostrar funcionários com salário maior que R$2000.00 após a atualização
select * from tb_funcionaries where salario > 2000;

-- Mostrar funcionários com salário menor que R$2000.00 após a atualização
select * from tb_funcionaries where salario < 2000;