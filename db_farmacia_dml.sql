INSERT INTO  db_farmacia.tb_categoria (categoria,receita,disponivel)
VALUES
("Higiene","Não","Sim"),
("Remédios","Sim","Sim"),
("Remédios","Não","Sim"),
("Vitaminas","Não","Sim"),
("Outros","Não","Sim");

INSERT INTO db_farmacia.tb_produto (produto, preco, marca, quantidade,id_categoria)
VALUES
("Soro Fisiológico",5.24,"Needs",238,5),
("Absorvente",15.65,"Always",456,1),
("Sabonete Esfoliante",34.54,"Neutrogena",154,1),
("Compressa de Gaze",3.54,"Needs",487,5),
("Algodão",5.76,"Needs",3465,5),
("Vitamina C",6.57,"Viter",345,4),
("Benegrip",25.65,"Benegrip",2123,3),
("Antialérgico",55.67,"Loratadina",254,2);

SELECT * FROM tb_produto WHERE preco > 50.00;
SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;
SELECT * FROM tb_produto WHERE produto LIKE "B%";

SELECT * FROM db_farmacia.tb_produto 
INNER JOIN db_farmacia.tb_categoria 
ON db_farmacia.tb_categoria.id_categoria = db_farmacia.tb_produto.id_categoria;

SELECT * FROM db_farmacia.tb_produto 
INNER JOIN db_farmacia.tb_categoria 
ON db_farmacia.tb_categoria.id_categoria = db_farmacia.tb_produto.id_categoria
WHERE tb_categoria.categoria = "Remédios";