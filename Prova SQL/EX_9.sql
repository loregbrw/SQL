CREATE FUNCTION fSum ()
RETURNS FLOAT AS
BEGIN
RETURN (
	SELECT
		SUM(C.[População (milhões)])
	FROM CIDADE C
	)
END

CREATE FUNCTION fCount ()
RETURNS FLOAT AS
BEGIN
RETURN (
	SELECT
		COUNT(C.[População (milhões)])
	FROM CIDADE C
	)
END


SELECT
	C.Cidade,
	P.País,
	C.[População (milhões)],
	CASE WHEN C.[População (milhões)] > dbo.fSum() / dbo.fCount() THEN 'Acima da média' ELSE 'Abaixo ou igual à média' END AS 'Situação População'
FROM PAÍS P
INNER JOIN CIDADE C
ON P.País = C.País
