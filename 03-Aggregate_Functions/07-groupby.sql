-- GROUP BY I
-- Instead of writing this:
SELECT AVG(imdb_rating)
FROM movies
WHERE year = 1999;

SELECT AVG(imdb_rating)
FROM movies
WHERE year = 2000;

SELECT AVG(imdb_rating)
FROM movies
WHERE year = 2001;

-- We can use GROUP BY to do this in a single step
SELECT year, AVG(imdb_rating)
FROM movies
GROUP BY year
ORDER BY year;

-- GROUP BY is a clause in SQL that is used with aggregate functions. It is used in collaboration with the SELECT statement to arrange identical data into groups.

-- The GROUP BY statement comes after any WHERE statements, but before ORDER BY or LIMIT.

----------------------

-- Suppose we want to count the total number of apps for each price in the table:
SELECT price, COUNT(*)
FROM fake_apps
GROUP BY price;
-- Here, our aggregate function is COUNT and we arranged price into groups.

-- In the previous query, add a WHERE clause to count the total number of apps that has been downloaded more than 20,000 times, at each price.
SELECT price, COUNT(*)
FROM fake_apps
WHERE downloads > 20000
GROUP BY price;

-- Write a new query that calculates the total number of downloads for each category.
SELECT category, SUM(downloads)
FROM fake_apps
GROUP BY category; -- WORKED, GOSH DARN YESSSSSS
