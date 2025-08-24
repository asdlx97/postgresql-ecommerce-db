SELECT name 
FROM products 
WHERE category_id = 1

UNION --combining data from two queries vertically where all column names, data types, and column orders are the same in each

SELECT name 
FROM products p 
INNER JOIN orders o 
ON o.product_id = p.product_id 
WHERE o.total_quantity > 2;

SELECT name 
FROM products 
WHERE category_id = 1

UNION ALL --If you want duplicate rows not to be combined

SELECT name 
FROM products p 
INNER JOIN orders o 
ON o.product_id = p.product_id 
WHERE o.total_quantity > 2;