create database dbagendarafael;
use dbagendarafael;

-- verificar tabelas existentes--

show tables;

-- criando tabela --
-- toda tabela precisa chave primaria (pk)
-- int (tipo de dados -> num inteiros -->
-- primary key --> transfomer este campo em chave primaria 
-- auto_increment --> numeração automatica
-- varchar (tipo de dados equivalente a string (50)numero max de caracter)
-- not null --> preenchimento obrigatorio
-- unique --> não pertime valores duplicados na tab
--
create table contatos(
	id int primary key auto_increment,
    nome varchar(50) not null,
    fone varchar (15) not null,
    email varchar(50) unique
);

-- descrição da tab

-- alterar o nome de um campo na tabela

-- alter table contatos change nome contato varchar(50) not null;


-- add um novo campo na tab

-- alter table contatos add column obs varchar(250);



-- add um novo campo na tab especifico

-- alter table contatos add column fone2 varchar(15) after fone;

-- modoficar tipo de dados e/ou validação na coluna

-- alter table contatos modify column fone2 int;
-- alter table contatos modify column email varchar(100) not null;

-- excluir coluna na tab 
-- alter table contatos drop column obs;



-- excluir a tab 

drop table contatos;


-- crud (create read update delete)
-- operações basicas do banco de dados
insert into contatos (nome, fone, email)
values ('Rafael Ferreira', '9999555', 'rafa@email.com');


insert into contatos (nome, fone, email)
values ('Chaves da vila', '99992222', 'chaves@email.com');


insert into contatos (nome, fone, email)
values ('Chiquinha da vila', '99993333', 'chiquinha@email.com');


insert into contatos (nome, fone)
values ('Girafales', '99994444');

insert into contatos (nome, fone, email)
values ('Gordines', '9999s666', 'gordines@email.com');



-- CRUD read
-- selecionar todods os registros (dados) da tabela


-- select colunas especificas da table

select nome, fone from contatos;

-- select em ordem alfa/nume(asc desc) 

select * from contatos order by nome;

select id, nome from contatos order by id desc;

-- uso de filtros

select * from contatos where id = 1;
select * from contatos where nome = 'Rafael ferreira';
select * from contatos where nome like 'G%';

-- crud update

update contatos set email=  'Girafales@email.com' where id= 7;
update contatos set email=  'giraafales@email.com' where id= 8;
update contatos set fone= '1111-11111' where id= 1;

-- crude delete
-- Não esquecer de usar o id para evitar e validar o comando

delete from contatos where id= 7;


select * from contatos;
describe contatos;









