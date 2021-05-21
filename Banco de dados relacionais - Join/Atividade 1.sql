create database db_generation_game_online;

use db_generation_game_online;

-- Criando a tabela de classificação dos personagens

create table tb_classe(

id bigint(2) auto_increment,
categoria varchar(20),
habilidade_especial boolean,
tribo varchar(20),
primary key (id)
);

-- Criando a tabela de personagens

create table tb_personagem(

id bigint(2) auto_increment,
nome varchar(20),
ataque int(5),
defesa int(5),
nivel int(3),
xp int(5),
classe_id bigint(2),
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

-- Inserindo dados na tabela Classes

insert into tb_classe (categoria, habilidade_especial, tribo) values ("Mago", true, "Água");
insert into tb_classe (categoria, habilidade_especial, tribo) values ("Escudeira", false, "Terra");
insert into tb_classe (categoria, habilidade_especial, tribo) values ("Arqueira", false, "Relampago");
insert into tb_classe (categoria, habilidade_especial, tribo) values ("Cavaleiro", false, "Terra");
insert into tb_classe (categoria, habilidade_especial, tribo) values ("Feiticeira", true, "Ar");

-- Inserindo daddos na tabela Personagens

insert into tb_personagem  (nome, ataque, defesa, nivel, xp, classe_id) values ("Darksoul", 1900, 2800, 7, 7600, 1);
insert into tb_personagem  (nome, ataque, defesa, nivel, xp, classe_id) values ("Spirit", 4700, 4000, 14, 14900, 3);
insert into tb_personagem  (nome, ataque, defesa, nivel, xp, classe_id) values ("Harck", 3200, 8000, 15, 15100, 2);
insert into tb_personagem  (nome, ataque, defesa, nivel, xp, classe_id) values ("Glor", 3500, 1900, 7, 7400, 5);
insert into tb_personagem  (nome, ataque, defesa, nivel, xp, classe_id) values ("Evan", 10000, 5300, 20, 2020, 4);
insert into tb_personagem  (nome, ataque, defesa, nivel, xp, classe_id) values ("Taylor", 1500, 5400, 10, 10730, 2);
insert into tb_personagem  (nome, ataque, defesa, nivel, xp, classe_id) values ("Clarck", 7000, 6800, 18, 18420, 3);
insert into tb_personagem  (nome, ataque, defesa, nivel, xp, classe_id) values ("Hans", 1200, 1800, 4, 3450, 2);

-- Personagens com poder de ataque menor que 2000

select * from tb_personagem where ataque > 2000;

-- Personagens com poder de defesa entre 1000 e 2000

select * from tb_personagem where defesa > 1000 and defesa < 2000;

-- Personagens que possuem a letra 'c' no nome

select * from tb_personagem where nome like "%c%";

-- Select com inner join

SELECT 
    tb_personagem.nome,
    tb_personagem.ataque,
    tb_personagem.defesa,
    tb_personagem.nivel,
    tb_personagem.xp,
    tb_classe.categoria,
    tb_classe.habilidade_especial,
    tb_classe.tribo
FROM
    tb_personagem
INNER JOIN
    tb_classe ON tb_classe.id = tb_personagem.classe_id;
    
    -- Selecionando todas arqueiras
    
    select (personagem) from tb_classe where classe_id = 3;