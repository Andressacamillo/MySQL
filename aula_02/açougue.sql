-- CRIAR BANCO DE DADOS
CREATE DATABASE db_cidade_das_carnes;

-- USE BANCO DE DADOS
USE db_cidade_das_carnes;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (descricao)
VALUES ("Carne Vermelha");

INSERT INTO tb_categorias (descricao)
VALUES ("Frutos do mar");

INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");

INSERT INTO tb_categorias (descricao)
VALUES ("Defumados");

INSERT INTO tb_categorias (descricao)
VALUES ("Peças inteiras");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a Tabela tb_pizzas
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Acém", 1000, 100.99, 1);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Camarão", 1300, 55.00, 2);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Sal grosso", 2000, 24.99, 3);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Calabresa", 3000, 21.99, 4);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Chester", 1000, 22.99, 5);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Tilápia", 8000, 55.99, 2);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Robalo", 5000, 29.99, 2);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Salmão", 3000, 20.99, 2);

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_produtos;

-- valor maior que 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- valor entre 50,00 e 150,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

-- letra c no nome
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- unir dados
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

-- unir categorias específicas
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = "Carne vermelha"
ORDER BY nome;
