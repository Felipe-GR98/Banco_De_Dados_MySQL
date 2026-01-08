CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255),
categoria VARCHAR(255)
);

INSERT INTO tb_categorias(tipo,categoria)
VALUES("Tradicional","Salgada");
INSERT INTO tb_categorias(tipo,categoria)
VALUES("Tradicional","Doce");
INSERT INTO tb_categorias(tipo,categoria)
VALUES("Especial","Salgada");
INSERT INTO tb_categorias(tipo,categoria)
VALUES("Especial","Doce");
INSERT INTO tb_categorias(tipo,categoria)
VALUES("Especial","Meio a Meio");

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(255) NOT NULL,
preco DOUBLE(4,2) NOT NULL,
adicionais BOOLEAN NOT NULL,
borda BOOLEAN,
categorias_id BIGINT
);


INSERT INTO tb_pizzas(sabor,preco,adicionais,borda,categorias_id)
VALUES("Mussarela", 30.00 ,0,0,1);
INSERT INTO tb_pizzas(sabor,preco,adicionais,borda,categorias_id)
VALUES("Clabresa", 45.00 ,1,1,1);
INSERT INTO tb_pizzas(sabor,preco,adicionais,borda,categorias_id)
VALUES("Chocolate", 50.00 ,0,0,2);
INSERT INTO tb_pizzas(sabor,preco,adicionais,borda,categorias_id)
VALUES("Portuguesa", 60.00 ,0,0,3);
INSERT INTO tb_pizzas(sabor,preco,adicionais,borda,categorias_id)
VALUES("Beacon", 65.00 ,0,0,3);
INSERT INTO tb_pizzas(sabor,preco,adicionais,borda,categorias_id)
VALUES("Banana com canela", 60.00 ,0,0,4);
INSERT INTO tb_pizzas(sabor,preco,adicionais,borda,categorias_id)
VALUES("Meia Beacon e Banana com Canela", 55.00 ,0,1,5);

SELECT * 
FROM tb_pizzas
WHERE preco >= 45.00;

SELECT * 
FROM tb_pizzas 
WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * 
FROM tb_pizzas 
WHERE sabor LIKE "%m%";

SELECT *
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT *
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id WHERE tb_categorias.categoria = "Doce";




