-- ===================================================
-- Week 2 SQL Assignment: Introduction to SQL
-- Database: sales
-- ===================================================

USE sales;

-- ---------------------------------------------------
-- Question 1: Retrieve Payment Information
-- ---------------------------------------------------
-- Retrieve checkNumber, paymentDate, and amount from payments table
SELECT 
    checkNumber, 
    paymentDate, 
    amount 
FROM payments;


-- ---------------------------------------------------
-- Question 2: Find Orders in Process
-- ---------------------------------------------------
-- Retrieve orderDate, requiredDate, and status from orders table
-- Filtered for status = 'In Process' and sorted by orderDate descending
SELECT 
    orderDate, 
    requiredDate, 
    status 
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;


-- ---------------------------------------------------
-- Question 3: Find Sales Representatives
-- ---------------------------------------------------
-- Retrieve firstName, lastName, and email from employees table
-- Filtered for jobTitle = 'Sales Rep' and sorted by employeeNumber descending
SELECT 
    firstName, 
    lastName, 
    email 
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;


-- ---------------------------------------------------
-- Question 4: Retrieve Office Information
-- ---------------------------------------------------
-- Retrieve all columns and records from the offices table
SELECT * 
FROM offices;


-- ---------------------------------------------------
-- Question 5: Retrieve the Five Cheapest Products
-- ---------------------------------------------------
-- Retrieve productName and quantityInStock from products table
-- Sorted by buyPrice in ascending order and limited to 5 records
SELECT 
    productName, 
    quantityInStock 
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
