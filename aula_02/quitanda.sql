-- Query para criação de banco de dados
CREATE DATABASE db_quitanda;

-- Query para deletar banco de dados
DROP DATABASE db_quitanda;

-- Começar utilizar banco 
USE db_quitanda;

-- Criar tabela e popular
CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal not null,
primary key (id)
);

-- Popular tabela
INSERT INTO tb_produtos(nome, quantidade, preco)
values("laranja", 50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values("banana", 200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values("uva", 1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values("pêra", 500, 2.00);

-- Visualizar a tabela
SELECT * FROM tb_produtos;

-- buscas específicas
SELECT nome, quantidade FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id =2;

SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade < 100;

-- Desabilitar nossa segurança do SQL
SET SQL_SAFE_UPDATES = 0;

UPDATE tb_produtos SET preco = 5.00 WHERE id = 2;

-- Deletar itens
DELETE FROM tb_produtos WHERE id = 2;

-- Atualizar coluna 
ALTER TABLE tb_produtos MODIFY preco decimal (6,2);

ALTER TABLE tb_produtos ADD descrição varchar (255);

ALTER TABLE tb_produtos DROP descricao;

ALTER TABLE tb_produtos CHANGE nome nomedoproduto varchar(255);

