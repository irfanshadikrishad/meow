-- select the unique ages from the Customers table
SELECT DISTINCT age;
FROM Customers;
SELECT first_name AS name
FROM Customers;
-- returns the number of values in the Orders table
SELECT COUNT(*)
FROM Orders;
-- select rows where the amount is between 200 and 600

SELECT item, amount
FROM Orders
WHERE amount BETWEEN 200 AND 600;

-- this table doesn't contain foreign keys
CREATE TABLE Customers (
    id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    age INTEGER
  );

-- create another table named Products
-- add foreign key to the customer_id column
-- the foreign key references the id column of the Customers table

CREATE TABLE Products (
    customer_id INTEGER ,
    name VARCHAR(100),
    FOREIGN KEY (customer_id)
    REFERENCES Customers(id)
  );

-- create index
CREATE INDEX college_index
ON Colleges(college_code);