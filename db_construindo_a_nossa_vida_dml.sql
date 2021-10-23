INSERT INTO  db_construindo_a_nossa_vida.tb_categoria (categoria,disponivel,data_de_entrga)
VALUES
("Hidrálica","Sim",'2021-07-21'),
("Iluminação","Sim",'2021-05-13'),
("Pisos e revestimentos","Não",'2021-07-17'),
("Jardins e varandas","Não",'2021-03-24'),
("Materiais de construção","Não",'2021-10-06'),
("Casa e decoração","Sim",'2021-05-01');

INSERT INTO db_construindo_a_nossa_vida.tb_produto (cliente, produto, preco, quantidade,id_categoria)
VALUES
("Ana","Cimento",123.65, "5",6),
("Ana","Tijolos",485.65, "276",6),
("João","Cano",25.65, "5",1),
("João","Ralo",17.54, "1",1),
("Pedro","Lampada",23.54, "4",2),
("Pedro","Conduite",43.43,"3",2),
("Carla","Porcelanato",2885.54,"45",3),
("Carla","Rejunte",32.12,"4",3);

SELECT * FROM tb_produto WHERE preco > 50.00;
SELECT * FROM tb_produto WHERE preco BETWEEN 3.00 AND 60.00;
SELECT * FROM tb_produto WHERE produto LIKE "C%";

SELECT * FROM db_construindo_a_nossa_vida.tb_produto 
INNER JOIN db_construindo_a_nossa_vida.tb_categoria 
ON db_construindo_a_nossa_vida.tb_categoria.id_categoria = db_construindo_a_nossa_vida.tb_produto.id_categoria;

SELECT * FROM db_construindo_a_nossa_vida.tb_produto 
INNER JOIN db_construindo_a_nossa_vida.tb_categoria 
ON db_construindo_a_nossa_vida.tb_categoria.id_categoria = db_construindo_a_nossa_vida.tb_produto.id_categoria
WHERE tb_categoria.categoria = "Hidrálica";