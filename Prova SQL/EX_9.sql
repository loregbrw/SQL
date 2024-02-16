CREATE FUNCTION fSum ()
RETURNS FLOAT AS
BEGIN
RETURN (
	SELECT
		SUM(C.[Popula��o (milh�es)])
	FROM CIDADE C
	)
END

CREATE FUNCTION fCount ()
RETURNS FLOAT AS
BEGIN
RETURN (
	SELECT
		COUNT(C.[Popula��o (milh�es)])
	FROM CIDADE C
	)
END


SELECT
	C.Cidade,
	P.Pa�s,
	C.[Popula��o (milh�es)],
	CASE WHEN C.[Popula��o (milh�es)] > dbo.fSum() / dbo.fCount() THEN 'Acima da m�dia' ELSE 'Abaixo ou igual � m�dia' END AS 'Situa��o Popula��o'
FROM PA�S P
INNER JOIN CIDADE C
ON P.Pa�s = C.Pa�s
