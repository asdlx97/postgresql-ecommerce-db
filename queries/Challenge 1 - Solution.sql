-- TASK: find a list of customers from the New York region and sort them in alphabetical order by name. This is to help a retail store distribute Christmas gifts to these customers.

SELECT * FROM customer
WHERE city = 'New York'
ORDER BY customer_name
-- to find customers who live in the city New York and sort them alphabetically by name 

SELECT * FROM customer
WHERE city LIKE 'New%'
ORDER BY customer_name
-- LIKE can be used if unsure that 'New York' is inputted correctly in all rows?