/*DEclarando variavel e atribuindo valor */


DECLARE @VALOR1 INT
SELECT @VALOR1 = 5

DECLARE @VALOR2 INT
SELECT @VALOR2 = 4


SELECT @VALOR1 + @VALOR2 AS 'SOMA'
SELECT @VALOR1 - @VALOR2 AS 'SUBTRAÇÃO'
SELECT @VALOR1 * @VALOR2 AS 'MULTIPLICAÇÃO'
SELECT @VALOR1 / @VALOR2 AS 'DIVISÃO'


/* -------------------------------------------------------------------------------------------------- */



DECLARE @VALOR3 INT
SELECT @VALOR3 = 5

DECLARE @VALOR4 INT
SELECT @VALOR4 = 0

IF @VALOR3 != 0 AND @VALOR4 != 0

BEGIN 

SELECT @VALOR3 + @VALOR4 AS 'SOMA'
SELECT @VALOR3 - @VALOR4 AS 'SUBTRAÇÃO'
SELECT @VALOR3 * @VALOR4 AS 'MULTIPLICAÇÃO'
SELECT @VALOR3 / @VALOR4 AS 'DIVISÃO'

END


/* -------------------------------------------------------------------------------------------------- */



DECLARE @LACO INT = 0

IF @LACO < 10

BEGIN
SELECT @LACO = @LACO + 1
SELECT @LACO
END
SELECT 'ACABOU'


/* -------------------------------------------------------------------------------------------------- */


DECLARE @LACO2 INT = 0

WHILE @LACO2 < 10

BEGIN
SELECT @LACO2 = @LACO2 + 1
SELECT @LACO2
END
SELECT 'ACABOU'


/* -------------------------------------------------------------------------------------------------- */

DECLARE @LACO1 INT = 0 

WHILE @LACO1 < 10 (SELECT @LACO1 = @LACO1 + 1)
SELECT @LACO1 
SELECT 'ACABOU'


/* -------------------------------------------------------------------------------------------------- */

/* Data 12/03/2019 */


/* Cursor - passando linha a linha 
	Sempre e uma comando SELECT 
		


*/

/*

declare @varA int, @varB varchar(10), @varC float,
declare nomedocursor 
cursor for select colunaA, colunaB, colunaC 
from trabela 
where <condiçao>

Open nomedocursor
fetch next from nomdocursor into @varA, @varB, @varC
while @@fetch_status = 0
begin
	.
	.
	.
	fetch next from nomedocursor into @varA, @varB, @varC
end
close nomedocursor
deallocate nomedocursor

*/




