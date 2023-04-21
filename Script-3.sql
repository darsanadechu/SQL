#Table1
CREATE TABLE Orders (orderID INT NOT NULL,customerID INT,employeeID INT,oderDate DATE,shipperID int);

INSERT INTO Orders VALUES
(10308,2,7,'1996-09-18',3),
(10309,37,3,'1996-09-19',1),
(10310,77,8,'1996-09-20',2);

SELECT * FROM Orders;

#Table2
CREATE TABLE Customers (CustomerID INT,CustomerName VARCHAR(30),ContactName VARCHAR(30),Address VARCHAR(50));

INSERT INTO Customers VALUES
(1,'Alfreds Futterkiste','Maria Anders','Obere Str. 57'),
(2,'Ana Trujillo Emparedados','Ana Trujillo','Avda. de la Constitución 2222'),
(3,'Antonio Moreno','Antonio Moreno','Mataderos 2312'),
(77,'Alfreds Futterkiste','Maria Anders','Obere Str. 57');

SELECT * FROM Customers ;

#INNER JOIN
SELECT Orders.customerID,Customers.CustomerName FROM Orders INNER JOIN Customers ON Orders.customerID=Customers.CustomerID;

#LEFT JOIN
SELECT Orders.orderID,Customers.CustomerName FROM Orders LEFT JOIN Customers ON Orders.customerID=Customers.CustomerID;

#RIGHT JOIN
SELECT Orders.orderID,Customers.CustomerName FROM Orders RIGHT JOIN Customers ON Orders.customerID=Customers.CustomerID;

#CROSS JOIN
SELECT Orders.customerID,Customers.CustomerName FROM Orders CROSS JOIN Customers ;