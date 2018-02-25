-- LIMIT

SELECT *
FROM movies
LIMIT 5;

-- LIMIT is a clause that lets you specify the maximum number of rows the result set will have. This saves space on our screen and makes our queries run faster.
-- LIMIT always goes at the very end.

--------------------
-- Combining your knowledge of LIMIT and ORDER BY, write a query that returns the top three highest rated movies.
SELECT *
FROM movies
ORDER BY imdb_rating DESC
LIMIT 3;
