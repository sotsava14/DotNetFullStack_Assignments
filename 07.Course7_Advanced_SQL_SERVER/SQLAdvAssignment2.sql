
CREATE PROCEDURE GetProducts
AS
BEGIN

DECLARE cursor_product CURSOR
FOR SELECT ProductName, UnitPrice, UnitsOnOrder FROM Products;

DECLARE @ProductName nvarchar(40), @UnitPrice money, @UnitsOnOrder smallint, @TotalAmount decimal;
SET @TotalAmount=0
OPEN cursor_product
FETCH NEXT FROM cursor_product 
INTO @ProductName, @UnitPrice,@UnitsOnOrder 
WHILE @@FETCH_STATUS=0
	BEGIN
	PRINT @ProductName + '-' + CAST((@UnitPrice * @UnitsOnOrder) as varchar)
	SET @TotalAmount += @UnitPrice * @UnitsOnOrder
	FETCH NEXT FROM cursor_product INTO @ProductName, @UnitPrice,@UnitsOnOrder 
	END
PRINT 'Grand Total-'+CAST(@TotalAmount AS varchar) 
CLOSE cursor_product;
DEALLOCATE cursor_product;
END

drop procedure getproducts

EXEC GetProducts

