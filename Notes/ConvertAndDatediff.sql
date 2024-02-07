SELECT
	S.Nome,
	CONVERT(VARCHAR(10), e.DtHrInicio, 103) AS 'Data',
	DATEDIFF(HOUR, e.DtHrInicio, e.DtHrFim) AS 'Horas'
FROM Sala S
INNER JOIN Evento E
ON S.IDSala = E.IDSala