create function funcao (@texto varchar (45), @tipotexto int)
returns varchar (40)
as
begin	


	begin
		
		select @texto = replicate('*',CHARINDEX('@',@texto)-1) + SUBSTRING(@texto, charindex('@',@texto), len(@texto))
		return @texto
	end

	begin		
		select @texto = replicate('*', len(@texto) * 0.7) + SUBSTRING(@texto, len(@texto) * 0.3, len(@texto) * 0.7 - len(@texto) * 0.3 -1)
		return @texto
	end
	
	begin
		select @tipotexto = SUBSTRING(@tipotexto, 0,5)+ '-'+ REPLICATE('*',1) + SUBSTRING(@tipotexto, 12, len(@texto) -11)
		return @tipotexto
	end
end
select dbo.funcao()	
	