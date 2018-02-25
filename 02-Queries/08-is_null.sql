-- Is Null
-- Unknown values are indicated by NULL
-- It is not possible to test for NULL values with comparison operators, such as = and !=
-- Instead we use: IS NULL, IS NOT NULL

-- So, to filter all movies with an imdb rating
SELECT name
FROM movies
WHERE imdb_rating IS NOT NULL;

--------------

SELECT name
FROM movies
WHERE imdb_rating IS NULL;
