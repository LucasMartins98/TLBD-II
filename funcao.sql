/*
		create function NomedaFuncao (@par1 formato, @par2 formato, @par3 formato)
		return formato
		as
		begin




		returns
		end



		funçao retorna valor
		procedure nção retorna valor

		len() -> retorna o tamanho no formato int

		substring (variavel/string, posicao,qtde) - string end
		|-> ex @var1 = valter
		select substring(@var1,2,2)-> al
								|>posiçaõ inicial, dps 2 letras


*/




create function funcao (@var1 varchar (45), @var2 char)
returns int
as
begin
	declare @laco int
	select @laco = 1
	declare @count int 
	select @count = 0
	while @laco < len(@var1)
		begin
			if (SUBSTRING(upper(@var1), @laco,1) = upper(@var2)) select @count = @count + 1
			select @laco = @laco + 1
end
		return @count
		end

		select dbo.funcao('Maikon','m')



drop function funcao