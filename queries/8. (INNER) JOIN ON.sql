SELECT *
FROM orders o
JOIN products p
ON o.product_id = p.product_id
--all columns of all matching records in both tables, i.e. orders which have a product from the products table and columns of products who are attached to an order in ther orders table

SELECT name, description, total_amount
FROM orders o
INNER JOIN products p
ON o.product_id = p.product_id
--total amount colummn of orders with product name from products table, for matching records in both tables
--so we only get to see products if they have ever been part of an order, and orders that contain a product from out catalogue

SELECT customer_name, total_amount
FROM orders o
JOIN customer c
ON o.customer_id = c.customer_id
--order with customer information and total amount
--so we only get to see customers who ever purchased something, and orders that have one of our customers attached

