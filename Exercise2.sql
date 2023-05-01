
#Activity 1- adding PK
ALTER TABLE StudentDetails ADD PRIMARY KEY (ID);

#creating index
CREATE INDEX idx_id ON StudentDetails (ID);

CREATE INDEX idx_email ON StudentDetails (Email);

#searching
SELECT CONCAT(FirstName,' ',LastName) AS FullName FROM StudentDetails sd WHERE 
ID=1002;

SELECT CONCAT(FirstName,' ',LastName) AS FullName FROM StudentDetails sd WHERE 
Email='joo@gmail.com';


#Activity 2- creating table marks
CREATE TABLE Marks 
(ID  INT,subject VARCHAR(20),mark INT, previousYear_mark INT,CONSTRAINT FK_ID FOREIGN KEY (ID) REFERENCES StudentDetails (ID));

INSERT INTO Marks VALUES
(1000,'maths',95,97),
(1000,'science',80,85),
(1001,'english',90,89),
(1002,'economics',75,78),
(1004,'maths',96,95),
(1006,'english',85,86),
(1007,'science',89,85),
(800,'maths',86,89),
(1008,'economics',97,98);


SELECT * FROM Marks ;

#Activity 3 - JOIN
SELECT StudentDetails.FirstName,Marks.subject,Marks.mark FROM Marks 
INNER JOIN StudentDetails ON Marks.ID=StudentDetails.ID AND Marks.mark>90;

#Activity 4 - sub query
SELECT FirstName FROM StudentDetails WHERE ID IN (SELECT ID FROM Marks WHERE mark>90);

#Activity 5- ON DELETE CASCADE
ALTER TABLE Marks DROP CONSTRAINT FK_ID;

ALTER TABLE Marks ADD FOREIGN KEY (ID) REFERENCES StudentDetails (ID) ON DELETE CASCADE;

DELETE FROM StudentDetails WHERE ID=1006;

SELECT * FROM StudentDetails;

SELECT * FROM Marks;

#Activity 6- table courses
#course table
CREATE TABLE Courses
(cname VARCHAR(20),ID INT,CONSTRAINT FK_ID2 FOREIGN KEY (ID) REFERENCES StudentDetails (ID));

INSERT INTO Courses VALUES
('10',1000),
('8',1001),
('9',1002),
('10',1003),
('9',1004),
('9',1005),
('8',1007),
('10',1008),
('12',800);

SELECT * FROM Courses;

#Activity 7- LEFT JOIN
SELECT StudentDetails.FirstName,StudentDetails.LastName,Marks.mark  FROM StudentDetails 
LEFT JOIN  Marks ON Marks.ID=StudentDetails.ID WHERE Marks.mark IS NULL;

#Activity 8 
SELECT StudentDetails.FirstName,Marks.subject,Marks.mark,Courses.cname FROM
((StudentDetails INNER JOIN Marks ON Marks.ID=StudentDetails.ID AND Marks.mark>90)
INNER JOIN Courses ON Courses.ID=StudentDetails.ID)
UNION
SELECT StudentDetails.FirstName,Marks.subject,Marks.mark,Courses.cname FROM
((StudentDetails INNER JOIN Marks ON Marks.ID=StudentDetails.ID AND Marks.previousYear_mark>90)
INNER JOIN Courses ON Courses.ID=StudentDetails.ID);


#Activity 9
INSERT INTO Marks VALUES
(1000,'english',89,88),
(1000,'economics',85,83),
(1001,'maths',90,84),
(1001,'science',88,84),
(1001,'economics',85,81),
(1002,'english',91,96),
(1002,'maths',87,89),
(1002,'science',93,95),
(1003,'english',86,88),
(1003,'maths',83,87),
(1003,'economics',87,88),
(1003,'science',88,83),
(1004,'english',86,89),
(1004,'economics',76,79),
(1004,'science',86,84),
(1005,'english',89,83),
(1005,'maths',84,87),
(1005,'economics',86,81),
(1005,'science',74,75),
(1007,'english',87,83),
(1007,'maths',76,79),
(1007,'economics',85,82),
(1008,'english',85,89),
(1008,'maths',89,75),
(1008,'science',86,89),
(800,'english',90,83),
(800,'economics',86,89),
(800,'science',87,88);


SELECT * FROM StudentDetails sd  WHERE ID=(SELECT Marks.ID FROM Marks 
INNER JOIN Courses ON Courses.ID=Marks.ID AND Courses.cname='10' GROUP BY Marks.ID ORDER BY SUM(Marks.mark) DESC LIMIT 1);

SELECT * FROM StudentDetails sd  WHERE ID=(SELECT Marks.ID FROM Marks 
INNER JOIN Courses ON Courses.ID=Marks.ID AND Courses.cname='10' GROUP BY Marks.ID ORDER BY SUM(Marks.mark) ASC LIMIT 1);

