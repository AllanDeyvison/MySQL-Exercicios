
INSERT INTO bd_pizzaria_legal.tb_categoria (tipo,borda)
VALUES
("Salgada","Catupiry"),
("Salgada","Cheddar"),
("Salgada","Sem Borda"),
("Doce","Chocolate"),
("Doce","Sem Borda");

INSERT INTO bd_pizzaria_legal.tb_pizza (sabor, tamanho, preco, id_categoria)
VALUES
("Calabresa","Grande",46.98,2),
("Portuguesa","Média",57.87,1),
("Pepperoni","Grande",78.76,1),
("Baiana","Pequena",24.65,3),
("Brócolis","Média",34.65,4),
("Prestígio","Média",37.45,4),
("Bricadeiro","Pequena",21.23,5),
("Romeu e Julieta","Pequena",23.54,5);

SELECT * FROM tb_pizza WHERE preco > 45.00;
SELECT * FROM tb_pizza WHERE preco BETWEEN 29.00 AND 60.00;
SELECT * FROM tb_pizza WHERE sabor LIKE "C%";

SELECT * FROM tb_pizza 
INNER JOIN tb_categoria 
ON tb_categoria.id_categoria = tb_pizza.id_categoria;

SELECT * FROM tb_pizza 
INNER JOIN tb_categoria 
ON tb_categoria.id_categoria = tb_pizza.id_categoria
WHERE tb_categoria.tipo = "Salgada";