SELECT
	P.Nome,
	COUNT(EP.Presenca) as Qtd
FROM  Pessoa P
LEFT JOIN EventoPessoa EP
ON P.IDPessoa = EP.IDPessoa
GROUP BY P.Nome
ORDER BY Qtd desc