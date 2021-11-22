create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
material varchar(255) not null,
oferta boolean not null,
disponivel boolean not null,
primary key(id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(6,2) not null,
peso varchar(100),
quantidade int not null,
marca varchar(255),
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria(id)
);

insert into tb_categoria(material , oferta, disponivel) values ("Argamassas",true,true);
insert into tb_categoria(material, oferta, disponivel) values ("Drywall",false,true);
insert into tb_categoria(material, oferta, disponivel) values ("Equipamentos Proteção",false,true);
insert into tb_categoria(material, oferta, disponivel) values ("Madeiras",false,true);
insert into tb_categoria(material, oferta, disponivel) values ("Cimento",true,true);



insert into tb_produtos(nome, preco, peso, quantidade, marca, categoria_id) values ("Argamassa Massa Pronta Interno e Externo Cinza",12.99,"20 Kg",4,"Axton",1);
insert into tb_produtos(nome, preco, peso, quantidade, marca, categoria_id) values ("Bloco de Gesso Standard Maciço",38.90,"35 Kg",5,"Super Gesso",2);
insert into tb_produtos(nome, preco, peso, quantidade, marca, categoria_id) values ("Martelo Demolidor",12.99,"14,6 Kg",2,"Einhell",3);
insert into tb_produtos(nome, preco, peso, quantidade, marca, categoria_id) values ("Abafador de Ruído",69.90,"0,27 Kg",3,"3M",3);
insert into tb_produtos(nome, preco, peso, quantidade, marca, categoria_id) values ("Furadeira de Impacto",178.90,"1,69 Kg",2,"Dexter",3);
insert into tb_produtos(nome, preco, peso, quantidade, marca, categoria_id) values ("Ripa de Madeira Eucalipto",16.49,"1,345 Kg",4,"Massol",4);
insert into tb_produtos(nome, preco, peso, quantidade, marca, categoria_id) values ("Cimento CP II",27.90,"50 Kg",10,"Tupi",5);
insert into tb_produtos(nome, preco, peso, quantidade, marca, categoria_id) values ("Parafuso de Aço para Madeira",9.49,"0,036 Kg",60,"Standers",4);

select * from tb_produtos where preco > 50.00;
select * from tb_produtos where preco between 3.00 and 60.00;
select * from tb_produtos where nome like "%c";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.id,tb_produtos.nome,tb_produtos.preco,tb_categoria.material from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;