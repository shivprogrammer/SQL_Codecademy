-- AS is a keyword in SQL that allows you to rename a column or table using an alias. The new name can be anything you want as long as you put it inside of single quotes. Here we renamed the name column as Movies.
-- It is important to remember that the columns have not been renamed in the table. The aliases only appear in the result.

SELECT name AS 'Title', imdb_rating AS 'IMDb'
FROM movies;
