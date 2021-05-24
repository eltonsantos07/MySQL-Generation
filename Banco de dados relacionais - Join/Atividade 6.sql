create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

-- Criar tabela Categoria

create table tb_categoria(
id bigint(5) auto_increment,
area varchar(50),
modalidade varchar(20),
primary key (id)
);

-- Criar tabela Curso

create table tb_curso(
id bigint(5) auto_increment,
nomeDoCurso varchar(50),
qtHoras int(3),
preco decimal(5,2),
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references tb_categoria (id)
);

-- Inserir dados na tabela Categoria

insert into tb_categoria (area, modalidade) values ("Administração", "EAD");
insert into tb_categoria (area, modalidade) values ("Tecnologia da Informação", "EAD");
insert into tb_categoria (area, modalidade) values ("Tecnologia da Informação", "Semipresencial");
insert into tb_categoria (area, modalidade) values ("Administração", "Presencial");
insert into tb_categoria (area, modalidade) values ("Tecnologia da Informação", "Presencial");

-- Inserindo dados na tabela Curso

insert into tb_curso (nomeDoCurso, qtHoras, preco, id_categoria) values ("Introdução a JAVA", 10, 14.99, 2);
insert into tb_curso (nomeDoCurso, qtHoras, preco, id_categoria) values ("Introdução ao Pacote Office", 34, 29.99, 1);
insert into tb_curso (nomeDoCurso, qtHoras, preco, id_categoria) values ("Desenvolvimento Web", 340, 499.00, 3);
insert into tb_curso (nomeDoCurso, qtHoras, preco, id_categoria) values ("Linguagem de programação JAVA (Avançado)", 40, 199.00, 5);
insert into tb_curso (nomeDoCurso, qtHoras, preco, id_categoria) values ("Microsoft Office - Do básico ao avançado", 90, 149.99, 4);
insert into tb_curso (nomeDoCurso, qtHoras, preco, id_categoria) values ("Desenvovimento Back-End", 250, 399.00, 2);
insert into tb_curso (nomeDoCurso, qtHoras, preco, id_categoria) values ("Microsoft Office - Do básico ao avançado", 90, 99.99, 1);
insert into tb_curso (nomeDoCurso, qtHoras, preco, id_categoria) values ("Introdução ao GIT e GITHUB", 10, 14.99, 2);

-- Cuesos com valor acima de R$50,00

select * from tb_curso where preco > 50.00;

-- Cursos com valor entre R$3,00 e R$60,00

select * from tb_curso where preco between 3.00 and 60.00;

-- Cursos que tenham a letra 'J' no nome

select * from tb_curso where nomeDoCurso like "%J%";

SELECT 
    tb_categoria.area,
    tb_categoria.modalidade,
    nomeDoCurso,
    qtHoras,
    preco
FROM
    tb_curso
        INNER JOIN
    tb_categoria ON tb_curso.id_categoria = tb_categoria.id;
    
    -- Todos os cursos de Tecnologia da Informação
    
    select nomeDoCurso from tb_curso where id_categoria in (2,3,5);