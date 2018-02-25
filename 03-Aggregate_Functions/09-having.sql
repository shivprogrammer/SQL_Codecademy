-- HAVING
-- Imagine that we want to see how many movies of different genres were produced each year, but we ony care about years and genres with at least 10 movies.
-- We can't use WHERE here because we don't want to filter the rows; we want to filter groups.
-- This is where HAVING comes in
-- HAVING is very similar to WHERE. In fact, all types of WHERE clauses you learned about thus far can be used with HAVING.

SELECT year, genre, COUNT(name)
FROM movies
GROUP BY 1, 2
HAVING COUNT(name) > 10

-- When we want to limit the results of a query based on values of the individual rows, we use WHERE.
-- When we want to limit the results of a query based on an aggregate property, we use HAVING.

-- HAVING statement always comes after GRUOP BY, but before ORDER BY and LIMIT.

-------------------------
-- Add a HAVING clause to restrict the query to prices where the total number of apps at that price point is greater than 9.

SELECT price, ROUND(AVG(downloads))
FROM fake_apps
GROUP BY price
HAVING COUNT(price) > 9;
