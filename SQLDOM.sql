SELECT
	S.Nome, SUM(DATEDIFF(MINUTE, e.DtHrInicio, e.DtHrFim)) AS Minutes
FROM Sala S
INNER JOIN Evento E
ON E.IDSala = s.IDSala
GROUP BY S.Nome