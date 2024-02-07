SELECT
	E.IDEvento,
	E.Descricao AS 'Descri��o do Evento',
	CONVERT(varchar(10), e.DtHrInicio, 103) AS 'Data In�cio',
	CONVERT(varchar(5), e.DtHrInicio, 108) AS 'Hora In�cio',
	CONVERT(varchar(10), e.DtHrFim, 103) AS 'Data Fim',
	CONVERT(varchar(5), e.DtHrFim, 108) AS 'Hora Fim',
	S.Nome AS 'Nome da Sala'
FROM Evento E
LEFT JOIN Sala S
ON E.IDSala = S.IDSala
WHERE GETDATE() BETWEEN e.DtHrInicio AND e.DtHrFim --acontecendo nesse momento