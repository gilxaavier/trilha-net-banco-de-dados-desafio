--Objetivo
--Voc� dever� criar diversas consultas, com o objetivo de retornar os dados a seguir. Abaixo de cada pedido tem o retorno esperado. O seu retorno deve ser igual ao da imagem.

--1 - Buscar o nome e ano dos filmes
SELECT NOME, ANO FROM FILMES

--2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT * FROM Filmes ORDER BY ANO ASC

--3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT * FROM Filmes WHERE NOME = 'de volta para o futuro'

--4 - Buscar os filmes lan�ados em 1997
SELECT * FROM FILMES WHERE ANO = 1997

--5 - Buscar os filmes lan�ados AP�S o ano 2000
SELECT * FROM FILMES WHERE ANO > 2000

--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT NOME, ANO, DURACAO FROM FILMES WHERE DURACAO > 100 AND DURACAO < 150 ORDER BY Duracao ASC

--7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT ANO, COUNT(*) AS QUANTIDADE FROM Filmes GROUP BY ANO ORDER BY QUANTIDADE DESC

--8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE GENERO = 'M'

--9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE GENERO = 'F' ORDER BY PrimeiroNome

--10 - Buscar o nome do filme e o g�nero
SELECT FILMES.NOME, GENEROS.Genero FROM FILMES
INNER JOIN FilmesGenero AS FG ON FILMES.Id = FG.IdFilme
INNER JOIN Generos ON Generos.Id = FG.IdGenero

--11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT FILMES.NOME, GENEROS.Genero FROM FILMES
INNER JOIN FilmesGenero AS FG ON FILMES.Id = FG.IdFilme
INNER JOIN Generos ON Generos.Id = FG.IdGenero WHERE Genero = 'Mist�rio'

-- 12 -Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT FILMES.NOME, Atores.PrimeiroNome, Atores.UltimoNome,EF.Papel FROM FILMES
INNER JOIN ElencoFilme AS EF ON FILMES.Id = EF.IdFilme
INNER JOIN Atores ON Atores.Id = EF.IdAtor









