-- ROUND
-- ROUND function takes two arguments inside the parenthesis:
-- A column name
-- An integer

-- It rounds the values in the column to the number of decimal places specified by the integer.

SELECT ROUND(price, 0)
FROM fake_apps;

-- Here, we pass the column price and integer 0 as arguments. SQL rounds the values in the column to zero decimal places in the output.

--------------------
-- Let's return the name column and a rounded price column.
SELECT name, ROUND(price, 0)
FROM fake_apps;

-- In the last exercise, we were able to get the average price of an app (2.02365)
-- Write a new query that rounds this result to 2 decimal places.
SELECT ROUND(AVG(price), 2)
FROM fake_apps;
