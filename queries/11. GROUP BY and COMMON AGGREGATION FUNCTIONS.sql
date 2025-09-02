SELECT *
FROM customer

--Let's add another customer
INSERT INTO customer (customer_name, email, phone_number, address, city)
VALUES ('Erik Bayers', 'erik@example.com', '678-876-7898', '356 Lemon Ave', 'Big Apple')

--Useful for data visualization and summarizing of data, 
--we see there are two customers from Big Apple
SELECT city, COUNT(customer_id)
FROM customer
GROUP BY city

--Aggregate functions and GROUP BY go hand in hand

--Gives me total row count for customer table
SELECT COUNT(*)
FROM customer

--Gives me total row count for customer table, using an alias for better readability
SELECT COUNT(*)
AS Total_Row_Count
FROM customer

--Using an existing indexed column for better performance 
SELECT COUNT(customer_id)
AS Total_Row_Count
FROM customer

--Adding DISTINCT so we don't get duplicates, altough there are none here 
SELECT COUNT(DISTINCT customer_id)
AS Total_Row_Count
FROM customer

SELECT SUM(total_amount) 
AS Sum_Of_All_Orders
FROM orders

SELECT MAX(total_amount) 
AS Highest_Order_Amount
FROM orders

SELECT MIN(total_amount) 
AS Lowest_Order_Amount
FROM orders

SELECT AVG(total_amount) 
AS Average_Order_Amount
FROM orders

SELECT STDDEV(total_amount) 
AS StandardDeviation_Order_Amount
FROM orders

 
