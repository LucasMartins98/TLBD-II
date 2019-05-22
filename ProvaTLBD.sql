CREATE PROCEDURE EXE01
AS 
BEGIN
	SET NOCOUNT ON
	
		/* Declarando variaveis */
		DECLARE @PRODUTO INT
		DECLARE @QTDE INT

		/* selecionando os atributos e jogando a soma da quantidade na variavel */
		SELECT ProductID, @QTDE = SUM(Quantity)
		FROM OrderDetails
		WHERE ProductID = @PRODUTO
	SET NOCOUNT OFF
END



CREATE PROCEDURE EXE02
AS
BEGIN
	SET NOCOUNT ON

	DECLARE @PRODUTO INT

	/* Verificando se a coluna não é nula */
	IF NOT EXISTS (SELECT ProductID FROM OrderDetails WHERE ProductID = @PRODUTO)
 	/* Informando que o produto não existe */
		SELECT 'Produto informado não existe'
	ELSE
		BEGIN
			DECLARE @QTD INT
			DECLARE @PRECOMEDIO FLOAT
			
			/* Selecionando as colunas e aplicando a soma e media */
			SELECT P.ProductName, @QTD = SUM(OD.Quantity), AVG(P.UnitPrice)
			FROM Products
			INNER JOIN OrderDetails OD ON P.ProductID = OD.ProductID
			WHERE P.ProductID = @PRODUTO
		END
	SET NOCOUNT OFF
END