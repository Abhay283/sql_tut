CREATE DATABASE college8;
use college8;

CREATE TABLE student8(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO student8(id,name) VALUES
(101,"ABHAY"),
(102,"KRISHNA");
AlTER TABLE student8
ADD COLUMN dept_id INT NOT NULL DEFAULT 101;
SELECT * FROM student8;
UPDATE student8
SET dept_id="102"
WHERE name="krishna" AND dept_id=101;
CREATE TABLE teacher1(
id INT PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO teacher1(id,name) VALUES
(102,"SWATI"),
(103,"ADITI");

SELECT * FROM teacher1;

-- SELECT *
-- FROM student8 as s
-- LEFT JOIN teacher1 as t
-- ON s.id=t.id
-- UNION
-- SELECT * FROM student8 as s
-- RIGHT JOIN teacher1 as t
-- ON s.id=t.id;
SELECT * 
FROM student8 as s
LEFT JOIN teacher1 as t
ON s.id=t.id
WHERE t.id IS NULL
UNION
SELECT *
FROM student8 as s
RIGHT JOIN teacher1 as t
ON s.id=t.id
WHERE s.id IS NULL;
