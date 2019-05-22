create function func01 (@data smalldatetime)
returns varchar(500)
as
begin

	declare @anos int 
	declare @meses int
	declare @dias int

	select @anos = DATEDIFF(YY, @data, getdate())
	select @meses = DATEDIFF(MM, @data, DATEADD(YY, @anos, @data))
	select @dias = DATEDIFF(DD, @data, DATEADD(MM, @meses, DATEADD(YY, @anos, @data)))

	return STR(@anos) + ' anos' + STR(@meses) + ' meses' + STR(@dias) + ' dias'
end

select dbo.func01('1998-01-01')

drop function func01
create function func02 (@datainicio smalldatetime)
returns varchar(500)
as
begin 
	declare @diasuteis int
	while(@datainicio <= getdate())
		begin
			if(DATEPART(DW, @datainicio) between 2 and 6)
				select @diasuteis = @diasuteis + 1 
			else
				dateadd(DD,1,@dateinicio)    
				

		end

		return @diasuteis
end

