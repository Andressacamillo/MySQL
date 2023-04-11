-- CRIAR BANCO DE DADOS
CREATE DATABASE db_pizzaria_legal;

-- USE BANCO DE DADOS
USE db_pizzaria_legal;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (descricao)
VALUES ("Doce");

INSERT INTO tb_categorias (descricao)
VALUES ("Salgada");

INSERT INTO tb_categorias (descricao)
VALUES ("Vegana");

INSERT INTO tb_categorias (descricao)
VALUES ("Mista");

INSERT INTO tb_categorias (descricao)
VALUES ("Broto");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a Tabela tb_pizzas
CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela tb_pizzas
INSERT INTO tb_pizzas (nome, quantidade, preco, categoria_id)
VALUES ("Chocolate", 1000, 22.99, 1);

INSERT INTO tb_pizzas (nome, quantidade, preco, categoria_id)
VALUES ("Queijo", 1300, 55.00, 2);

INSERT INTO tb_pizzas (nome, quantidade, preco, categoria_id)
VALUES ("Berinjela", 2000, 24.99, 3);

INSERT INTO tb_pizzas (nome, quantidade, preco, categoria_id)
VALUES ("Banana", 3000, 21.99, 1);

INSERT INTO tb_pizzas (nome, quantidade, preco, categoria_id)
VALUES ("Dois sabores", 1000, 22.99, 4);

INSERT INTO tb_pizzas (nome, quantidade, preco, categoria_id)
VALUES ("Pequena", 8000, 55.99, 5);

INSERT INTO tb_pizzas (nome, quantidade, preco, categoria_id)
VALUES ("Pequena", 5000, 29.99, 5);

INSERT INTO tb_pizzas (nome, quantidade, preco, categoria_id)
VALUES ("Pequena", 3000, 20.99, 5);

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_pizzas;

-- valor maior que 45,00
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- valor entre 50,00 e 100,00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- letra m no nome
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

-- letra n no nome 
SELECT * FROM tb_pizzas WHERE nome LIKE "%n%";

-- unir dados
SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id;

-- unir categorias específicas
SELECT * FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = "vegana"
ORDER BY nome;
