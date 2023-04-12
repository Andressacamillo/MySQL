-- CRIAR BANCO DE DADOS
CREATE DATABASE db_farmacia_bem_estar;

-- USE BANCO DE DADOS
USE db_farmacia_bem_estar;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (descricao)
VALUES ("Capsulas");

INSERT INTO tb_categorias (descricao)
VALUES ("Liquidos");

INSERT INTO tb_categorias (descricao)
VALUES ("Gel");

INSERT INTO tb_categorias (descricao)
VALUES ("Cremes");

INSERT INTO tb_categorias (descricao)
VALUES ("Higiene");

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
VALUES ("Analgésico", 1000, 100.99, 1);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Anti-inflamatorio", 1300, 55.00, 2);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Muscular", 2000, 24.99, 3);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Alergia", 3000, 21.99, 4);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Lenços", 1000, 22.99, 5);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Analgesico", 8000, 55.99, 1);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Dipirona", 5000, 29.99, 1);

INSERT INTO tb_produtos (nome, quantidade, preco, categoria_id)
VALUES ("Ibuprofeno", 3000, 20.99, 1);

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_produtos;

-- valor maior que 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- valor entre 5,00 e 60,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- letra c no nome
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- unir dados
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id;

-- unir categorias específicas
SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = "Gel"
ORDER BY nome;
