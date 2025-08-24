--Basic categorisation using SELECT
SELECT
    name,
    description,
    price,
    CASE
        WHEN price < 100 THEN 'Cheap'
        WHEN price >= 100 AND price < 500 THEN 'Affordable'
		WHEN price IS NULL THEN 'Price Unknown' --For when the price is NULL, we don't want to classify it as expensive
        ELSE 'Expensive'
    END AS ProductType
FROM
    products;

--Creating Binary Flag
SELECT name, description, price,
	CASE
		WHEN price < 100 THEN 1
		ELSE 0
	END AS Under_100
FROM products

