create database db_curso_da_minha_vida;
use db_curso_da_minha_vida;

create table tb_categoria(
	id bigint auto_increment,
    categoria varchar(60),
    disponivel boolean,
    primary key (id)
);

create table tb_curso(
	id bigint auto_increment,
    preco decimal(8,2) not null,
    nome varchar(60) not null,
    descricao varchar(255),
    duracao_horas int not null,
    categoria_id bigint,
    primary key(id),
    foreign key (categoria_id)references tb_categoria(id)
);

insert into tb_categoria(categoria, disponivel) values ("Mobile", true);
insert into tb_categoria(categoria, disponivel) values ("Programação", true);
insert into tb_categoria(categoria, disponivel) values ("Inovação e Gestão", true);
insert into tb_categoria(categoria, disponivel) values ("Front-end", true);
insert into tb_categoria(categoria, disponivel) values ("Back-end", true);

insert into tb_curso(preco, nome, descricao, duracao_horas, categoria_id) values (225.90, "Gestão Ágil com Scrum", "Gestão ágil de projetos com SCRUM Agile, Liderança, Negociação e Produtividade", 7, 3);
insert into tb_curso(preco, nome, descricao, duracao_horas, categoria_id) values (189.90, "Java COMPLETO Programação Orientada a Objetos", "Curso mais didático e completo de Java e OO, JDBC, JavaFX, Spring Boot, JPA, MySQL.", 50, 5);
insert into tb_curso(preco, nome, descricao, duracao_horas, categoria_id) values (250.90, "Desenvolvimento Android Completo", "Crie apps como: Instagram, WhatsApp, OLX, Uber e mais", 107, 1);
insert into tb_curso(preco, nome, descricao, duracao_horas, categoria_id) values (200.0, "Curso completo de Lógica de Programação e Algoritmos", "Domine os fundamentos da programação de performance, aprenda a programar do ZERO!", 4, 2);
insert into tb_curso(preco, nome, descricao, duracao_horas, categoria_id) values (335.90, "HTML5", "Aprenda HTML5, CSS3 e JavaScript enquanto monta um site completo com essas tecnologias.", 40, 4);
insert into tb_curso(preco, nome, descricao, duracao_horas, categoria_id) values (150.99, "Python - Mundo 1", "Primeiro mundo do curso introduz a linguagem, seus conceitos e ensina alguns recursos básicos", 40, 5);

select * from tb_curso;
select * from tb_curso where preco > 300;
select * from tb_curso where preco between 100 and 600;

select * from tb_curso where nome like "%j%";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where tb_categoria.id = 2;
