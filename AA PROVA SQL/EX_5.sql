SELECT TOP 1
	P.Continente,
	R.Rio,
	R.[Comprimento (KM)]
FROM PAÍS P
INNER JOIN RIO R
ON P.País = R.País
ORDER BY R.[Comprimento (KM)] DESC