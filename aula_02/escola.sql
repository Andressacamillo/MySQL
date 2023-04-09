-- Query para criação de banco de dados
CREATE DATABASE db_estudantes;

-- Começar utilizar banco 
USE db_estudantes;

-- Criar tabela e popular
CREATE TABLE db_estudantes(
id bigint auto_increment,
nome varchar(255) not null,
matricula int,
email text (35) not null,
nota int (255) not null,
disciplina char (255) not null,
primary key (id)
);

-- Visualizar a tabela
SELECT * FROM db_estudantes;

-- Popular tabela
INSERT INTO db_estudantes(nome, matricula, email, nota, disciplina)
values("Joana", "654", "a@email.com", "2", "Artes");
INSERT INTO db_estudantes(nome, matricula, email, nota, disciplina)
values("Barbara", "876", "h@email.com", "4", "Matemática");
INSERT INTO db_estudantes(nome, matricula, email, nota, disciplina)
values("Mateus", "775", "g@email.com", "6", "Português");
INSERT INTO db_estudantes(nome, matricula, email, nota, disciplina)
values("Berenice", "223", "r@gmail.com", "7", "Ciências");
INSERT INTO db_estudantes(nome, matricula, email, nota, disciplina)
values("Sara", "985", "b@gmail.com", "5", "Biologia");
INSERT INTO db_estudantes(nome, matricula, email, nota, disciplina)
values("Cecilia", "244", "c@email.com", "1", "Redação");
INSERT INTO db_estudantes(nome, matricula, email, nota, disciplina)
values("Marta", "133", "m@email.com", "8", "Literatura");
INSERT INTO db_estudantes(nome, matricula, email, nota, disciplina)
values("Rose", "565", "d@email.com", "9", "Física");

-- Visualizar a tabela
SELECT * FROM db_estudantes;

-- Visualizar tabela
SELECT nota FROM db_estudantes;

-- buscas específicas
SELECT * FROM db_estudantes WHERE nota > 7;

SELECT * FROM db_estudantes WHERE nota < 7;

-- Atualizacao
ALTER TABLE db_estudantes CHANGE disciplina matéria varchar(255);
