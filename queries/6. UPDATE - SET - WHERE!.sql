SELECT * FROM products --check table that we'll update

SELECT * FROM categories

--UPDATE products
--SET price = 500
--WARNING! This would adjust the price for all rows in products!!

UPDATE products
SET price = 500
WHERE product_id = 7
--WHERE clause should be used

UPDATE products
SET price = 99.99, category_id = 2
WHERE product_id = 5
--you can change two columns at the same time

UPDATE products
SET price = 109.99, category_id = 1
WHERE product_id = 5
RETURNING product_id, name, price, category_id
--you can use the RETURNING statement to view modified values without having to query again

-- also, respect any constraints (PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL)!