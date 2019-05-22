/*
create function funcao (@media int)
returns varchar (40)
as
begin	
	
	declare @var varchar (40)

	
		if  @media > 75 
			begin
				select @var = 'Aprovado'	
			end
		

		
		if @media > 25 and @media < 75
			begin
				select @var = 'Recuperação'
			end
		

		if @media  < 25
			begin
				select @var = 'Repovado'
			end
				
				return @var
end

--------------------------------------------------------------------------
select A.RM, A.NOME, M.DESCRICAO, AVG(MENCAO)
from alunos A
inner join cursos C on C.CODIGO = A.CURSO
inner join notas N on N.RM = A.RM
inner join materias M on M.CODIGO = N.MATERIA AND M.CURSO = A.CURSO
WHERE C.DESCRICAO = 'INFORMATICA'
GROUP BY A.RM, A.NOME, M.DESCRICAO
ORDER BY A.RM, A.NOME, M.DESCRICAO
-- -------------------------------------------------- 
declare @RM int
declare @nome varchar(40)

declare alunos_cursor cursor for select A.RM, A.NOME 
                          from alunos A 
						  where A.CURSO = (select CODIGO from cursos where DESCRICAO = 'INFORMATICA')
open alunos_cursor

fetch next from alunos_cursor into @RM, @nome

while @@FETCH_STATUS = 0
begin
	
	
	fetch next from alunos_cursor into @RM, @nome
end

close alunos_cursor

deallocate alunos_cursor
------------------------------------------------------
select M.DESCRICAO, AVG(MENCAO)
from alunos A
inner join cursos C on C.CODIGO = A.CURSO
inner join notas N on N.RM = A.RM
inner join materias M on M.CODIGO = N.MATERIA AND M.CURSO = A.CURSO
WHERE A.RM = 1 
GROUP BY M.DESCRICAO
ORDER BY M.DESCRICAO

*/

CREATE PROCEDURE EXEC02
AS
BEGIN
	SET NOCOUNT ON

	DECLARE @DATA smalldatetime
	SELECT @DATA = GETDATE()

	SELECT A.RM, N.MATERIA, AVG(N.MENCAO) MEDIA
	INTO #TEMPORARIA
	FROM alunos A
	INNER JOIN notas N on N.RM = A.RM
	INNER JOIN materias M on M.CODIGO = N.MATERIA
	GROUP BY A.RM, N.MATERIA
	ORDER BY A.RM, N.MATERIA

	ALTER TABLE #TEMPORARIA ADD SITUACAO VARCHAR(25)

	UPDATE #TEMPORARIA SET SITUACAO = 'APROVADO' WHERE MEDIA > 80
	UPDATE #TEMPORARIA SET SITUACAO = 'CONSELHO' WHERE MEDIA >= 65 AND MEDIA <= 80
	UPDATE #TEMPORARIA SET SITUACAO = 'REPROVADO' WHERE SITUACAO IS NULL

	INSERT progressao SELECT RM, @DATA, MATERIA, MEDIA, SITUACAO FROM #TEMPORARIA

	DROP TABLE #TEMPORARIA
	SELECT * FROM progressao
	TRUNCATE TABLE progressao 




	/*select M.DESCRICAO, AVG(MENCAO)
	from alunos A
	inner join cursos C on C.CODIGO = A.CURSO
	inner join notas N on N.RM = A.RM
	inner join materias M on M.CODIGO = N.MATERIA AND M.CURSO = A.CURSO
	WHERE A.RM = 1 
	GROUP BY M.DESCRICAO
	ORDER BY M.DESCRICAO
	
	declare alunos_cursor cursor for select A.RM, A.NOME 
                          from alunos A 
						  where A.CURSO = (select CODIGO from cursos where DESCRICAO = 'INFORMATICA')
	open alunos_cursor

	fetch next from alunos_cursor into @RM, @NOME

	while @@FETCH_STATUS = 0
	begin
		select 'RM:' + LTRIM(STR(@RM)) + ', NOME:' + @NOME
		select M.DESCRICAO, AVG(MENCAO)
		from alunos A
		inner join cursos C on C.CODIGO = A.CURSO
		inner join notas N on N.RM = A.RM
		inner join materias M on M.CODIGO = N.MATERIA AND M.CURSO = A.CURSO
		WHERE A.RM = @RM 
		GROUP BY M.DESCRICAO
		ORDER BY M.DESCRICAO
		fetch next from alunos_cursor into @RM, @NOME
	end

	close alunos_cursor

	deallocate alunos_cursor


	IF (@MEDIA >= 80)
		BEGIN
			SELECT @SITUACAO = 'Aprovado'
			INSERT INTO progressao(RM, MATERIA, MEDIA, SITUACAO)
			VALUES (@RM, @MATERIA, @MEDIA, @SITUACAO)
		END	
	
	IF (@MEDIA > 65 and @MEDIA < 80)
		BEGIN
			SELECT @SITUACAO = 'Conselho'
			INSERT INTO progressao(RM, MATERIA, MEDIA, SITUACAO)
			VALUES (@RM, @MATERIA, @MEDIA, @SITUACAO)
		END		
						
		

	IF (@MEDIA  <= 65)
		BEGIN
			SELECT @SITUACAO = 'Reprovado'
			INSERT INTO progressao(RM, MATERIA, MEDIA, SITUACAO)
			VALUES (@RM, @MATERIA, @MEDIA, @SITUACAO)
		END		*/

	SET NOCOUNT OFF

END 

EXEC EXEC01