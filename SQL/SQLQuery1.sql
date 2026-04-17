-- Carolina Gomes de Oliveira--


-- Exercício 1-- 

Create table tbl_Professores(
ID int identity (1,1) Primary key,
Nome Varchar(50),
Disciplina varchar(15));


select * from tbl_Professores

-- exercício 2 --

insert into tbl_Professores
(nome,Disciplina)
Values
('Ana Oliveira', 'Portugues');

-- exercício 3 --

update tbl_Professores
set nome='Ana Silva'
where ID=1

-- exercício 4 -- 

insert into tbl_Professores
(Nome,Disciplina)
Values
('Maria', 'Ingles'),
('joao', 'Matemtica'),
('Vinicius', 'Educaca_fisica'),
('Ana', 'Quimica'),
('Carlos', 'Artes'),
('Augusto','Informatica'),
('Vitor','Estatistica'),
('Jones','Banco_de_dados'),
('Monica', 'Algebra'),
('Gustavo','Fisica');

-- exercício 5 --

delete From tbl_Professores
where id= '2'

-- exercicio 6 --

Create table tbl_Turma(
ID int identity (1,1) Primary key,
Nome Varchar(50),
Professor_responsavel int,
Constraint FK_Professor_Responsavel Foreign Key (Professor_responsavel) References Tbl_Professores(ID))

select * from tbl_Turma

-- exercicios 7 -- 

insert into tbl_Turma
(nome, Professor_responsavel)
Values
('9A',1);

-- exercicios 7 -- 

insert into tbl_Turma
(Nome,Professor_responsavel)
Values
('9A', '1'),
('3C', '3'),
('2A', '4'),
('3C', '5'),
('5C', '6'),
('2A','3'),
('7A','8'),
('5C','3'),
('9A', '9'),
('2A','9');


-- exercicios 8 --

Create table tbl_Alunos(
ID int identity (1,1) Primary key,
Nome Varchar(50),
Data_de_Nascimento date,
TurmaID int,
Constraint FK_TurmaID Foreign Key (TurmaID) References tbl_Turma(ID))

select * from tbl_Alunos




