USE ShoppingCartDb;

CREATE TABLE Products
(
ProductId INT, 
Name VARCHAR(50),
QuantityInStock INT, 
UnitPrice INT, 
Category VARCHAR(50)
);

CREATE VIEW Products_less_than_Average_Price AS
SELECT * FROM Products
WHERE UnitPrice < (SELECT AVG(UnitPrice) FROM Products);

SELECT * FROM Products_less_than_Average_Price;

EXEC sp_rename 'Products_less_than_Average_Price', 'Low_Cost_Products';

SELECT * FROM Low_Cost_Products;

DROP VIEW Low_Cost_Products;


