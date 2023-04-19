CREATE TABLE Products (ProductID INT AUTO_INCREMENT PRIMARY KEY,ProductName VARCHAR(30),Price INT,Quantity INT);

ALTER TABLE Products AUTO_INCREMENT=100;

INSERT INTO Products (ProductName,Price,Quantity) VALUES
('pen',10,25),
('pencil',5,10),
('scale',7,15),
('notebook',35,10);

SELECT * FROM Products;

SELECT ProductName,
CASE 
	WHEN Price>10 THEN 'price is greater than 10'
	WHEN Price<10 THEN 'price less than 10'
	WHEN Price=10 THEN 'price is 10'
END AS Price
FROM Products;

SELECT MAX(Price) AS MaxPrice,MIN(Price) AS MinPrice,SUM(Price) AS SumPrice,AVG(Price) AS AvgPrice FROM Products;

SELECT COUNT(*) AS NoOfProducts FROM Products;

INSERT INTO Products (ProductName,Price,Quantity) VALUES
('book',50,NULL);

SELECT ProductName FROM Products WHERE Quantity IS NULL;

SELECT ProductName,Price*IFNULL(Quantity,0) AS Total FROM Products;

SELECT ProductName,Price FROM Products WHERE Price BETWEEN 10 AND 40;

UPDATE Products SET Quantity=4 WHERE ProductID=104;

INSERT INTO Products (ProductName,Price,Quantity) VALUES
('box',10,30);

SELECT * FROM Products ORDER BY Price DESC,Quantity DESC;

SELECT * FROM Products WHERE ProductName LIKE 'p%';