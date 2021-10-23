INSERT INTO  db_cidade_das_carnes.tb_categoria (tipos,disponivel,lot)
VALUES
("Bovina","Sim","1534ADG54"),
("Suína","Sim","147HGYU"),
("Frango","Sim","876HGF"),
("Peixe","Não","0000000");

INSERT INTO db_cidade_das_carnes.tb_produto (cliente, nome, preco, quantidade,id_categoria)
VALUES
("Ana","Acém",25.65, "5kg",1),
("Ana","Peito de frango",15.65, "2kg",3),
("João","Filé mignon",55.65, "5kg",1),
("João","Bacon",17.54, "3kg",2),
("Pedro","Fraldinha",23.54, "4kg",1),
("Pedro","Costela",43.43,"3kg",2),
("Carla","Coxa",25.54,"4kg",3),
("Carla","Bisteca",32.12,"6kg",2);

SELECT * FROM tb_produto WHERE preco > 50.00;
SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;
SELECT * FROM tb_produto WHERE nome LIKE "C%";

SELECT * FROM db_cidade_das_carnes.tb_produto 
INNER JOIN db_cidade_das_carnes.tb_categoria 
ON db_cidade_das_carnes.tb_categoria.id_categoria = db_cidade_das_carnes.tb_produto.id_categoria;

SELECT * FROM db_cidade_das_carnes.tb_produto 
INNER JOIN db_cidade_das_carnes.tb_categoria 
ON db_cidade_das_carnes.tb_categoria.id_categoria = db_cidade_das_carnes.tb_produto.id_categoria
WHERE tb_categoria.tipos = "Bovina" ;

