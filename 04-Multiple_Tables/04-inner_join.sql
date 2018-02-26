-- Inner Joins
-- Imagine that our customers table was out of date, and was missing any information on customer 11. If that customer had an order in oreders, what would happen when we joined the tables?
-- When we perform a simple JOIN (often called an inner join) our result only includes rows that match our ON condition.

-- on table1.c2 = table2.c2
-- The first and last rows have matching values of c2. The middle rows do not match. The final result has all values from the first and last rows but does not include the non-mathing middle row.

--------------
-- The table newspaper contains information about the newspaper subscribers. Count the number of subscribers who get a print newspaper.
SELECT COUNT(id)
FROM newspaper;

-- The table online contains information about the online subscribers. Count the number of subscribers who get an online newspaper.
SELECT COUNT(id)
FROM online;

-- Join newspaper and online on id (the unique ID of the subscriber). How many rows are in this table?
SELECT COUNT(*)
FROM newspaper
JOIN online
  ON newspaper.id = online.id;
