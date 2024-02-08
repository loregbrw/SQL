SELECT 
	E.Descricao AS 'Evento',
	S.Nome AS 'Sala',
	COUNT(CASE WHEN EP.Presenca = 1 THEN EP.Presenca END) AS 'Qtd Pessoas',
	CONVERT(VARCHAR(10), E.DtHrInicio, 103) AS 'Inicio',
	CONVERT(varchar(5), e.DtHrInicio, 108) AS 'Hora Início'
FROM Evento E
INNER JOIN Sala S
ON S.IDSala = E.IDSala
INNER JOIN EventoPessoa EP
ON E.IDEvento = EP.IDEvento
GROUP BY E.Descricao, S.Nome, E.DtHrInicio
ORDER BY E.DtHrInicio ASC

CREATE FUNCTION fSelect (@EVENTO VARCHAR)
RETURNS TABLE AS
RETURN (
	SELECT TOP 1
		S.Nome,
		COUNT(EP.IDEventoPessoa) AS 'Qtd Pessoas'
	FROM Sala S
	INNER JOIN Evento E
	ON E.IDSala = S.IDSala
	INNER JOIN EventoPessoa EP
	ON EP.IDEvento = E.IDEvento
	GROUP BY S.Nome, E.DtHrInicio
	ORDER BY E.DtHrInicio
)

SELECT * FROM fSelect('Aula')