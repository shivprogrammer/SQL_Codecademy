-- CROSS JOIN
-- Sometimes, we just want to combine all rows of one table with all rows of another table.
-- For instance, if we had a table of shirts that that described different shits we own, and another table called pants that described different pants that we owned, we might want to know all possible combinations of shirts and pants to create outfits.

-- Our code might look like this:
SELECT shirt.shirt_color, pants.pant_color -- select the columns shirt_color and pant_color
FROM shirts -- pulls data from the table shirts
CROSS JOIN pants; -- performs a CROSS JOIN with pants

-- Notice that cross joins don't require an ON statement. You're not really joining any columns!

-- A more common usage of CROSS JOIN is when we need to compare each row of a table to a list of values.

---------------------
-- Let's start by counting the number of customers who were subscribed to the newspaper during March (3). Use COUNT(*) to count the number of rows and a WHERE clause to restrict to:
-- start_month less than 3
-- end_month greater than 3
SELECT COUNT(*)
FROM newspaper
WHERE start_month < 3 AND end_month > 3;

-- Our database contains another table called months which contains the numbers between 1 and 12. Select all columns from the cross join of newspaper and months.
SELECT *
FROM newspaper
CROSS JOIN months;

-- Create a third query where you add a where statement to your cross join. The column month should be greater than start_month, but less than end_month. This will select all months where a user was subscribed.
SELECT *
FROM newspaper
CROSS JOIN months
WHERE month > start_month AND month < end_month;

-- Create a final query where you aggregate over each month.
SELECT month, COUNT(*) as subscribers
FROM newspaper
CROSS JOIN months
WHERE month > start_month
  AND month < end_month
GROUP BY month;
