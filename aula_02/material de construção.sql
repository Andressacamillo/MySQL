-- CRIAR BANCO DE DADOS
CREATE DATABASE db_construindo_vidas;

-- USE BANCO DE DADOS
USE db_construindo_vidas;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (descricao)
VALUES ("Cozinha");

INSERT INTO tb_categorias (descricao)
VALUES ("Sala");

INSERT INTO tb_categorias (descricao)
VALUES ("Quarto");

INSERT INTO tb_categorias (descricao)
VALUES ("Banheiro");

INSERT INTO tb_categorias (descricao)
VALUES ("Garagem");

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

-- Insere dados na tabela tb_pizzas
INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Pia Cozinha", 1000, 22.99, 1);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Lareira", 1300, 55.00, 2);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Janela quarto", 2000, 24.99, 3);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Chuveiro", 3000, 21.99, 4);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Portão", 1000, 22.99, 5);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Pia banheiro", 8000, 55.99, 4);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Porta cozinha", 5000, 29.99, 1);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Cortina quarto", 3000, 20.99, 3);

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_produtos;

-- valor maior que 100,00
SELECT * FROM tb_produtos WHERE preco > 100.00;

-- valor entre 70,00 e 105,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

-- letra c no nome
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- unir dados
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

-- unir categorias específicas
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = "Cozinha"
ORDER BY nome;
