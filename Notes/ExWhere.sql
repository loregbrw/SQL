select
	P.Nome,
	E.Descricao AS Evento,
	E.DtHrInicio AS Início,
	S.Nome AS Sala
FROM Pessoa P
INNER JOIN EventoPessoa EP
ON P.IdPessoa = EP.IdPessoa
INNER JOIN Evento E
ON E.IdEvento = EP.IdEvento 
INNER JOIN Sala s
ON S.IdSala = E.IdSala
WHERE EP.PapelEvento = 'Responsavel'