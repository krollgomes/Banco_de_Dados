-- Funções DE DATA E HORA--

Select DATENAME (yy,getdate())
Select DATENAME(month,getdate())

Select datepart (MM, getdate())
Select datepart (month, getdate())

-- Day --
-- Retorna um inteiro que reprenat a parte do ano da date especificada --

select day (getdate())

-- Month (date) --
select month (getdate())

-- year (date) --
-- retorna um inteiro que representa a parte do ano da date especificada

select year (getdate())

-- datediff (datepart, stardate, enddate) --
-- Retorna o numero de limitesde datepart de data ou hora entre duas datas especificas --

select datediff (yy, '05-02-1987', getdate())
select datediff (yy, getdate(), getdate() +720)

select datediff (mm, '05-02-1987', getdate())
select datediff (mm, getdate(), getdate()+720)

select datediff (dd, '05-02-1987', getdate())
select datediff (dd, getdate(), getdate()+720)

select datediff (hh, '05-02-1987', getdate())
select datediff (hh, getdate(), getdate()+720)

select datediff (mi, '05-02-1987', getdate())
select datediff (mi, getdate(), getdate()+720)

select datediff (ss, '05-02-1987', getdate())
select datediff (ss, getdate(), getdate()+720)

select datediff (ms, '05-02-1987', getdate())
select datediff (ms, getdate(), getdate()+720)

-- dateadd (datepart, number, date) --
-- adiciona um valor a parte de uma data. Retorna um novo valor datetime adicionando um intervalo á datepart--
-- especificada da date especificada --

select dateadd (yy, 1, getdate())
select datename(month,(dateadd(month,3,getdate())))

-- isdate verifica se a data é verdadeira --

select isdate('27-02-2023')
select isdate('30-02-2023')

-- Convert --
-- convert um tipo de dado --

select convert(char,getdate(),103)
select convert(char, getdate(),113)

-- Funções matematica --
-- Round arredonda numeros com o m=numero de digitos de prev=cisão indicados --

select round(123.3467,3)
select round(123.3467,2)
select round(123.3467,1)
select round(123.5467,1)
select round(123.3467,0)
select round(123.3467,-1)
select round(123.3467,-2)

-- floor retorna o maior inteiro --

select floor(123.45)

--power --
-- Calcula a potencia de um numero --
select power(4,2)
select power(2,2)

-- charindex --
-- mostra a posiçao da palavra que esta pesquisando --

select charindex ('Mundo', 'Ola Mundo Bonito')
select charindex ('Mundo', 'Ola Mundo Bonito',3)
select charindex ('Mundo', 'Ola Mundo Bonito',6)


-- Replace--
-- troca de caracteres --

select replace('abcdefghicde', 'cde', 'xxx')
select replace(primeiro_nome,'c','z') from funcionario

--Stuff--
-- insere quantidade de caracter que será trocado --

select stuff('abcdef',2,3,'_ijklmn_')

-- left --
-- retorna a parte esquerda de uma cadeia de caracteres com o numero de caracters especificado --

select left('abcdefgh',5)

-- Right -- 
-- retorna a parte da direita de uma cadeia de caracteres com o numero de caracteres especificado

select right('abcdefgh',5)

-- Replicate --
-- repete um valor de cadeia de caracteres um numero especificado de vezes

select replicate('ABC',3)

-- Substring --
-- retorna parte de uma expressão de caracter

select substring('ABCDEFGHIJ',2,3)

-- lEN -- 
-- Retorna o numero de caracteres da expressão da cadeia de caracteres especificada, excluindo espaços em branco a direita --

select len ('ABCD')
select len('ABCD    ')

-- lower --
-- retorna uma expressão de caractere depois de converter para minusculas os dados de caracteres em maiusculas --

select lower('ABCD')
SELECT lower(primeiro_nome) from Funcionario

-- upper -- 
-- converte em minusculo para maiusculo --

select upper('abCd')
SELECT upper(primeiro_nome) from Funcionario

--Ltrim -- 
-- retorna uma expressão depois de remover espaços em branco a esquerda --

select '_'+ltrim('    AbCD    ')+'_'

-- RTRIM -- 
-- retorna uma expressão de caractere depois de remover espaços em branco á direita

select '_'+rtrim('    AbCD    ')+'_'




