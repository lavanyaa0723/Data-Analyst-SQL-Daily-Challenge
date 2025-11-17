-- SQL Daily Challenge 4 --
-- sorting and Aggregates --

-- Order by and Limit -- 
CREATE DATABASE ecommerce;
USE ecommerce;
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2)
);

INSERT INTO Products (product_id, product_name, price)VALUES
(1,'Laptop', 55000),
(2,'Smartphone', 38000),
(3,'Headphones', 2500),
(4,'Keyboard', 1200),
(5,'Smartwatch', 9000),
(6,'Monitor', 15000),
(7,'Gaming Mouse', 1800);

SELECT product_id, product_name, price
FROM Products
ORDER BY price DESC
LIMIT 3;

-- Aggregate Functions --
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    amount DECIMAL(10,2),
    sale_date DATE
);

INSERT INTO Sales (sale_id, amount, sale_date)VALUES
(101,1500,'2025-01-01'),
(102,3500,'2025-01-01'),
(103,500,'2025-01-02'),
(104,2500,'2025-01-02'),
(105,7500,'2025-01-03'),
(106,1000,'2025-01-03'),
(107,6000,'2025-01-03');
SELECT * FROM Sales;

SELECT COUNT(*) AS total_sales FROM Sales;
SELECT SUM(amount) AS total_revenue FROM Sales;
SELECT AVG(amount) AS average_sale FROM Sales;
SELECT MAX(amount) AS highest_sale FROM Sales;
SELECT MIN(amount) AS lowest_sale FROM Sales;

-- Group by and Having --
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(100)
);

INSERT INTO Employees (emp_id, emp_name, department)VALUES
(1,'Karthik','HR'),
(2,'Meera','HR'),
(3,'Sakthi','HR'),
(4,'Jeeva','Finance'),
(5,'Arun','Finance'),
(6,'Nisha','Finance'),
(7,'Teja','Finance'),
(8,'Varun','IT'),
(9,'Dharani','IT'),
(10,'Sree','IT'),
(11,'Rahul','IT'),
(12,'Riya','IT'),
(13,'Kavin','IT'),
(14,'Harish','IT'),
(15,'Lavanya','IT'),
(16,'Pranav','IT'),
(17,'Anitha','IT'),
(18,'Sanjay','IT');
SELECT * FROM Employees ;

SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department
HAVING COUNT(*) > 10;