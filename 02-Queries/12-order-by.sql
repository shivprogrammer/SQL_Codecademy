-- ORDER BY
-- We can sort the results using ORDER BY, either alphabetically or numerically.

-- For example, if we want to sort everthing by the movie's title from A through Z:
SELECT *
FROM movies
ORDER BY name;

-- Sometimes we want to sort things in a decreasing order. For example, if we want to select all of the well-received movies, sorted from highest to lowest by their year:
SELECT *
FROM movies
WHERE imdb_rating > 8
ORDER BY year DESC;

-- DESC is a keyword used in ORDER BY to sort the results in descending order (high to low or Z-A)
-- ASC is a keyword used in ORDER BY to sort the results in ascending order (low to high or A-Z)

-- NOTE* The column that we ORDER BY doesn't even have to be one of the columsn that we're displaying.

--------------------
-- Retrieve the name and year columns of all the movies, ordered by their name alphabetically.
SELECT name, year
FROM movies
ORDER BY name;

-- Write a new query that retrieves the name, year, and imdb_rating columns of all the movies, ordered highest to lowest by their ratings.
SELECT name, year, imdb_rating
FROM movies
ORDER BY imdb_rating DESC;
