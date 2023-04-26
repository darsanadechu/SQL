#table1
CREATE TABLE Arts
(chessno INT PRIMARY KEY,name VARCHAR(20),house VARCHAR(20));

INSERT INTO Arts VALUES
(101,'Ashik','Green'),
(202,'Govind','Yellow'),
(303,'Mekha','Blue'),
(410,'Asha','Red');

SELECT * FROM Arts ;

#table2
CREATE TABLE Sports
(chessno INT PRIMARY KEY,name VARCHAR(20),house VARCHAR(20));

INSERT INTO Sports VALUES
(109,'Kiran','Yellow'),
(207,'Siva','Red'),
(203,'Mekha','Blue'),
(406,'Seema','Green');

SELECT * FROM Sports ;


#union without duplicates
SELECT name,house FROM Arts 
UNION
SELECT name,house FROM Sports;

#union with duplicates
SELECT name,house FROM Arts 
UNION ALL
SELECT name,house FROM Sports;

#except using NOT IN
SELECT name,house FROM Arts 
WHERE name NOT IN (SELECT name FROM Sports);

#except using JOIN
SELECT Arts.name,Arts.house FROM Arts 
LEFT JOIN Sports ON
Arts.name=Sports.name AND Arts.house=Sports.house
WHERE Sports.chessno IS NULL;

#intersect using IN
SELECT name,house FROM Arts 
WHERE name IN (SELECT name FROM Sports);

#intersect using JOIN
SELECT Arts.name,Arts.house FROM Arts 
INNER JOIN Sports ON
Arts.name=Sports.name AND Arts.house=Sports.house;
