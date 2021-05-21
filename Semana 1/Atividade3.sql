create database db_registroEscolar;

use db_registroEscolar;

create table tb_alunes(
id int auto_increment,
nome varchar (100),
turma varchar (2),
turno varchar(10),
disciplina varchar (100),
nota decimal (4,2),
primary key (id)
);

-- Inserir dados na tabela
insert into tb_alunes (nome, turma, turno, disciplina, nota) values ("Elton", "8A", "Diurno", "Matemática", 10.00);
insert into tb_alunes (nome, turma, turno, disciplina, nota) values ("Maria", "5H", "Vespertino", "Inglês", 7.87);
insert into tb_alunes (nome, turma, turno, disciplina, nota) values ("Ricardo", "9C", "Noturno", "Física", 9.45);
insert into tb_alunes (nome, turma, turno, disciplina, nota) values ("Mário", "3A", "Diurno", "Ciências", 2.03);
insert into tb_alunes (nome, turma, turno, disciplina, nota) values ("João", "8E", "Diurno", "Matemática", 8.43);
insert into tb_alunes (nome, turma, turno, disciplina, nota) values ("Rochelle", "7A", "Diurno", "Artes", 10.00);
insert into tb_alunes (nome, turma, turno, disciplina, nota) values ("Roberta", "6A", "Vespertino", "Educação Física", 4.3);
insert into tb_alunes (nome, turma, turno, disciplina, nota) values ("Jonatas", "7B", "Diurno", "Artes", 4.99);

-- Mostrar a tabela completa
select * from tb_alunes;

-- Mostra alunos com nota maior que 7
select * from tb_alunes where nota > 7.00;

-- Mostra alunos com nota menor que 7
select * from tb_alunes where nota < 7.00;

update tb_alunes set nota = 6.8 where id = 2;

-- Mostrar a tabela completa após atualização
select * from tb_alunes;

-- Mostra alunos com nota maior que 7após atualização
select * from tb_alunes where nota > 7.00;

-- Mostra alunos com nota menor que 7 após atualização
select * from tb_alunes where nota < 7.00;