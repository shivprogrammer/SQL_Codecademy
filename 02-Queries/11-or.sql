-- OR
-- Suppose we want to check out a new movie or something action-packed:

SELECT *
FROM movies
WHERE year > 2014
  OR genre = 'action';

SELECT *
FROM movies
WHERE genre = 'romance'
  OR genre = 'comedy';
