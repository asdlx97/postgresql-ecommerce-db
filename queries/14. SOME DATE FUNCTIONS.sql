SELECT CURRENT_DATE --Gives me the current date

--We can EXTRACT a part of the date
SELECT EXTRACT(Day FROM CURRENT_DATE)
SELECT EXTRACT(Month FROM CURRENT_DATE)
SELECT EXTRACT(Year FROM CURRENT_DATE)

--Does the same as the EXTRACT function, but gives the PART of the DATE in a Double type?
SELECT DATE_PART('day', CURRENT_DATE)
SELECT DATE_PART('month', CURRENT_DATE)
SELECT DATE_PART('year', CURRENT_DATE)

-- You can also TRUNCate to the chosen part of the date, which will return the start date and time.
SELECT DATE_TRUNC('day', CURRENT_DATE) --returns the start time of that day
SELECT DATE_TRUNC('month', CURRENT_DATE) --returns the first day of that month
SELECT DATE_TRUNC('month', CURRENT_DATE) --returns the first day of the first month of that year

-- You can find out the AGE difference between two dates
SELECT AGE(TIMESTAMP '2024-01-01') --Between now and the date
SELECT AGE(TIMESTAMP '2024-01-01', TIMESTAMP '2024-01-31') --Between first and last date, will be minus in this case

-- Heyhey but what if someone gives me a date in string format?? Thats anooying! But there is a fix, we can convert it TO_DATE.
SELECT TO_DATE('01/01/2025', 'DD-MM-YYYY') --We just converted this string to a date type by saying which part of the string is which part of date type

-- Mmhh and is the reverse possible for whatever reason? Sure, just convert TO_CHAR!
SELECT TO_CHAR(CURRENT_DATE, 'MM-DD-YYYY')
SELECT TO_CHAR(CURRENT_DATE, 'YYYY-DD-MM') 
