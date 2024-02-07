SELECT
	S.Nome as Sala,
	E.Descricao as Evento,
	S.Capacidade,
	COUNT(EP.Presenca) as 'Convites',
	COUNT(CASE WHEN EP.Presenca = 1 THEN EP.Presenca END) AS 'Presenças'
FROM Sala S
RIGHT JOIN Evento E
ON S.IDSala = E.IDSala
LEFT JOIN EventoPessoa EP
ON EP.IDEvento = E.IDEvento
GROUP BY S.Nome, E.Descricao, S.Capacidade
HAVING COUNT(EP.Presenca) > S.Capacidade AND COUNT(CASE WHEN EP.Presenca = 1 THEN EP.Presenca END) <= S.Capacidade