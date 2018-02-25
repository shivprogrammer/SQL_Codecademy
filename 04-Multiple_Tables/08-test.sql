-- UNION
-- Sometimes we want to stack one datase on top of the other. UNION allows us to do that.

SELECT *
FROM table1
UNION
SELECT *
FROM table2;

-- SQL has strict rules for appending data:
-- Tables must have the same # of columns.
-- The columns must have the same data types in the same order as the first table.

--------------------------
-- Let's return to our newspaper and online subscriptions. We'd like to create one big table with both sets of data. Use UNION to combine newspaper and online.
SELECT *
FROM newspaper
UNION
SELECT *
FROM online;
