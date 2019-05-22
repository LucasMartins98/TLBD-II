/* declarar variavel
	DECLARE @NAMEVARIAVEL formato
	
	jogar um valor na var
	select @var = valor */

	declare @var1 int = 5;
	declare @var2 int = 0;
	
	if @var1 != 0 and @var2 != 0
		begin
			select @var1 + @var2 as 'Soma' 
			select @var1 - @var2 as 'Subtração'
			select @var1 * @var2 as 'Multiplicação'
			select @var1 / @var2 as 'Divisão'
		end

	declare @laco int
	select @laco = 10

	while @laco < 10
	begin
	select @laco = @laco + 1
	select @laco
	end
	select 'acabou ' + convert(varchar(02),@laco)
	