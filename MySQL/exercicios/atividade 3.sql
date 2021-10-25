/*ie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
*/
create database db_escola;
use db_escola;

create table tb_alunos(
	id bigint (8) auto_increment,
    nome varchar (20) not null,
    genero char,
    turma char,
    nota decimal(10,2) not null,
    aprovado boolean not null,
    
    primary key(id)
);
insert into tb_alunos (nome, genero, turma, nota, aprovado) values ("Diego", "M", "B", 7.5, true);
insert into tb_alunos (nome, genero, turma, nota, aprovado) values ("Raphaela", "F", "A", 3, false);
insert into tb_alunos (nome, genero, turma, nota, aprovado) values ("Paulo", "M", "C", 5, true);
insert into tb_alunos (nome, genero, turma, nota, aprovado) values ("Claudia", "F", "C", 10, true);
insert into tb_alunos (nome, genero, turma, nota, aprovado) values ("Leandro", "M", "A", 4, false);
insert into tb_alunos (nome, genero, turma, nota, aprovado) values ("Luana", "F", "B", 8, true);
insert into tb_alunos (nome, genero, turma, nota, aprovado) values ("Rogério", "M", "C", 3.5, false);
insert into tb_alunos (nome, genero, turma, nota, aprovado) values ("Andressa", "F", "A", 1, false);

select * from tb_alunos;
select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;
SET SQL_SAFE_UPDATES=0;
update tb_alunos set nota = 7 where nome like 'Paulo';