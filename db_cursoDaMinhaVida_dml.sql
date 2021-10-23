INSERT INTO  db_cursoDaMinhaVida.tb_categoria (categoria,disponivel,sala)
VALUES
("Idiomas","Sim",21),
("Informatica e internet","Sim",13),
("Vestibular e concursos","Sim",17),
("Administração e negócios","Não",03),
("Arte e entreterimento","SIm",06),
("Educação","Sim",01);

INSERT INTO db_cursoDaMinhaVida.tb_curso (nome, preco, horas,quant_alunos, id_categoria)
VALUES
("Dança",32.00,"32h",65, 5),
("Fotografia",485.65,"53h",85,5),
("Banco de dados",678.56,"55h",163,2),
("Java",576.87,"48h",263,2),
("Inglês",486.54,"365h",476,1),
("Francês",786.98,"287h",195,1),
("ENEM",884.76,"435h",846,3),
("Comércio eletrônico",547.45,"132h",465,4);

SELECT * FROM tb_curso WHERE preco > 50.00;
SELECT * FROM tb_curso WHERE preco BETWEEN 3.00 AND 60.00;
SELECT * FROM tb_curso WHERE nome LIKE "J%";

SELECT * FROM db_cursoDaMinhaVida.tb_curso
INNER JOIN db_cursoDaMinhaVida.tb_categoria 
ON db_cursoDaMinhaVida.tb_categoria.id_categoria = db_cursoDaMinhaVida.tb_curso.id_categoria;

SELECT * FROM db_cursoDaMinhaVida.tb_curso
INNER JOIN db_cursoDaMinhaVida.tb_categoria 
ON db_cursoDaMinhaVida.tb_categoria.id_categoria = db_cursoDaMinhaVida.tb_curso.id_categoria
WHERE tb_categoria.categoria = "Idiomas";