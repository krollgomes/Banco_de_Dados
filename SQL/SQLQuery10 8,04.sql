select * from estado
select * from cidade



insert into estado
values
('SP', 'São Paulo');

insert into cidade
values
('1', 'Votorantim','SP');

insert into cidade(Codcidade, Nomecidade, Cdestado)
Values('2', 'Sorocaba', 'SP');


Insert into cidade(Codcidade, Nomecidade, Cdestado)
Values('3', 'Itu', 'NN');

Insert into cidade(Codcidade, Nomecidade, Cdestado)
Values('4', 'Itapira', 'NN');

Insert into estado
values
('NN', 'NAO CADASTRADO');

-- Atualizando dados--

Update Cidade
Set cdestado= 'SP'
Where Cdestado='NN'

-- Excluindo dados --
-- remove linhas de uma tabela--

Delete from Estado
Where cdestado='SP'

Delete From Cidade
Where Nomecidade= 'Itapira'

-- Auto Incremento--

create table tb1_clientes(
codigo int identity (1,1) PRIMARY Key,
nome Varchar(100),
UF Varchar(2));

select * from tb1_clientes

Insert into tb1_clientes
(nome, UF)
Values
('Nicholas', 'RS');

insert into tb1_clientes
(nome, UF)
Values
('Carol', 'SP'),
('Skywalker','SP'),
('Bruce', 'SP');

Delete from tb1_clientes
where codigo=6

-- Para saber o valor atual do Identy, basta usar o seguinte comando:

Select IDENT_CURRENT('tbl_clientes)