CREATE DATABASE ShoppingCartDb

USE ShoppingCartDb

CREATE TABLE Users
(
UserId INT PRIMARY KEY, 
Username VARCHAR(50),
Password VARCHAR(50), 
ContactNumber VARCHAR(50), 
City VARCHAR(50)
)

CREATE TABLE Products
(
ProductId INT, 
Name VARCHAR(50) NOT NULL,
QuantityInStock INT NOT NULL, 
UnitPrice INT NOT NULL, 
Category VARCHAR(50) NOT NULL,
CONSTRAINT PK_Prods_PrID PRIMARY KEY (ProductId),
CONSTRAINT CHK_Prods_QIS CHECK (QuantityInStock > 0),
CONSTRAINT CHK_Prods_UP CHECK (UnitPrice > 0),
)

CREATE TABLE Cart
(
Id INT PRIMARY KEY, 
CartId INT NOT NULL, 
ProductId INT,
Quantity INT NOT NULL CHECK (Quantity > 0),
CONSTRAINT FK_Cart_Prds FOREIGN KEY (ProductId) REFERENCES Products(ProductId),
)

INSERT INTO Users VALUES(123,'Praneetha','OneD','9876543210','Vijayawada');
INSERT INTO Users VALUES(234,'Yamuna','NCC','9876543211','Vizag');
INSERT INTO Users VALUES(345,'Prashanth','RC','9876543190','Vijayawada');
INSERT INTO Users VALUES(456,'Harshitha','BTS','9874563210','Hyderabad');
INSERT INTO Users VALUES(567,'Ajay','Vegan','7896543210','Vijayawada');

INSERT INTO Products VALUES(1,'Watch',56,300,'Electronics');
INSERT INTO Products VALUES(2,'Shoes',34,3000,'Footwear');
INSERT INTO Products VALUES(3,'Shirt',345,4500,'CasualWear');
INSERT INTO Products VALUES(4,'Pant',12,3540,'FormalWear');
INSERT INTO Products VALUES(5,'Sunglasses',3,500,'Spectacles');


INSERT INTO Cart VALUES(99,89,1,2);
INSERT INTO Cart VALUES(98,88,2,1);
INSERT INTO Cart VALUES(97,87,3,1);
INSERT INTO Cart VALUES(96,86,4,4);
INSERT INTO Cart VALUES(95,85,5,6);


SELECT * FROM Products;
SELECT * FROM Products WHERE Category='FormalWear';
SELECT * FROM Products WHERE UnitPrice>1000 AND UnitPrice<10000;
SELECT * FROM Products WHERE ProductId=3;

SELECT * FROM Cart WHERE CartId=85;

SELECT Name, QuantityInStock, UnitPrice, Category 
FROM Products
INNER JOIN Cart
ON  Products.ProductId = Cart.ProductId; 

SELECT * FROM Users;
SELECT * FROM Users WHERE ContactNumber='9876543210';
SELECT * FROM Users WHERE UserId=456;




