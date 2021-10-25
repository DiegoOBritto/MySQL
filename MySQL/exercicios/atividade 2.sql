/*
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/
create database db_ecommerce;
use db_ecommerce;

create table tb_produtos(
	id bigint (8) auto_increment,
    produto varchar (30) not null,
    categoria varchar (30) not null,
    marca varchar (30),
    preco decimal (10,2),
    cor varchar (30),
    
    primary key(id)
);
insert into tb_produtos (produto, categoria, marca, preco, cor) values ("Moto G", "Eletrônicos", "Motorola", 850, "Azul");
insert into tb_produtos (produto, categoria, marca, preco, cor) values ("Playstation 5", "Eletrônicos", "Sony", 3900, "Branco");
insert into tb_produtos (produto, categoria, marca, preco, cor) values ("Guarda-Roupa", "Móveis", " ", 500, "Branco");
insert into tb_produtos (produto, categoria, marca, preco, cor) values ("Televisor", "Eletrônicos", "LG", 480, "Preto");
insert into tb_produtos (produto, categoria, marca, preco, cor) values ("Iphone", "Eletrônicos", "Apple", 3400, "Rosa");
insert into tb_produtos (produto, categoria, marca, preco, cor) values ("Sofá", "Móveis", "", 330, "Marrom");
insert into tb_produtos (produto, categoria, marca, preco, cor) values ("Cama", "Móveis", "KingStar", 400, "Branco");
insert into tb_produtos (produto, categoria, marca, preco, cor) values ("Notebook", "Eletrônicos", "CCE", 2700, "Preto");

select * from tb_produtos;
select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;
SET SQL_SAFE_UPDATES=0;
update tb_produtos set preco = 2500 where produto like 'Notebook';