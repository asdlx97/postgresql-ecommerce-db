SELECT *
FROM products

--DELETE FROM products
--WARNING: This would delete all rows in the table, as there is no WHERE clause, not want we want for this table.

DELETE FROM products
WHERE product_id = 7
RETURNING *
--This only deletes the Ipad with product_id = 7

SELECT * FROM public."FruitJuice"
--Check table where we want to delete all records and then table itself

DELETE FROM public."FruitJuice"
--This deletes all records in the table that we don't need anymore as there is no WHERE clause, BUT it still goes over all the rows to check and is thus slow

TRUNCATE public."FruitJuice"
--This deletes all records in the table without scanning them, much more performant and quick for large tables

DROP TABLE public."FruitJuice"
--This deletes the table and it's structure entirely
