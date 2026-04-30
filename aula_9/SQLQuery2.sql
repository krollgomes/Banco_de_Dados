select * from

Select Funcionario.primeiro_nome,Funcionario.salario,
Setor.nome_setor
from Funcionario,Setor

Select Funcionario.primeiro_nome,Funcionario.salario,
Setor.nome_setor
from Funcionario,Setor
Where Funcionario.Cod_setor = Setor.cod_setor


-- inner join o que tem entre eles --

Select f.primeiro_nome, f.salario, s.nome_setor
from Funcionario f
Inner join Setor s on f.cod_setor = s.cod_setor

Select c.nome_cliente, p.num_pedido
from cliente c
Inner join pedido p on c.cod_cliente = p.cod_cliente

-- O Left outer join é usado para retornar todos os registros a esquerda --

Select c.nome_cliente, p.num_pedido
from cliente c
Left outer join pedido p on c.cod_cliente = p.cod_cliente

-- Right outer join 

Select f.primeiro_nome, f.salario, s.nome_setor
from Funcionario f
Right outer join Setor s on f.cod_setor = s.Cod_setor

Select f.primeiro_nome, f.salario, s.nome_setor
from Funcionario f
Right outer join Setor s on f.cod_setor = s.Cod_setor

-- Full outer join -- 

Select c.nome_cliente, p.num_pedido
from cliente c
Full outer join pedido p on c.cod_cliente = p.cod_cliente

Select f.primeiro_nome, f.salario, s.nome_setor
from Funcionario
Full outer join Setor s on f.cod_setor = s.cod_setor

Select f.primeiro_nome, f.salario, s.nome_setor
from Funcionario f
Full outer join Setor s on f.cod_setor = s.cod_setor
Where f.cod_setor is null or s.Cod_setor is null

Select c.nome_cliente, p.num_pedido
from cliente c
Full outer join pedido p on c.cod_cliente = p.cod_cliente
Where c.cod_cliente is null or p.cod_cliente is null

-- cross join retorna todos os itens da tabela pr cruzamento --
Select f.primeiro_nome, f.salario, s.nome_setor
from Funcionario f
Cross join Setor s
Order by f.primeiro_nome

Select c.nome_cliente, p.num_pedido
from cliente c
Cross join pedido p
Order by c.Nome_cliente

-- Funções agregadas --

Select min(salario_fixo) AS 'Menor Salario', max(salario_fixo)AS
'Maior Salario'
from vendedor

Select c.nome_cliente, p.num_pedido
from cliente c
cross join pedido p
Order by c.nome_cliente

--AVG --

Select avg(salario_fixo) AS media_salario
from vendedor

-- count --

Select count (*) from vendedor
Where salario_fixo > 2500.00

-- Group by computar funçoes em grupo --

Select num_pedido, total_produtos = count (*)
from item_pedido
group by num_pedido

Select num_pedido, total_produtos = count (*)
from item_pedido
where quantidade > 5
group by num_pedido
having count (*) > 1