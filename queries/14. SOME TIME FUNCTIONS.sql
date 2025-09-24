SELECT CURRENT_TIME --Returns current time with timezone information

--But what if I want to know on which date this is?
SELECT CURRENT_TIMESTAMP --Returns both current date and time(zone)

--Cool, and how do I see what time (and date) it is in the States, another timezone? 
SELECT CURRENT_TIMESTAMP at TIME ZONE 'America/New_York' --Returns both current date and time in specified zone

----And ours just to be sure this program is set to the right timezone?  
SELECT CURRENT_TIMESTAMP at TIME ZONE 'Europe/Rome' --Returns both current date and time in specified zone

--Nice, but actually the the timezone information isn't necessary 
SELECT LOCALTIME --Returns current time without timezone information

--Great, but wait, where did my date go again?
SELECT LOCALTIMESTAMP --Returns current date and time without timezone information

--I want to know at what hour of the day the orders are being made, not on average but of every individual order
SELECT EXTRACT(hour FROM order_timestamp)
FROM orders

--And the minutes? Not that it's useful but..
SELECT EXTRACT(minute FROM order_timestamp) --OK
FROM orders

--And why not seconds? 
SELECT EXTRACT(second FROM order_timestamp) --Really?
FROM orders

--Let's go back to the days, but I want to know during which month and year too. Time should be nullified.
SELECT DATE_TRUNC('day', order_timestamp)
FROM orders

--Wouldn't it be more useful to know how long time ago the orders were?
SELECT AGE(order_timestamp)
FROM orders

--A! For me the most interesting is to know how long people had to wait between ordering and having the package delivered. 
SELECT AGE(delivery_timestamp, order_timestamp)
FROM orders

