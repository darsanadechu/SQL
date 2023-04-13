CREATE TABLE student (admno INT, name VARCHAR(20));

INSERT INTO student VALUES (1,'Darsana'),(2,'Devika');

SELECT * FROM student;

SELECT * FROM student WHERE name LIKE 'Da%';

SELECT COUNT(*) FROM student;

ALTER TABLE student ADD dob DATE;

SELECT * FROM student;

UPDATE student SET dob='2001-06-18' WHERE name='Darsana';

UPDATE student SET dob='1997-12-9' WHERE name='Devika';

SELECT * FROM student;

INSERT INTO student VALUES (3,'sithara','2002-01-11');

ALTER TABLE student ADD mark INT; 

UPDATE student SET mark=10 WHERE name='Darsana';

UPDATE student SET mark=30 WHERE name='Devika';

UPDATE student SET mark=20 WHERE name='sithara';

SELECT * FROM student;

SELECT name FROM student WHERE mark=(SELECT MAX(mark) FROM student);

SELECT name FROM student ORDER BY mark DESC;

DELETE FROM student WHERE mark<=10;

SELECT * FROM student;

INSERT INTO student VALUES (4,'Devika','2001-04-17',45);

SELECT * FROM student;

SELECT DISTINCT name FROM student;
