CREATE TABLE StudentDetails 
(admno INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(20), gender CHAR, dob DATE, 
course VARCHAR(20), income INT);

ALTER TABLE StudentDetails AUTO_INCREMENT=1000;

INSERT INTO StudentDetails (name,gender,dob,course,income) VALUES 
('aaa','M','1999-01-05','science',10000),
('bbb','F','2002-02-12','humanities',20000),
('ccc','F','1998-12-25','science',25000),
('ddd','M','2000-01-10','science',17000),
('eee','M','2001-01-25','humanities',9000),
('fff','F','2000-02-17','commerse',12000);

/* full table */
SELECT * FROM StudentDetails;

/* name and course colums*/
SELECT name,course FROM StudentDetails;

/* different courses */
SELECT DISTINCT course FROM StudentDetails;

/* details of students who are females */
SELECT * FROM StudentDetails WHERE gender='F';

/* gender male and course humanities taken students */
SELECT * FROM StudentDetails WHERE (gender='M' AND course='humanities');

/* students other than science */
SELECT * FROM StudentDetails WHERE NOT course='science';

/* students income between 15000 and 20000 */
SELECT * FROM StudentDetails WHERE income BETWEEN 15000 AND 20000;

/* students in commerse */
SELECT * FROM StudentDetails WHERE course IN ('commerse');

/*students in dob order*/
SELECT * FROM StudentDetails ORDER BY dob;

/*count of students */
SELECT COUNT(*) FROM StudentDetails;

/*max,min,avg income */
SELECT MAX(income), MIN(income),AVG(income) FROM StudentDetails;

