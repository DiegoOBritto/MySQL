/*Atividade 4
Crie um banco de dados para um serviço de um açougue ou uma quitanda, o nome do
banco deverá ter o seguinte nome db_cidade_das_carnes ou db_cidade_das_frutas, onde o
sistema trabalhará com as informações dos produtos desta empresa.

O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

siga exatamente esse passo a passo:

Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desse açougue.

Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de
criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.

Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.

Faça um select trazendo os Produtos com valor entre 3 e 60 reais.

Faça um select utilizando LIKE buscando os Produtos com a letra C.

Faça um um select com Inner join entre tabela categoria e produto.

Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são aves ou legumes).

*/
create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
	id bigint auto_increment,
    tipo varchar (50),
    disponivel boolean,
    quantidade int,
    
    primary key (id)
);
insert into tb_categoria (tipo, disponivel, quantidade) values ("Bovina", true, 50);
insert into tb_categoria (tipo, disponivel, quantidade) values ("Suína", true, 50);
insert into tb_categoria (tipo, disponivel, quantidade) values ("Ave", true, 50);
insert into tb_categoria (tipo, disponivel, quantidade) values ("Peixe/FrutosDoMar", true, 50);
insert into tb_categoria (tipo, disponivel, quantidade) values ("Imbutidos", true, 50);

select * from tb_categoria;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar (20),
    preco decimal (6,2),
    peso_kg decimal(6,2),
    tipo_corte varchar (30),
    categoria_id bigint,
    
    primary key(id),
    foreign key (categoria_id) references tb_categoria (id)
);
insert into tb_produtos(nome, preco, peso_kg, tipo_corte, categoria_id) values ("Acém", 25.50, 5.5, "Moído", 1);
insert into tb_produtos(nome, preco, peso_kg, tipo_corte, categoria_id) values ("Manjuba", 37.50, 9.5, "Fino", 4);
insert into tb_produtos(nome, preco, peso_kg, tipo_corte, categoria_id) values ("Orelha", 67, 12, "Grosso", 2);
insert into tb_produtos(nome, preco, peso_kg, tipo_corte, categoria_id) values ("Alcatra", 70, 23, "Grosso", 1);
insert into tb_produtos(nome, preco, peso_kg, tipo_corte, categoria_id) values ("Asa", 22, 10, "Fino", 3);
insert into tb_produtos(nome, preco, peso_kg, tipo_corte, categoria_id) values ("Apresuntado", 15, 1, "Fino", 5);
insert into tb_produtos(nome, preco, peso_kg, tipo_corte, categoria_id) values ("Camarão", 35, 2.5, "Fino", 4);
insert into tb_produtos(nome, preco, peso_kg, tipo_corte, categoria_id) values ("Coração de Galinha", 10, 1.5, "Fino", 3);

select * from tb_produtos;
select * from tb_produtos where preco > 50;
select * from tb_produtos where preco > 3 and preco < 60;
select * from tb_produtos where nome Like "%c%";
select * from tb_produtos where categoria_id = 3;
select * from tb_categoria inner join tb_produtos on tb_produtos.categoria_id = tb_categoria.id;