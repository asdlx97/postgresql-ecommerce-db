SELECT * FROM products ORDER BY price

SELECT * FROM customer ORDER BY customer_name --default is ascending or ASC

SELECT * FROM customer ORDER BY customer_name DESC --to get descending order or DESC

SELECT * FROM products ORDER BY name, price --you can ORDER BY several columns

SELECT * FROM products WHERE price>80 ORDER BY price DESC --you can combine WHERE and ORDER BY to order your filtered rows