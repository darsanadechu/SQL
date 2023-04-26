#student table
CREATE TABLE Stud 
(sno INT PRIMARY KEY,sname VARCHAR(20),age INT);

INSERT INTO Stud(sno, sname,age) 
 VALUES(1,'Ankit',17),
       (2,'Ramya',18),
       (3,'Ram',16);
       
SELECT *FROM Stud;

#course table
CREATE TABLE Course 
(cno INT PRIMARY KEY,cname VARCHAR(20));

INSERT INTO Course(cno, cname) 
 VALUES(101,'c'),
       (102,'c++'),
       (103,'DBMS');
       
SELECT *FROM Course ;

#enroll table
CREATE TABLE Enroll 
(sno INT,cno INT,jdate date,PRIMARY KEY(sno),FOREIGN KEY(sno) REFERENCES Stud(sno) ON DELETE CASCADE,
 FOREIGN KEY(cno) REFERENCES Course(cno) ON DELETE SET NULL);
 
INSERT INTO Enroll(sno,cno,jdate) 
 VALUES(1, 101, '2021-05-06'),
       (2, 102, '2021-05-06'),
       (3, 103, '2021-06-06');
       
SELECT *FROM Enroll ;

DELETE FROM Stud WHERE sname='Ramya';

SELECT *FROM Stud;

SELECT *FROM Enroll ;

DELETE  FROM Course WHERE cno=101;

SELECT *FROM Course ;

SELECT *FROM Enroll ;

