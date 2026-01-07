CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
numero_matricula BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
idade INT NOT NULL,
serie INT NOT null,
nota DECIMAL(2,1),
mensalidade DECIMAL(6,2) NOT NULL
);

INSERT INTO tb_estudantes(nome,idade,serie,nota,mensalidade)
VALUES("Fernando",11,3,8.5,600.00);
INSERT INTO tb_estudantes(nome,idade,serie,nota,mensalidade)
VALUES("Ronaldo",11,3,6.5,600.00);
INSERT INTO tb_estudantes(nome,idade,serie,nota,mensalidade)
VALUES("Sabrina",11,3,9.0,600.00);
INSERT INTO tb_estudantes(nome,idade,serie,nota,mensalidade)
VALUES("Maria",11,3,9.5,600.00);
INSERT INTO tb_estudantes(nome,idade,serie,nota,mensalidade)
VALUES("Roberto",11,3,8.0,600.00);
INSERT INTO tb_estudantes(nome,idade,serie,nota,mensalidade)
VALUES("Lucia",11,3,6.5,600.00);
INSERT INTO tb_estudantes(nome,idade,serie,nota,mensalidade)
VALUES("Arlindo",11,3,9.5,600.00);
INSERT INTO tb_estudantes(nome,idade,serie,nota,mensalidade)
VALUES("Fernando",11,3,4.5,600.00);


SELECT * FROM tb_estudantes WHERE nota >= 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 10.0 WHERE numero_matricula = 8;

ALTER TABLE  tb_estudantes MODIFY nota DECIMAL(6,1);