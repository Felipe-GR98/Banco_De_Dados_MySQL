CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL(6,2) NOT NULL
);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco)
VALUES ("Batata doce", 2000, "2022-03-09", 600.00);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco)
VALUES ("Alface", 300, "2022-03-10", 750.00);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco)
VALUES ("Cebola", 1020, "2022-03-08", 500.00);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco)
VALUES("Ovo Branco", 1000, "2022-03-07", 550.00);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco)
VALUES("Agrião", 1500, "2022-03-06", 3.00);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco)
VALUES("Cenoura", 1800, "2022-03-09", 3.50);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco)
VALUES ("Alecrim", 130, "2022-03-10", 5.00);

SELECT * FROM tb_produtos WHERE preco >= 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 10.50 WHERE id = 1;


