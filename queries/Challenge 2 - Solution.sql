--CHALLENGE: Remove the order with ID #10 from the order list

SELECT *
FROM orders
--There is no order with order_id = 10 so the DELETE will be 0 rows

DELETE 
FROM orders
WHERE order_id = 10
--The query executed and deleted 0 records indeed
