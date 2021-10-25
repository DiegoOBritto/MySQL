/*
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_rh;
use db_rh;

create table tb_funcionarios(
	id bigint (5),
    nome varchar(15),
    genero char,
    cargo varchar (30),
    salario decimal (10,2),
    periodo varchar(15),
    
    primary key(id)
);
insert into tb_funcionarios (id, nome, genero, cargo, salario, periodo) values (1, "Diego", "M", "Dev Java", 3000, "Manhã");
insert into tb_funcionarios (id, nome, genero, cargo, salario, periodo) values (2, "Raphaela", "F", "Estágiaria RH", 1200, "Manhã");
insert into tb_funcionarios (id, nome, genero, cargo, salario, periodo) values (3, "Claudia", "F", "Secretária", 2300, "Tarde");
insert into tb_funcionarios (id, nome, genero, cargo, salario, periodo) values (4, "Paulo", "M", "Segurança", 2200, "Noite");
insert into tb_funcionarios (id, nome, genero, cargo, salario, periodo) values (5, "Rogerio", "M", "Administração", 2300, "Tarde");

select * from tb_funcionarios;
select * from tb_funcionarios where Salario > 2000;
select * from tb_funcionarios where Salario < 2000;
SET SQL_SAFE_UPDATES=0;
update tb_funcionarios set Salario = 1500 where Nome like 'Raphaela';
select * from tb_funcionarios;