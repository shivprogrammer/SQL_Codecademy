-- COUNT
-- COUNT is a function that takes the name of a column as an argument and counts the number of non empty values in that column.

SELECT COUNT(*)
FROM table_name;

-- Here, we want to count every row, so we pass * as an argument inside parenthesis.

----------------

-- Let's count how many apps are in the database
SELECT COUNT(*)
FROM fake_apps;

-- Add a WHERE clause in the previous query to count how many free apps are in the database.
SELECT COUNT(*)
FROM fake_apps
WHERE price = 0.0;
