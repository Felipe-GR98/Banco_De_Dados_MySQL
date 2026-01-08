# Apagar o DATABASE db_quitanda
DROP DATABASE db_quitanda;
CREATE DATABASE db_quitanda;
USE db_quitanda;
CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
	quantidade INT,
    datavalidade DATE,
	preco DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("pêra",500, "2023-12-15", 2.99);
# CRIAR A TABELA DE CATEGORIAS
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255) NOT NULL
);
#cadastrar uma nova categoria
INSERT INTO tb_categorias(descricao) VALUES ("frutas");
INSERT INTO tb_categorias (descricao) VALUES ("Verduras");
INSERT INTO tb_categorias (descricao) VALUES ("Legumes");
INSERT INTO tb_categorias (descricao) VALUES ("Temperos");
INSERT INTO tb_categorias (descricao) VALUES ("Ovos");
INSERT INTO tb_categorias (descricao) VALUES ('Outros');

# Adicionar a coluna "categoriaid" na tabela de produtos
ALTER TABLE tb_produtos ADD categoriaid BIGINT;

# Criar o relacionamento entre as tabelas
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

UPDATE tb_produtos SET categoriaid = 3 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 2;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 3;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 4;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 5;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 6;

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);
 
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);
 
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);
 
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);
 
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);
 
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);
 
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);
 
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);
 
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);
 
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);
 
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);
 
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco, categoriaid)
VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);
 
INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);
 
INSERT INTO tb_produtos (nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);


SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;

#Pesquisa com ordenação dos dados
SELECT * FROM tb_produtos ORDER BY nome; -- ordem alfabética
SELECT * FROM tb_produtos ORDER BY nome DESC; -- ordem inversa
SELECT * FROM tb_produtos ORDER BY preco, nome; -- ordenar primeiro pelo preco, depois pelo nome

#Pesquisar todos os produtos que custem 5 / 10 / 15 
SELECT * FROM tb_produtos WHERE preco = 5 OR preco = 10 OR preco = 15;
SELECT * FROM tb_produtos WHERE preco IN(5, 10, 15);

#Pesquisar todos os produtos que tenham preço entre 5 e 15
SELECT * FROM tb_produtos WHERE preco >= 5 AND preco <= 15;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 15;

#Pesquisas por texto
SELECT * FROM tb_produtos WHERE nome LIKE "a%"; -- todos os produtos que tenham a letra A no inicio
SELECT * FROM tb_produtos WHERE nome LIKE "%a"; -- todos os produtos que tenham a letra A no final
SELECT * FROM tb_produtos WHERE nome LIKE "%a%"; -- todos os produtos que tenham a letra A, em qlquer local

# Selects com JOINS

#Selecionar todos os produtos que possuam uma categoria, mostrando tbm a categoria
SELECT *
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

#Melhorando o select de cima, pra mostrar apenas algumas colunas
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

#Selecionando todos os produtos, e os que tiverem categoria, mostrar tbm a descrição dela
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos LEFT JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;

#Selecioando todas as categorias, e as que tiverem produtos, mostrar tbm os produtos
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos RIGHT JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id;