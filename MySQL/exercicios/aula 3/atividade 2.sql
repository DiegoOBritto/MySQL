create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
	id bigint auto_increment,
    categoria varchar(60) not null,
    disponivel boolean not null,
    primary key(id)
);

create table tb_pizza(
	id bigint auto_increment,
    preco decimal(8,2) not null,
    sabor varchar(60) not null,
    tipo_de_massa varchar(60) not null,
    borda_recheada boolean not null,
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (categoria,disponivel) values ("Salgada", true);
insert into tb_categoria (categoria,disponivel) values ("Doce", true);
insert into tb_categoria (categoria,disponivel) values ("Salgada", false);
insert into tb_categoria (categoria,disponivel) values ("Doce", false);
insert into tb_categoria (categoria,disponivel) values ("Outras", false);

insert into tb_pizza (preco, sabor, tipo_de_massa, borda_recheada, categoria_id) values (45.99, "Mussarela", "tradicional", true, 1);
insert into tb_pizza (preco, sabor, tipo_de_massa, borda_recheada, categoria_id) values (48.99, "Bacon", "tradicional", false, 1);
insert into tb_pizza (preco, sabor, tipo_de_massa, borda_recheada, categoria_id) values (73.50, "Nutella com morango", "Artesanal", false, 2);
insert into tb_pizza (preco, sabor, tipo_de_massa, borda_recheada, categoria_id) values (52.99, "Escarola", "tradicional", false, 5);
insert into tb_pizza (preco, sabor, tipo_de_massa, borda_recheada, categoria_id) values (55.99, "Portuguesa", "tradicional", true, 1);
insert into tb_pizza (preco, sabor, tipo_de_massa, borda_recheada, categoria_id) values (76.00, "Á moda do chefe", "tradicional", true, 5);
insert into tb_pizza (preco, sabor, tipo_de_massa, borda_recheada, categoria_id) values (53.99, "Frango c/ Catupiry", "tradicional", true, 1);
insert into tb_pizza (preco, sabor, tipo_de_massa, borda_recheada, categoria_id) values (70.99, "Brigadeiro Branco", "Artesanal", false, 4);
insert into tb_pizza (preco, sabor, tipo_de_massa, borda_recheada, categoria_id) values (56.99, "4 queijos", "tradicional", true, 3);
insert into tb_pizza (preco, sabor, tipo_de_massa, borda_recheada, categoria_id) values (69.99, "Romeu e Julieta", "Artesanal", false, 2);

select * from tb_pizza where preco > 45;
select * from tb_pizza where preco between 29 and 60;
select * from tb_pizza where sabor like "c%";
select * from tb_pizza where sabor like "%c%";

select tb_pizza.preco, tb_pizza.sabor, tb_categoria.categoria from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select tb_pizza.preco, tb_pizza.sabor, tb_categoria.categoria from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 2;

select * from tb_pizza;