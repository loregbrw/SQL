SELECT
	P.Continente,
	SUM(P.[PIB (milhões $)]) / COUNT(P.[PIB (milhões $)]) AS 'PIB médio'
FROM PAÍS P
GROUP BY P.Continente
