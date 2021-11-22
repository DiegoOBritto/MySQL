create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
	id bigint auto_increment,
    categoria varchar(60),
    disponivel boolean,
    primary key(id)
);

create table tb_produtos(
	id bigint auto_increment,
    produto varchar (60),
    descricao varchar (155),
    preco decimal (8,2) not null,
    marca varchar (60) not null,
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_categoria(categoria, disponivel) values ("Medicamento", true);
insert into tb_categoria(categoria, disponivel) values ("Higiene", true);
insert into tb_categoria(categoria, disponivel) values ("Bem Estar", true);
insert into tb_categoria(categoria, disponivel) values ("Dermatologico", true);
insert into tb_categoria(categoria, disponivel) values ("Outros", true);

insert into tb_produtos(produto, descricao, preco, marca, categoria_id) values ("Isotonico", "Bebida para repor liquido e sais minerais", 7.99, "Gatorade", 3);
insert into tb_produtos(produto, descricao, preco, marca, categoria_id) values ("Sabonete", "Produto de higiene pessoal", 5.99, "Dove", 2);
insert into tb_produtos(produto, descricao, preco, marca, categoria_id) values ("Dipirona", "Medicamento para dores de cabeça", 14.29, "Genérico", 1);
insert into tb_produtos(produto, descricao, preco, marca, categoria_id) values ("Creme Hidratante", "Produto de uso dermatológico", 13.20, "Nivea", 4);
insert into tb_produtos(produto, descricao, preco, marca, categoria_id) values ("Ibuprofeno", "Medicamento para febre", 10.00, "Medley", 1);
insert into tb_produtos(produto, descricao, preco, marca, categoria_id) values ("Compressa Gaze", "Produto para compressas ou curativos", 2.50, "Herika", 5);
insert into tb_produtos(produto, descricao, preco, marca, categoria_id) values ("Água", "Bebida par hidratação", 3.99, "Bonafont", 3);
insert into tb_produtos(produto, descricao, preco, marca, categoria_id) values ("Escova de dente", "Produto de higiene pessoal", 2.99, "Colgate", 2);

select * from tb_produtos;
select * from tb_produtos where preco > 50;
select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where marca like "b%";
select * from tb_produtos where marca like "%b%";

select tb_produtos.marca, tb_produtos.preco, tb_categoria.categoria from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.marca, tb_produtos.preco, tb_categoria.categoria from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 3;