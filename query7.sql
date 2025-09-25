CREATE DATABASE college6;
USE college6;
-- DROP DATABASE college6; 
CREATE TABLE student6(
id INT PRIMARY KEY,
name VARCHAR(50),
marks VARCHAR(10) NOT NULL,
phone_no VARCHAR(20)  NOT NULL,
city VARCHAR(15)
);

INSERT INTO student6(id,name,marks,phone_no,city) VALUES
(101,"Abhay",98,"A+","Firozabad"),
(102,"Abhay",86,"A","Gorakhpur"),
(103,"Abhay",85,"A","Jhansi"),
(104,"Aayush",90,"A+","jharkhand"),
(105,"Abhijeet",93,"A+","varansi"), 
(106,"Abhishek",97,"A+","firozabad");

DELETE FROM student6
WHERE marks < 90;

-- SELECT * FROM student6 WHERE marks > 90 OR city="firozabad";
-- SELECT * FROM student6 WHERE city IN ("firozabad","jhansi");  
-- SELECT * FROM student6 ORDER BY city ASC;
-- SELECT city, COUNT(name) FROM student6 GROUP BY city HAVING max(marks)>90;  
 -- SELECT city, avg(marks) FROM student6 GROUP BY city ORDER BY city ASC;
--  SELECT * FROM student6 ORDER BY city ASC;
 