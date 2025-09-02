--Let's add another customer
INSERT INTO customer (customer_name, email, phone_number, address, city)
VALUES ('Lina Magolie', 'lina@example.com', '452-745-2341', '674 Picadelie Road', 'Townsville')

--I want to see all cities in the customer base, and the amount of customers per city
SELECT city, COUNT(customer_id)
FROM customer
GROUP BY city

--But I want to see only the cities where there is more than one person
SELECT city, COUNT(customer_id)
FROM customer
GROUP BY city
HAVING COUNT(*)>1

--If you want to use WHERE clause, it should be BEFORE the GROUP BY clause, just remember:
--WHERE is to filter on the rows after SELECT
--HAVING is to filter the grouped data after GROUP BY
SELECT city, COUNT(customer_id)
FROM customer
WHERE city LIKE '%ville'
GROUP BY city
HAVING COUNT(*)>1

--I'd like to see the categories where there are more than three products of
SELECT c.name, c.category_id, COUNT(p.product_id)
FROM products p
INNER JOIN categories c
ON c.category_id = p.category_id
GROUP BY c.category_id
HAVING COUNT(p.product_id)>1

--Reminder, if you'd like to filter before grouping, use WHERE after SELECT, before GROUP BY
SELECT c.name, c.category_id, COUNT(p.product_id)
FROM products p
INNER JOIN categories c
ON c.category_id = p.category_id
WHERE c.category_id = 1 OR c.category_id = 2
GROUP BY c.category_id
HAVING COUNT(p.product_id)>1