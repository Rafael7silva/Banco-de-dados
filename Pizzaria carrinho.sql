create database carrinhorafael;

use carrinhorafael;

-- carinho de compras Rafael
-- decimal (tipo de dados numericos não int 10,2 dez digitos com 2 casas decimais de precisão


create table carrinho (

codigo int primary key auto_increment,
produto varchar(250) not null,
quantidade int not null,
valor decimal (10,2) not null
);

describe carrinho;
drop table carrinho;

-- CRUD create

insert into carrinho(produto,quantidade,valor)
values('Caneta bic Azul CX30', 10, 17.50);  


insert into carrinho(produto,quantidade,valor)
values('Borracha Mercurio CX50', 10, 15.30);	


insert into carrinho(produto,quantidade,valor)
values('Caneta Bic vermelha CX30', 10, 17.50);	


insert into carrinho(produto,quantidade,valor)
values('Caneta Bic Preta bic CX30', 10, 17.50);	


insert into carrinho(produto,quantidade,valor)
values('Corretivo Mercurio CX20 ', 10, 37.50);  


insert into carrinho(produto,quantidade,valor)
values('Lapis de cor', 10, 17.50); 

insert into carrinho(produto,quantidade,valor)
values('Caderno Tilibra CX30', 10, 22.50);

insert into carrinho(produto,quantidade,valor)
values('Apontador Stabilo', 10, 1.00);





-- operações matematicas

select sum(valor * quantidade) as total from carrinho;


-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 

-- CRUD read
-- selecionar todods os registros (dados) da tabela

select produto, valor from carrinho;

select valor, quantidade from carrinho;

select produto, quantidade from carrinho;


-- crud (create read update delete)
-- operações basicas do banco de dados


insert into carrinho (produto, quantidade, valor)
values ('Macarrao', '100', 1.000);

insert into carrinho (produto, quantidade, valor)
values ('Cerveja', '100', 2.000);


insert into carrinho (produto, quantidade, valor)
values ('Camisa do Timão', '100', 1.000000);



-- CRUD read
-- selecionar todods os registros (dados) da tabela
-- select colunas especificas da table

select * from carrinho order by valor;
select * from carrinho order by produto;
select * from carrinho order by quantidade;

-- select em ordem alfa/nume(asc desc) 
select codigo, produto from carrinho order by codigo desc;
select codigo, produto from carrinho order by codigo asc;


-- uso de filtros

select * from carrinho where codigo = 11;
select * from carrinho where produto = 'Lapis de cor';
select * from carrinho where valor like '17.50%';

-- crud update

update carrinho set produto=  'Lapis de cor CX12' where codigo= 6;
update carrinho set quantidade= '50' where codigo= 1;
update carrinho set valor= '2000.00' where codigo= 11;


-- crude delete
-- Não esquecer de usar o id para evitar e validar o comando

delete from carrinho where codigo= 10;
delete from carrinho where codigo= 9;



select * from carrinho;

