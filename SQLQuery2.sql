--1
select Filmes.Nome, Filmes.Ano from dbo.Filmes;

--2
select Filmes.Nome, Filmes.Ano, Filmes.Duracao from dbo.Filmes order by Filmes.Ano ASC;

--3
select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro';

--4
select * from Filmes where Ano = 1997;

--5
select * from Filmes where Ano > 2000;

--6
select * from Filmes where Duracao > 100 and Duracao < 150 order by Duracao ASC;

--7
select f.Ano, Count(*) as Quantidade from filmes as f group by f.Ano order by COUNT(f.Duracao) DESC

--8
select * from Atores where Genero = 'M'

--9
select * from Atores where Genero = 'F' order by PrimeiroNome

--10
select f.Nome, gen.Genero from Filmes f join FilmesGenero g on f.Id = g.IdFilme join Generos gen on gen.Id = g.IdGenero

--11
select f.Nome, gen.Genero from Filmes f join FilmesGenero g on f.Id = g.IdFilme join Generos gen on gen.Id = g.IdGenero where gen.Genero = 'Mistério'

--12
select f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel from Filmes f join ElencoFilme e on f.Id = e.IdFilme join Atores a on e.IdAtor = a.Id