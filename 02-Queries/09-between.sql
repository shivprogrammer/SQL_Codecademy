-- BETWEEN
-- The BETWEEN oeprator can be used in a WHERE clause to filter the result set within a certain range. The values can be numbers, text, or dates.

-- This statement filters the result set to only include movies with name(s) that begin with letters 'A' up to but not including 'j'.
SELECT *
FROM movies
WHERE name BETWEEN 'A' AND 'J';

-- anotha one
SELECT *
FROM movies
WHERE year BETWEEN 1990 AND 1999;
-- In this statement the BETWEEN operator is being used to filter the result set to only include movies with year(s) between 1990 up to and including 1999.

-- REALLY IMPORTANT NOTE TO MENTION
-- BETWEEN two letters IS NOT includsive
-- BETWEEN two numbers IS inclusive

----------------
-- Using the BETWEEN operator, write a query that selects all rows where the movie titles that begin with letters 'D' up to but not including 'G'.
SELECT *
FROM movies
WHERE name BETWEEN 'D' AND 'G';
-- what the hell, so it doesn't include the last one for letters.

-- Using the BETWEEN operator, write a new query that selects all movies that were released in the 1970's.
SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979;
