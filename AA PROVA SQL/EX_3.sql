CREATE DATABASE Mundo

USE Mundo

CREATE TABLE PA�S (
	Pa�s VARCHAR(35) PRIMARY KEY NOT NULL,
	Continente VARCHAR(35) NOT NULL,
	[Popula��o (milh�es)] FLOAT,
	[PIB (milh�es $)] FLOAT,
	Expect_Vida FLOAT
)

CREATE TABLE CIDADE (
	Cidade VARCHAR(35) PRIMARY KEY NOT NULL,
	Pa�s VARCHAR(35) NOT NULL,
	[Popula��o (milh�es)] FLOAT,
	Capital BIT NOT NULL,
	FOREIGN KEY (Pa�s)
		REFERENCES PA�S(Pa�s)
)

CREATE TABLE RIO (
	Rio VARCHAR(35) PRIMARY KEY NOT NULL,
	Nascente VARCHAR(35),
	Pa�s VARCHAR(35),
	[Comprimento (KM)] FLOAT,
	FOREIGN KEY (Nascente)
		REFERENCES PA�S(Pa�s),
	FOREIGN KEY (Pa�s)
		REFERENCES PA�S(Pa�s)
)


INSERT INTO PA�S
(Pa�s, Continente, [Popula��o (milh�es)], [PIB (milh�es $)], Expect_Vida)
VALUES
('Canada', 'America do Norte', 38.25, 1.9, 82),
('Mexico', 'America do Norte', 126.7, 1.65, 75),
('Brasil', 'America do Sul', 214.3, 1.608, 75.5),
('USA', 'America do Norte', 331.9, 21.43, 76.1),
('China', 'Asia', 1444.2, 14.34, 83),
('Alemanha', 'Europa', 83.2, 4.1, 78.1)

INSERT INTO CIDADE
(Cidade, Pa�s, [Popula��o (milh�es)], Capital)
VALUES
('Washington', 'USA', 3.3, 1),
('Monterrey', 'Mexico', 2.0, 0), 
('Brasilia', 'Brasil', 1.5, 1),
('S�o Paulo', 'Brasil', 15.0,0),
('Ottawa', 'Canada', 0.8, 1),
('Cid. Mexico', 'Mexico', 14.1, 1),
('Pequim', 'China', 21.5, 1)

INSERT INTO RIO
(Rio, Nascente, Pa�s, [Comprimento (KM)])
VALUES
('St. Lawrence', 'USA', 'USA', 3.3),
('Grande', 'USA', 'Mexico', 2.0),
('Parana', 'Brasil', 'Brasil',1.5),
('Mississipi', 'USA', 'USA', 15.0)

