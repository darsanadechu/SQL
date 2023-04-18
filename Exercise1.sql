/* Activity2*/
CREATE TABLE StudentDetails
(ID INT PRIMARY KEY, FirstName VARCHAR(20), LastName VARCHAR(20),Gender Char,
Email VARCHAR(30),YearOfBirth YEAR);


/* Activity3 */
ALTER TABLE StudentDetails ADD YearOfAdmission YEAR;

ALTER TABLE StudentDetails RENAME COLUMN YearOfBirth TO DateOfBirth;

ALTER TABLE StudentDetails MODIFY DateOfBirth DATE;

SELECT * FROM StudentDetails;


/* Activity4 */
INSERT INTO StudentDetails (ID,FirstName,LastName,Gender,Email,DateOfBirth,YearOfAdmission) VALUES 
(800,'Arun','S','M','arun@gamil.com','1997-07-12','2017'),
(1000,'Darsana','Sabu','F','darsana2001@gmail.com','2001-06-18','2019'),
(1001,'Anjana','NK','F','anjana@gmail.com','2000-03-08','2019'),
(1002,'Jyotsna','S','F','joo@gmail.com','2001-04-09','2019'),
(1003,'Divya','C','F','divya@gmail.com','2001-07-10','2019'),
(1004,'Savitha','VS','F','savitha@gmail.com','2000-06-18','2021'),
(1005,'Hashiya','Hameed','F','hashiya@gmail.com','2001-04-18','2019'),
(1006,'Divya','C','F','divya123@gmail.com','2003-08-10','2022'),
(1007,'Reavathy','Sabu','F','revathy@gmail.com','2004-12-19','2023'),
(1008,'Anjana','Krishna','F','anjana123@gmail.com','1999-03-08','2020');

SELECT * FROM StudentDetails;


/* Activity5 */
ALTER TABLE StudentDetails ADD Std INT;

ALTER TABLE StudentDetails ADD Branch VARCHAR(20);

UPDATE StudentDetails SET Std='12',Branch='Commerse' WHERE ID='800';
UPDATE StudentDetails SET Std='12',Branch='Science' WHERE ID='1000';
UPDATE StudentDetails SET Std='12',Branch='Biology' WHERE ID='1001';
UPDATE StudentDetails SET Std='10',Branch=' ' WHERE ID='1002';
UPDATE StudentDetails SET Std='9',Branch=' ' WHERE ID='1003';
UPDATE StudentDetails SET Std='12',Branch='Humanities' WHERE ID='1004';
UPDATE StudentDetails SET Std='8',Branch=' ' WHERE ID='1005';
UPDATE StudentDetails SET Std='11',Branch='Science' WHERE ID='1006';
UPDATE StudentDetails SET Std='12',Branch='Biology' WHERE ID='1007';
UPDATE StudentDetails SET Std='10',Branch=' ' WHERE ID='1008';

SELECT * FROM StudentDetails;

UPDATE StudentDetails SET Branch='NA' WHERE Std<=10;

SELECT * FROM StudentDetails;

/* Activity6 */
SELECT COUNT(*) FROM StudentDetails WHERE YEAR(DateOfBirth)=2000;

/* Activity7 */
SELECT YearOfAdmission,COUNT(*) FROM StudentDetails GROUP BY  YearOfAdmission;

/* Activity8 */
SELECT YearOfAdmission,COUNT(*) FROM StudentDetails GROUP BY  YearOfAdmission;

SELECT Gender,COUNT(*) FROM StudentDetails GROUP BY  Gender ;


/* Activity9 */
SELECT FirstName,COUNT(*) FROM StudentDetails GROUP BY FirstName;
SELECT LastName ,COUNT(*) FROM StudentDetails GROUP BY LastName;
SELECT FirstName,LastName ,COUNT(*) FROM StudentDetails GROUP BY FirstName,LastName;


/* Activity10 */
SELECT YearOfAdmission , COUNT(*) AS Max FROM StudentDetails GROUP BY YearOfAdmission HAVING COUNT(*)=(SELECT COUNT(*) AS MaxCount FROM StudentDetails 
GROUP BY YearOfAdmission ORDER BY MaxCount DESC LIMIT 1);

SELECT YearOfAdmission , COUNT(*) AS Min FROM StudentDetails GROUP BY YearOfAdmission HAVING COUNT(*)=(SELECT COUNT(*) AS MaxCount FROM StudentDetails 
GROUP BY YearOfAdmission ORDER BY MaxCount ASC LIMIT 1);

/* Activity11 */
SELECT CONCAT(FirstName,' ',LastName) AS name, DateOfBirth FROM StudentDetails ORDER BY DateOfBirth LIMIT 10;
