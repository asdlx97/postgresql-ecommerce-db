SELECT city, address
FROM customer

SELECT city || address
FROM customer

SELECT city || '---' || address
FROM customer

SELECT CONCAT(city, address)
FROM customer

SELECT CONCAT_WS('---', city, address)
FROM customer

SELECT TRIM('   BE87625629878BE  L  ') --Returns string with spaces trimmed on both sides

SELECT TRIM('BE' FROM 'BE87625629878BE') --Returns string with specified characters trimmed on both sides

SELECT LTRIM('   BE87625629878BE  L  ')--Returns string with spaces trimmed on left side
SELECT RTRIM('   BE87625629878BE  L  ')--Returns string with spaces trimmed on right side

SELECT BTRIM('   BE87625629878BE  L  ')--Returns same as TRIM, a string with spaces trimmed on both sides

SELECT BTRIM('   BE87625629878BE  L', 'L')--Returns substring with specified character trimmed on both sides

SELECT UPPER(customer_name)
FROM customer

SELECT LOWER(customer_name)
FROM customer

SELECT INITCAP(customer_name) --Returns with the initial letter of each word capitalized
FROM customer

SELECT SUBSTRING(customer_name FROM 1 FOR 5) --Returns characters from specified start position until end position
FROM customer

SELECT LEFT(customer_name, 7) --Returns substring with specified length starting from the left 
FROM customer

SELECT RIGHT(customer_name, 3) --Returns substring with specified length starting from the right 
FROM customer

SELECT POSITION('Alice' in customer_name) 
FROM customer

SELECT LENGTH(customer_name) --Returns the character length 
FROM customer

SELECT tags 
FROM products

SELECT INITCAP(tags)
FROM products