create database ecomerce;

use ecomerce;

create table Produtos
(
	Codigo int,
	Nome varchar(100),
	Descricao varchar(200),
	Preco float	
)

select * from Produtos;

create table Clientes
(
	Codigo int not null,
	Nome varchar(200) not null,
	TipoPessoa char(1) not null,
)

select * from Clientes;

create table Pedido
(
	Codigo int not null,
	DataSolicitacao datetime not null,
	FlagPago bit not null,
	TotalPedido float not null,
	CodigoCliente int not null
)

select * from Pedido;

create table PedidoItem
(
	CodigoPedido int not null,
	CodigoProduto int not null,
	Preco float not null,
	Quantidade int not null
)

select * from PedidoItem;

insert into Clientes (Codigo, Nome, TipoPessoa) 
values 
(1, 'Thiago', 'F'),
(2, 'Pedro', 'F'),
(3, 'Maria', 'F'),
(4, 'Augusto', 'F')
;

insert into Clientes (Codigo, Nome, TipoPessoa) 
values 
(5, 'Nike', 'J'),
;

insert into Clientes (Codigo, Nome, TipoPessoa) 
values 
(5, 'Adidas', 'J')
;

select * from Clientes;

select Nome from Clientes;

select * from Clientes where TipoPessoa = 'J';

update Clientes set Codigo = 6 AND Nome = 'Adidas' where TipoPessoa = 'J';

delete from clientes where Nome = 'Adidas';

-- drop table Teste;