-- A CASE statement allows us to create different outputs (usually in the SELECT statement). It is SQL's way of handling if/then logic.
-- Suppose we want to condense the ratings in movies to just 'Good' and 'Bad'.

SELECT name,
  CASE
    WHEN imdb_rating > 7 THEN 'Good'
    WHEN imdb_rating > 5 THEN 'Okay'
  END
FROM movies;

-- CASE statement must end with END

------------
-- Use a case statement to create a column called mood that is:
-- fun if genre is romance
-- fun if genre is comedy
-- serious in all other cases

SELECT name,
  CASE
    WHEN genre = 'romance' THEN 'fun'
    WHEN genre = 'comedy' THEN 'fun'
    ELSE 'serious'
  END
FROM movies;
