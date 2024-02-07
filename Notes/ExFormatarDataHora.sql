SELECT
	E.IDEvento,
	E.Descricao AS 'Descrição do Evento',
	CONVERT(varchar(10), e.DtHrInicio, 103) AS 'Data Início',
	CONVERT(varchar(5), e.DtHrInicio, 108) AS 'Hora Início',
	CONVERT(varchar(10), e.DtHrFim, 103) AS 'Data Fim',
	CONVERT(varchar(5), e.DtHrFim, 108) AS 'Hora Fim',
	S.Nome AS 'Nome da Sala'
FROM Evento E
LEFT JOIN Sala S
ON E.IDSala = S.IDSala
WHERE GETDATE() BETWEEN e.DtHrInicio AND e.DtHrFim --acontecendo nesse momento