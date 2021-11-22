/*Atividade 1
Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.

O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.

siga exatamente esse passo a passo:

Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos
relevantes da classe para se trabalhar com o serviço desse game Online.

Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionários para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).

Popule esta tabela classe com até 5 dados.

Popule esta tabela personagem com até 8 dados.

Faça um select que retorne os personagens com o poder de ataque maior do que 2000.

Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.

Faça um select utilizando LIKE buscando os personagens com a letra C.

Faça um um select com Inner join entre tabela classe e personagem.

Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros).
*/
create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
	id bigint auto_increment,
    nome varchar(255),
    skill varchar (150),
    arma varchar (150),
    
    primary key (id)
);
insert into tb_classe (nome, skill, arma) values ("Bruxo", "Magia", "Cajado");
insert into tb_classe (nome, skill, arma) values ("Dragão", "Bola de Fogo", "Asas");
insert into tb_classe (nome, skill, arma) values ("Arqueiro", "Flechas", "Arco");
insert into tb_classe (nome, skill, arma) values ("Cavaleiro", "Força", "Espada");
insert into tb_classe (nome, skill, arma) values ("Mosqueteiro", "Munição", "Espingarda");

create table tb_personagem(
	id bigint auto_increment,
    nome varchar(100),
    nivel int,
    ataque int,
    defesa int,
    classe_id bigint,
    
    primary key (id),
    foreign key (classe_id) references tb_classe(id)
);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Ajax", 1000, 2000, 900, 5);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Magnus", 450, 1100, 500, 1);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Robin Hood", 530, 400, 400, 3);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Drogon", 700, 5500, 3300, 2);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Arthur", 120, 450, 900, 4);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Raven", 100, 1000, 240, 3);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Reaper", 850, 2000, 400, 5);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Ballerium", 300, 3500, 1200, 2);

select * from tb_classe;
select * from tb_personagem;

select * from tb_personagem where ataque > 2000;
select * from tb_personagem where defesa between 1000 and 2000;
select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe on
tb_classe.id = tb_personagem.classe_id;



