select b.nome, count(e.codigo_emprestimo) as total from banco b
inner join emprestimo e on b.codigo_banco = e.codigo_banco
group by b.nome;