CREATE DATABASE college4;
USE college4;
-- DROP DATABASE college4; 
CREATE TABLE student4(
id INT PRIMARY KEY,
name VARCHAR(50),
marks VARCHAR(10) NOT NULL,
phone_no VARCHAR(20)  NOT NULL,
city VARCHAR(15)
);

INSERT INTO student4(id,name,marks,phone_no,city) VALUES
(101,"Abhay",98,"A+","Firozabad"),
(102,"Abhay",86,"A","Gorakhpur"),
(103,"Abhay",85,"A","Jhansi"),
(104,"Aayush",90,"A+","jharkhand"),
(105,"Abhijeet",93,"A+","varansi"), 
(106,"Abhishek",97,"A+","firozabad");

-- SELECT * FROM student4 WHERE marks > 90 OR city="firozabad";
-- SELECT * FROM student4 WHERE city IN ("firozabad","jhansi"); 
SET SQL_SAFE_UPDATES =0;
-- UPDATE student4 SET Phone_no = "O" WHERE Phone_no="A";
UPDATE student4 SET marks=marks+1;
  SELECT * FROM student4;