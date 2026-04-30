-- Carolina Gomes de Oliveira--


-- Exerc cio 1-- 

Create table tbl_Professores(
ID int identity (1,1) Primary key,
Nome Varchar(50),
Disciplina varchar(15));


select * from tbl_Professores

-- exerc cio 2 --

insert into tbl_Professores
(nome,Disciplina)
Values
('Ana Oliveira', 'Portugues');

-- exerc cio 3 --

update tbl_Professores
set nome='Ana Silva'
where ID=1

-- exerc cio 4 -- 

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

-- exerc cio 5 --

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

-- exercicios 8 -- 

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


-- exercicios 9 --

Create table tbl_Alunos(
ID int identity (1,1) Primary key,
Nome Varchar(50),
Data_de_Nascimento date,
TurmaID int,
Constraint FK_TurmaID Foreign Key (TurmaID) References tbl_Turma(ID))

select * from tbl_Alunos

-- exercicio 10 -- 

insert into tbl_Alunos
(nome,data_de_nascimento,turmaid)
Values
('Maria Souza', '2005-10-15', 1);

-- exercicio 11--

update tbl_Alunos
set nome='Maria da Silva'
where ID=1;


-- exercicio 12 --

insert into tbl_Alunos
(nome, data_de_nascimento)
VALUES
('Carol', '05-02-1987'),
('Vinicius', '26-02-1985'),
('Andreia', '02-06-1989'),
('Cristiane', '21-04-1985'),
('Valentina', '06-08-2020'),
('Isabela', '06-07-2025'),
('Nelides', '09-06-1961'),
('Gerliane', '18-06-1986'),
('Alice', '29-09-2014'),
('Marilisa', '24-09-1966');

SELECT * FROM tbl_Alunos;

-- exercico 13 -- 

delete From tbl_Alunos
where id= '2'

-- exercicio 14 -- 

Create table tbl_Notas(
ID int identity (1,1) Primary key,
AlunoID int,
Disciplina Varchar(15),
Nota decimal(5,2),
Constraint FK_AlunoID Foreign Key (AlunoID) References tbl_Alunos(ID)
);

SELECT * FROM tbl_Notas;

-- exercico 15 -- 

insert into tbl_Notas
(alunoid, disciplina, nota)
VALUES
(1, 'Matematica', '8.5');

-- exercico 16 -- 

update tbl_Notas
set nota=9.0
WHERE AlunoID = 1 AND Disciplina = 'Matemática';

-- exercicio 17 -- 

insert into tbl_Notas
(disciplina, nota)
VALUES
('Ingles', '9.5'),
('Matematica', '8.5'),
('Educacao Fisica', '6.0'),
('Artes', '6.5'),
('Algebra', '6.5'),
('Estatistica', '2.0'),
('Quimica', '5.5'),
('Fisica', '7.0'),
('Informatica', '8.0'),
('Banco_de_Dados', '9.0');

-- exercico 18 --

DELETE FROM tbl_Notas
WHERE AlunoID = 1 AND Disciplina = 'Matemática';

-- exercicio 19 --

Create table tbl_Matriculas(
ID int identity (1,1) Primary key,
AlunoID int,
turmaid int,
DataMatricula date,
Constraint FK_AlunoID Foreign Key (AlunoID) References tbl_Alunos(ID),
Constraint FK_turmaID Foreign Key (turmaID) References tbl_turma(ID)
);

SELECT * FROM tbl_Matriculas;

-- exercicio 20 --

insert into tbl_Matriculas
(alunoid, turmaid, datamatricula)
VALUES
(1, 1, '2022-02-15');

-- exercico 21 -- 

INSERT INTO tbl_Matriculas 
(AlunoID, TurmaID, DataMatricula)
VALUES
(1, 1, '2022-01-10'),
(2, 1, '2022-01-11'),
(3, 2, '2022-01-12'),
(1, 2, '2022-01-13'),
(2, 2, '2022-01-14'),
(3, 1, '2022-01-15'),
(1, 1, '2022-01-16'),
(2, 1, '2022-01-17'),
(3, 2, '2022-01-18'),
(1, 2, '2022-01-19');







