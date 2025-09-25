CREATE DATABASE payment;
USE payment;

CREATE TABLE customer(
customer_id INT PRIMARY KEY,
name VARCHAR(50),
mode VARCHAR(25) NOT NULL,
city VARCHAR(30)
);

INSERT INTO customer(customer_id,name,mode,city) VALUES
(101,"Olivia Barrett","Netbanking","portland"),
(102,"Ethan Sinclair","Credit card","miami"),
(103,"maya hernandez","credit card","seattle"),
(104,"liam donovan","Netbanking","denver"),
(105,"sophia nguyen","credit card","new orleans"),
(106,"caleb foster","debit card","minneapolis"),
(107,"ava patel","debit card","phoenix"),
(108,"lucas carter","Netbanking","boston"),
(109,"isabelia martinez","Netbanking","nashville"),
(110,"jackson brooks","credit card","boston"); 

SELECT mode, COUNT(name) FROM customer GROUP BY mode;