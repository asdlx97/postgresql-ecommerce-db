--We want to get the absolute a.k.a. positive value of a number, let's try ABS
SELECT ABS(-2.7)

--We would like to get the upper integer of a certain number, let's try CEIL
SELECT CEIL(2.7)

--Now we would like to get the lower integer, which is the opposite of CEIL and is FLOOR
SELECT FLOOR(2.7)

--I'd like to make sure financial numbers are rounded up to 2 decimals, I can use ROUND
SELECT ROUND(2.567897, 2)

--For no reason at all, I'd like to know the square root of a number, I can use SQRT
SELECT SQRT(5.0)
--A but no this number is way to long!! Couldn't you choose 4? Round it up please :/
SELECT ROUND(SQRT(5.0), 2)