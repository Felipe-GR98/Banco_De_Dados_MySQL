CREATE DATABASE db_colaborador;

USE db_colaborador;

CREATE TABLE tb_funcionarios(
credencial BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
idade INT,
salario DECIMAL(6,2) NOT NULL,
cargo VARCHAR(255) NOT NULL
);
INSERT INTO tb_funcionarios(nome,idade,salario,cargo) 
VALUES ("Vanessa",24,1500.00,"Desing");
INSERT INTO tb_funcionarios(nome,idade,salario,cargo) 
VALUES ("Roberto",30,1900.00,"Gerente");
INSERT INTO tb_funcionarios(nome,idade,salario,cargo) 
VALUES ("Alleson",27,3000.00,"Programador");
INSERT INTO tb_funcionarios(nome,idade,salario,cargo) 
VALUES ("Allyson",26,2000.00,"Programador");
INSERT INTO tb_funcionarios(nome,idade,salario,cargo) 
VALUES ("Isabele",33,4000.00,"Progrmadora");


SELECT * FROM tb_funcionarios WHERE salario >= 2000;
SELECT * FROM tb_funcionarios WHERE salario < 2000;

UPDATE tb_funcionarios SET salario = 2000.00 WHERE credencial = 2;



