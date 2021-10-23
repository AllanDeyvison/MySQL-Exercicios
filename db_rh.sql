create database db_rh;
 
use db_rh;

create table tb_funcionaries(
id bigint(5) auto_increment,
nome varchar (30) not null,
idade bigint (2) not null,
email varchar (30) not null,
telefone bigint (11) not null,
salario double,
cargo varchar (30) not null,

primary key (id)

);
insert into tb_funcionaries(nome, idade, email, telefone, salario, cargo) value ("Felipe Souza",25, "felipesouza@gmail.com",21999999999,3.0000,"Administração");
insert into tb_funcionaries(nome, idade, email, telefone, salario, cargo) value ("Henry Mills",37, "henry@gamail.com",21999999999,1.234,"Estágiario");
insert into tb_funcionaries(nome, idade, email, telefone, salario, cargo) value ("Douglas Cardoso",32, "douglacardoso@gmail.com",21999999999,2.456,"Estágiario");
insert into tb_funcionaries(nome, idade, email, telefone, salario, cargo) value ("Anna Regina",21, "anaregina@gmail.com",21999999999,4.176,"Desenvolvedora júnior");
insert into tb_funcionaries(nome, idade, email, telefone, salario, cargo) value ("Elizabeth Bennet",22, "elizabetjbenneta@gmail.com",21999999999,7.698,"Desenvolvedora pleno");
insert into tb_funcionaries(nome, idade, email, telefone, salario, cargo) value ("Tyrion Lannister",45, "tyrionlannister@gmail.com",21999999999,12.587,"Desenvolvedor sênior");

select * from tb_funcionaries where salario > 2.000;

select * from tb_funcionaries where salario < 2.000;

update tb_funcionaries set salario = 1.432 where id = 3;

select * from tb_funcionaries
