-- AND
-- We can combine multiple conditions in a WHERE clause to make the result set more specific and useful.

-- Here, we use the AND operator to only return 90s romance movies.

SELECT *
FROM movies
WHERE year BETWEEN 1990 AND 1999
  AND genre = 'romance';

-------------------
-- Now, let's retrieve every movie released in the 70's, that's also well received.

SELECT *
FROM movies
WHERE year BETWEEN 1970 AND 1979
  AND imdb_rating > 8;

-- Using AND, write a new query that selects all movies made prior to 1985 that are also in the horror genre.
SELECT *
FROM movies
WHERE year < 1985
  AND genre = 'horror';
