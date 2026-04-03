-- Comenta somente uma linha
/* Comenta
Intervalo
*/
CREATE DataBase BD_Teste
Go
Use BD_Aula
Go
Drop Database BD_Teste
-- apaga tabela


Create table Cliente
(
Cod_Cli int not null,
Nome_Cli varchar(40)not null,
End_Cli varchar(30) not null,
Bai_Cli varchar(20) not null,
Cid_Cli varchar(20) not null,
Uf_Cli char(3) not null,
Tel_Cli varchar(15)null,
Constraint PK_Cliente Primary Key(Cod_Cli)
)
Create Table NotaFiscal(
Num_Nota int not null,
Cod_Cli int not null,
Serie_Nota varchar(10) not null,
Emissao_Nota smalldatetime null,

Constraint Pk_Notafiscal Primary Key(num_Nota),
Constraint FK_Cliente Foreign Key(Cod_Cli) References cliente(Cod_Cli)
)

-- Criação de tabelas--

Create table Cidade
(Codcidade varchar(2) not null,
Nomecidade varchar(40))

Create table Empregado
(Nrmatricula int,
Nome varchar(50),
Data_demissao datetime,
Salario float)

Create Table estado
(cdestado varchar(2) not null,
Nomeestado varchar(30))

Alter table cidade
Add primary Key (codcidade);

Alter table cidade
Add cdestado char(2) not null,
teste varchar(1) null;

Alter table cidade
Drop column teste;

Alter table cidade
Alter column cdestado varchar(2);

-- Alteração de tabela

Alter table cidade
Drop constraint PK__Cidade__9ED2CA96A1F7C82B

Alter table cidade
add constraint pk_codcidade primary key (codcidade);

Alter table estado
add primary key (cdestado);

Alter table cidade
Add foreign key (cdestado) references estado (cdestado)

Create table ParaApagar( -- Criamos uma tabela
codigo int,
descricao varchar(80)
)
Drop table ParaApagar  -- Para depois apagar essa tabela