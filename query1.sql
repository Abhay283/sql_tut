 CREATE DATABASE college;
-- CREATE DATABASE IF NOT EXISTS college; 
--  DROP DATABASE college;
 use college;
 CREATE TABLE student(
 id INT PRIMARY KEY,
 name VARCHAR(50),
 age INT NOT NULL 
 );
   
 -- INSERT INTO student VALUES(1,"Aman",26);
--  INSERT INTO student VALUES(2,"Abhay",22);
SELECT * FROM student; 
 INSERT INTO student
 (rollno, name)
 VALUES
 (101, "karan"),
 (102,"arjun");
--  SELECT * FROM student; 
--  SHOW DATABASES;
--  SHOW TABLES;