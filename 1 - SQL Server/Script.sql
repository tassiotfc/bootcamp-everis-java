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

insert Produtos values
(1, 'Caneca', 'Caneca Azul', 1.5),
(2, 'Caderno', 'Caderno 10 Matérias', 1.5)

select * from Produtos;

insert Pedido values
(1, getDate(), 0, 3, 3);

insert PedidoItem values
(1, 1, 1.5, 2)

insert Pedido values
(2, getDate(), 0, 22.49, 1);

insert PedidoItem values
(2, 1, 1.5, 1),
(2, 2, 20.99, 1);

select * from Pedido;

select * from PedidoItem;

select isnull(TipoPessoa, getDate())
from clientes;

select *,
	case 
		when TipoPessoa = 'J' then 'Juridica'
		when TipoPessoa = 'F' then 'Fisica'
		else 'Pessoa Indefinida'
	end + convert(varchar, GETDATE() , 103) as PessoaCustom
from clientes;

select *,
convert(varchar, DataSolicitacao, 103) as DataBR
from Pedido;

select *
from clientes;

alter table Clientes add constraint pk_cliente primary key (Codigo)

alter table Clientes drop constraint pk_cliente;

select * from pedido;



-- drop table Teste;
