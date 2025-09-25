CREATE DATABASE college3;
use college3;
-- DROP DATABASE college3;
CREATE TABLE student5(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(25),
city VARCHAR(20)
);

INSERT INTO student5 (rollno,name,marks,grade,city) VALUES
(101,"Abhay",90,"A","Firozabad"),
(102,"Abhay",80,"B","Gorakhpur"),
(103,"Abhay",85,"B+","Jhansi"),
(104,"Aayush",90,"A","jharkhand"),
(105,"Abhijeet",90,"A","varansi"),
(106,"Abhishek",90,"A","firozabad");

SELECT AVG(marks)
FROM student5;
 SELECT name,marks
 FROM student5
 WHERE marks >87.5;
 
--  step1:-sub query methods 
 SELECT name,marks
 FROM student5
 WHERE marks >(SELECT AVG(marks)
FROM student5);
-- //step2
SELECT rollno
FROM student5 
WHERE  rollno % 2 = 0;

SELECT rollno,name
FROM student5 
WHERE  rollno  IN (102,104,106);
--  STEP 3
SELECT MAX(marks)
FROM (SELECT * FROM student5 WHERE city ="firozabad") AS temp;
-- step4
SELECT (SELECT MAX(marks)FROM student5),name FROM student5; 

CREATE VIEW view1 as
SELECT rollno,name,marks FROM student5;
SELECT * FROM view1
WHERE marks > 85;
SELECT DISTINCT city FROM student5;
-- SELECT * FROM student5 WHERE marks>86;
SELECT * FROM student5 WHERE marks>86 AND city="firozabad";
