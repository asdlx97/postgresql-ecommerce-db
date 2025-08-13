SELECT * FROM products WHERE price>100 AND category_id = 1 --BOTH conditions have to be true

SELECT * FROM products WHERE price>100 OR category_id = 2 --ANY of the conditions has to be true

SELECT * FROM products WHERE price>100 OR category_id = 2 ORDER BY product_id DESC --logical operators can be combines with ORDER BY

