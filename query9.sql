CREATE DATABASE college7;
use college7;

-- DROP DATABASE college7;

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO dept
VALUES 
(101,"english"),
(102,"IT");

SELECT * FROM dept;

UPDATE dept
SET id =103
WHERE id=102;
-- SELECT * FROM dept;
CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
 ON UPDATE CASCADE
 ON DELETE CASCADE
);

INSERT INTO teacher 
VALUES
(101,"Adam",101),
(102,"Eve",102);

SELECT * FROM teacher;

ALTER TABLE teacher
DROP COLUMN age;
-- CHANGE name full_name VARCHAR(50);
-- MODIFY age VARCHAR(2);

INSERT INTO teacher (id,name,dept_id)
VALUES
(107,"aditi",100);
-- ADD COLUMN age INT NULL DEFAULT 19;

-- DROP TABLE teacher;
