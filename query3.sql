  CREATE DATABASE xyz;
  use xyz;
 --  DROP DATABASE xyz;
  CREATE TABLE employee(
  id INT PRIMARY KEY,
  name VARCHAR(50),
  salary INT NOT NULL,
  dept_id INT
  );
  
  INSERT INTO employee
  (id,name,salary,dept_id)
  VALUES
  (1,"adam",25000,101),
  (2,"bob",30000,102),
  (3,"casey",40000,103);
  
  
  UPDATE employee
  SET dept_id=101
  WHERE dept_id=102;
  
  SELECT * FROM employee;
  
  SELECT a.name as dept_id,b.name
  FROM employee as a
  JOIN employee as b
  ON a.id=b.dept_id;
  
  CREATE DATABASE temp1;
  use temp1;
  CREATE TABLE temp1(
  id INT UNIQUE
  );
  INSERT INTO temp1 VALUES (101);
   INSERT INTO temp1 VALUES (101);
  SELECT * FROM temp1;
   --  INSERT INTO temp1 VALUES (101);
    
    
  
  
  
  
  
  