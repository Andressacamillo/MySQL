-- Query para criação de banco de dados
CREATE DATABASE db_rh;

-- Query para deletar banco de dados
DROP DATABASE db_rh;

-- Começar utilizar banco 
USE db_rh;

-- Criar tabela e popular
CREATE TABLE tb_rh(
id bigint auto_increment,
nome varchar(255) not null,
idade int,
email text (35) not null,
endereco text (255) not null,
sexo char (255) not null,
salario int (255) not null,
primary key (id)
);

-- Visualizar a tabela
SELECT * FROM tb_rh;

-- Popular tabela
INSERT INTO tb_rh(nome, idade, email, endereco, sexo, salario)
values("Ana", "50", "ana@ana.com", "Rua A", "F", "1000.00");
INSERT INTO tb_rh(nome, idade, email, endereco, sexo, salario)
values("Pedro", "20", "pedro@pedro.com", "Rua B", "M", "5000.00");
INSERT INTO tb_rh(nome, idade, email, endereco, sexo, salario)
values("Silvia", "12", "silvia@silvia.com", "Rua C", "F", "1500.00");
INSERT INTO tb_rh(nome, idade, email, endereco, sexo, salario)
values("Rosa", "57", "rosa@rosa.com", "Rua E", "F", "3000.00");

SELECT * FROM tb_rh;

SELECT salario FROM tb_rh;

SELECT * FROM tb_rh WHERE salario > 2000.00;

SELECT * FROM tb_rh WHERE salario < 2000.00;

DELETE FROM tb_rh WHERE id = 1;

ALTER TABLE tb_rh CHANGE nome nomepessoa varchar(255);