SELECT TOP 1
	P.Continente,
	R.Rio,
	R.[Comprimento (KM)]
FROM PA�S P
INNER JOIN RIO R
ON P.Pa�s = R.Pa�s
ORDER BY R.[Comprimento (KM)] DESC