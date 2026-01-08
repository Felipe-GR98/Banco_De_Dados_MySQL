CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    class VARCHAR(255),
    forca INT,
    agilidade INT,
    inteligencia INT
);

INSERT INTO tb_classes(class,forca,agilidade,inteligencia) 
VALUES("Guerreiro",15,3,0);
INSERT INTO tb_classes(class,forca,agilidade,inteligencia) 
VALUES("Arqueiro",5,20,3);
INSERT INTO tb_classes(class,forca,agilidade,inteligencia) 
VALUES("Mago",0,2,25);
INSERT INTO tb_classes(class,forca,agilidade,inteligencia) 
VALUES("assasino",0,30,15);
INSERT INTO tb_classes(class,forca,agilidade,inteligencia) 
VALUES("clarigo",15,5,20);
INSERT INTO tb_classes(class,forca,agilidade,inteligencia,vitalidade) 
VALUES("Tanque",10,5,0,30);


CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    nivel INT,
    personalidade VARCHAR(255),
	bom_ou_mal BOOLEAN 
);

ALTER TABLE tb_personagens DROP COLUMN bom_ou_mal;

ALTER TABLE tb_personagens ADD regiao VARCHAR(255);
ALTER TABLE tb_personagens ADD Atk INT;
ALTER TABLE tb_personagens ADD Def INT;
ALTER TABLE tb_personagens ADD classes_by_id BIGINT;

ALTER TABLE tb_classes ADD vitalidade INT;

UPDATE tb_classes SET vitalidade = 30 WHERE id = 6 ;

#update personagesn Def
UPDATE tb_personagens SET Def = 1800 WHERE id = 6 ;
UPDATE tb_personagens SET Def = 1500 WHERE id = 8 ;
UPDATE tb_personagens SET Def = 1000 WHERE id = 1 ;
UPDATE tb_personagens SET Def = 500 WHERE id = 2 ;
UPDATE tb_personagens SET Def = 300 WHERE id = 3 ;
UPDATE tb_personagens SET Def = 300 WHERE id = 4 ;
UPDATE tb_personagens SET Def = 2000 WHERE id = 5 ;
UPDATE tb_personagens SET Def = 800 WHERE id = 7 ;

#update personagesn Atk
UPDATE tb_personagens SET Atk = 800 WHERE id = 6 ;
UPDATE tb_personagens SET Atk = 500 WHERE id = 8 ;
UPDATE tb_personagens SET Atk = 900 WHERE id = 1 ;
UPDATE tb_personagens SET Atk = 1500 WHERE id = 2 ;
UPDATE tb_personagens SET Atk = 1300 WHERE id = 3 ;
UPDATE tb_personagens SET Atk = 1300 WHERE id = 4 ;
UPDATE tb_personagens SET Atk = 200 WHERE id = 5 ;
UPDATE tb_personagens SET Atk = 1800 WHERE id = 7 ;


#update personagesn id Classes
UPDATE tb_personagens SET classes_by_id = 1 WHERE id = 1 ;
UPDATE tb_personagens SET classes_by_id = 2 WHERE id = 2 ;
UPDATE tb_personagens SET classes_by_id = 3 WHERE id = 3 ;
UPDATE tb_personagens SET classes_by_id = 3 WHERE id = 4 ;
UPDATE tb_personagens SET classes_by_id = 6 WHERE id = 5 ;
UPDATE tb_personagens SET classes_by_id = 6 WHERE id = 6 ;
UPDATE tb_personagens SET classes_by_id = 4 WHERE id = 7 ;
UPDATE tb_personagens SET classes_by_id = 6 WHERE id = 8 ;
# SET SQL_SAFE_UPDATES = 1;

INSERT INTO tb_personagens(nome,nivel,personalidade,regiao)
VALUES("Gus",1,"Héroi","Demacia");
INSERT INTO tb_personagens(nome,nivel,personalidade,regiao)
VALUES("Legolas",1,"Nobre","Freijord");
INSERT INTO tb_personagens(nome,nivel,personalidade,regiao)
VALUES("Veigar",1,"Maligno","Noxus");
INSERT INTO tb_personagens(nome,nivel,personalidade,regiao)
VALUES("Luz",1,"Lider da Magia","Demacia");
INSERT INTO tb_personagens(nome,nivel,personalidade,regiao)
VALUES("Sejuani",1,"Rainha do Gelo","Freijord");
INSERT INTO tb_personagens(nome,nivel,personalidade,regiao)
VALUES("Garen",1,"Anti-Magia","Demacia");
INSERT INTO tb_personagens(nome,nivel,personalidade,regiao)
VALUES("Pyke",1,"Vingativo","Aguás de Sentina");
INSERT INTO tb_personagens(nome,nivel,personalidade,regiao)
VALUES("Thresh",1,"Ceifador","Ilhas das Sombras");


SELECT * FROM tb_personagens WHERE Atk > 2000;
SELECT * FROM tb_personagens WHERE Def BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT *
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classes_by_id = tb_classes.id;


SELECT *
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_by_id = tb_classes.id WHERE tb_classes.class = "Tanque";


