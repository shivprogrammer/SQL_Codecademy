UPDATE celebs
SET twitter_handle = '@taylorswift13'
WHERE id = 4;

-- SELECT * FROM celebs; DON'T USE THIS ANY MORE, SELECT STATEMENTS NEED TO BE THE LAST STATEMENT IN A QUERY.
-- But if the select statement was used: table now shows the twitter_handle column of Taylor Swift updated with '@taylorswift13'

DELETE FROM celebs
WHERE twitter_handle IS NULL;

SELECT * FROM celebs;
-- table now only contains taylor swift's information
