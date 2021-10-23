create database ecommerce;

use ecommerce;
create table produtos(
id int (4) auto_increment,
nome varchar (25) not null,
preco decimal not null,
tipo varchar (30) not null,
quantidade int not null,
marca varchar (20) not null,

primary key (id)
);


insert into produtos (nome, preco, tipo, quantidade, marca) value ("Tv",4.525, "Eletrônico",100,"Samsung");
insert into produtos (nome, preco, tipo, quantidade, marca) value ("Smartphone",2.525, "Eletrônico",200,"Lg");
insert into produtos (nome, preco, tipo, quantidade, marca) value ("Notebook",7.543, "Eletrônico",50,"Dell");
insert into produtos (nome, preco, tipo, quantidade, marca) value ("CookTop",1.600, "Eletrodoméstico",100,"Tramontina");
insert into produtos (nome, preco, tipo, quantidade, marca) value ("Sofá",1.000, "Movel",600,"Siena");
insert into produtos (nome, preco, tipo, quantidade, marca) value ("Liquidificador",525, "Eletrodoméstico",100,"Polishop");
insert into produtos (nome, preco, tipo, quantidade, marca) value ("Microondas",745, "Eletrodoméstico",670,"Philco");
insert into produtos (nome, preco, tipo, quantidade, marca) value ("Geladeira",4.525, "Eletrodoméstico",100,"Samsung");

select * from produtos;

select * from produtos where preco < 500;
select * from produtos where preco > 500;

update produtos set quantidade = 45 where id = 3;