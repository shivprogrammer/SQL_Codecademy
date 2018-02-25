-- LEFT JOINS
-- What if we want to combine two tables and keep some of the unmatched rows?
-- SQL lets us do this through a command called LEFT JOIN. A left join will keep all rows from the first table, regardless of whether there is a matching row in the second table.

SELECT * -- select all columns from both tables
FROM table1 -- select table1 (the "left" table).
LEFT JOIN table2 -- performs a LEFT JOIN on table2 (the "right" table)
  ON table1.c2 = table2.c2; -- How to perform the join (by looking for matching values in column c2)

----------------------------

-- Let's return to our newspaper and online subscribers. Suppose we want to know how many users subscribe to the print news paper, but not to the online. Start by performing a left join of newspaper and online and selecting all columns.
SELECT *
FROM newspaper
LEFT JOIN online
	ON newspaper.id = online.id;

-- In order to find which users do not subscribe to the online edition, we need to add a WHERE clause. Create a new query that adds the following WHERE clause:
SELECT *
FROM newspaper
LEFT JOIN online
  ON newspaper.id = online.id
WHERE online.id IS NULL;
-- NOTE* Alright, this is the answer, but you actually have to have the first query in place in order for this query to be run successfully. Just this one by itself gives wonky results.
