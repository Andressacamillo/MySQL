-- Query para criação de banco de dados
CREATE DATABASE db_ec;

-- Query para deletar banco de dados
DROP DATABASE db_ec;

-- Começar utilizar banco 
USE db_ec;

-- Criar tabela e popular
CREATE TABLE tb_ec(
id bigint auto_increment,
nomeproduto varchar(255) not null,
quantidade int,
cor text (35) not null,
preco int (255) not null,
tamanho char (255) not null,
primary key (id)
);

-- Visualizar a tabela
SELECT * FROM tb_ec;

-- Popular tabela
INSERT INTO tb_ec(nomeproduto, quantidade, cor, preco, tamanho)
values("Tenis", "1", "azul", "200.00", "P");
INSERT INTO tb_ec(nomeproduto, quantidade, cor, preco, tamanho)
values("Bolsa", "2", "amarela", "400.00", "M");
INSERT INTO tb_ec(nomeproduto, quantidade, cor, preco, tamanho)
values("Mala", "3", "preta", "600", "G");
INSERT INTO tb_ec(nomeproduto, quantidade, cor, preco, tamanho)
values("Blusa", "6", "rosa", "700", "M");
INSERT INTO tb_ec(nomeproduto, quantidade, cor, preco, tamanho)
values("Saia", "9", "branca", "550", "U");
INSERT INTO tb_ec(nomeproduto, quantidade, cor, preco, tamanho)
values("Calça", "7", "verde", "100", "P");
INSERT INTO tb_ec(nomeproduto, quantidade, cor, preco, tamanho)
values("Óculos", "10", "roxo", "800", "U");
INSERT INTO tb_ec(nomeproduto, quantidade, cor, preco, tamanho)
values("Relógio", "20", "dourado", "500", "U");

-- Visualizar a tabela
SELECT * FROM tb_ec;

-- Visualizar tabela
SELECT preco FROM tb_ec;

-- buscas específicas
SELECT * FROM tb_ec WHERE preco > 500.00;

SELECT * FROM tb_ec WHERE preco < 500.00;

-- Atualizacao
ALTER TABLE tb_ec CHANGE nomeproduto nomedoproduto varchar(255);
