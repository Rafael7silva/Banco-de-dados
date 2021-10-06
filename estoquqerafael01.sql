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

-- criação tab 2
-- /\ Data e hora do cadastro /\
-- \/ Data e hora YYYYMMDD \/

create table estoque(
codigo int primary key auto_increment,
barcode varchar(50) unique,
produto varchar(100) not null,
fabricante varchar(100) not null,
datacad timestamp default current_timestamp,
dataval date not null,
quantidade int not null,
estoquemin int not null,
medida varchar(50) not null,
valor decimal(10,2),
loc varchar(100)
);





insert into estoque(produto, fabricante, dataval, quantidade, estoquemin,
medida, valor, loc)
values ('Caneta bic Azul', 'BIC', 20221005, 100,10, 'CX',28.75,'setor A P2');

insert into estoque(produto, fabricante, dataval, quantidade, estoquemin,
medida, valor, loc)
values ('Caneta bic preta', 'BIC', 20221005, 100,10, 'CX',28.75,'setor A P2');

insert into estoque(produto, fabricante, dataval, quantidade, estoquemin,
medida, valor, loc)
values ('Caneta bic vermelha', 'BIC', 20221005, 100,10, 'CX',28.75,'setor A P2');

insert into estoque(produto, fabricante, dataval, quantidade, estoquemin,
medida, valor, loc)
values ('Caneta bic verde', 'BIC', 20221005, 100,10, 'CX',28.75,'setor A P2');

insert into estoque(produto, fabricante, dataval, quantidade, estoquemin,
medida, valor, loc)
values ('Caderno Tilibra CX30', 'Tilibra', 20211210, 200,10, 'CX',48.75,'setor B P2');

insert into estoque(produto, fabricante, dataval, quantidade, estoquemin,
medida, valor, loc)
values ('Corretivo Mercurio CX20', 'Mercurio', 20210922, 200,10, 'CX',37.50,'setor B P2');

insert into estoque(produto, fabricante, dataval, quantidade, estoquemin,
medida, valor, loc)
values ('Caderno Tilibra CX30', 'Tilibra', 20211210, 200,10, 'CX',48.75,'setor B P2');

insert into estoque(produto, fabricante, dataval, quantidade, estoquemin,
medida, valor, loc)
values('Lapis de cor','faber', 20210819, 10,5, 'CX', 22.50,'setor A P2');

-- relatori de validades dos produtos

select codigo as codigo, produto,
date_format(dataval, '%d/%m/%y') as data_validade, datediff(dataval, curdate())
as dias_restantes from estoque;


update estoque set produto=  'Corretivo Mercurio CX50' where codigo= 6;

update estoque set produto= 'Caneta bic Azul brilhante',fabricante= 'Bic',dataval= 20251219, 
quantidade= 15,estoquemin= 50,medida= 'CX', valor= 17.90, loc= 'setor B P2' where codigo= 1;

delete from estoque where codigo= 8;


describe estoque;
select * from estoque;











