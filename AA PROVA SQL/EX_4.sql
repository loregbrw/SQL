SELECT
	P.Continente,
	SUM(P.[PIB (milh�es $)]) / COUNT(P.[PIB (milh�es $)]) AS 'PIB m�dio'
FROM PA�S P
GROUP BY P.Continente
