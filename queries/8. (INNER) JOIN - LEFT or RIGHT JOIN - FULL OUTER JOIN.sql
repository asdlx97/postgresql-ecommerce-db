SELECT *
FROM orders o --left table name with table alias for easier ref
INNER JOIN products p --right table name with table alias for easier ref
ON o.product_id = p.product_id --column names of tables on which to join, can differ in name
--all columns of all matching records in both tables, i.e. orders which have a product from the products table and columns of products who are attached to an order in ther orders table

SELECT *
FROM orders
INNER JOIN products
USING (product_id)
--If the join columns have identical names in both tables, USING can simplify the ON clause

SELECT name, description, total_amount
FROM orders o
JOIN products p
ON o.product_id = p.product_id
--JOIN is the same as INNER JOIN
--total amount colummn of orders with product name from products table, for matching records in both tables
--so we only get to see products if they have ever been part of an order, and orders that contain a product from out catalogue

SELECT customer_name, total_amount
FROM orders o
JOIN customer c
ON o.customer_id = c.customer_id
--order with customer information and total amount
--so we only get to see customers who ever purchased something, and orders that have one of our customers attached

--But what if we want to see all customers and their order amounts, regardless if they made one or not?
SELECT customer_name, total_amount
FROM customer c
LEFT JOIN orders o
ON o.customer_id = c.customer_id
--LEFT JOIN will give us all matching records on orders and customers BUT ALSO is biased towards the left table, here the customers, so will also give the other customers who aren't matched to an order

SELECT name, total_quantity, total_amount
FROM orders o
RIGHT JOIN products p 
ON o.product_id = p.product_id
--RIGHT JOIN will be biased towards the right table, products in this case, so we will also see products that aren't part of any order

--You can use LEFT or RIGHT JOIN interchangably as long as you also switch the tables in order to get the SAME results

--But what if I want to see all customers, even if they haven't placed an order, and all orders even if there is no customer matched to them?
INSERT INTO orders (product_id, total_quantity, total_amount, order_rating, length, width)
VALUES (5, 2, 400, 3.5, 3.10, 1.70)
--Add an order without customer attached first in order to have a better example

SELECT customer_name, total_quantity, total_amount
FROM orders o
FULL OUTER JOIN customer c
ON o.customer_id = c.customer_id
--As we can see, all customers and orders are shown, including all unmatched records on both sides

--And what if we also want to see all product info, and all products that aren't linked to any order?
SELECT customer_name, name, total_quantity, total_amount
FROM orders o
FULL OUTER JOIN customer c
ON o.customer_id = c.customer_id
FULL OUTER JOIN products p
ON o.product_id = p.product_id
--We get both customers with and without an order
--We get both orders with and without a customer
--We get both products with and without an order (e.g. book)
--We would get orders with and without products but tha latter aren't available

