-- DISTINCT is ued to return unique values in the output. It filters out all duplicate values in the specified column(s).

-- For instance,
-- SELECT tools FROM inventory;
-- might produce:
-- Hammer
-- Nails
-- Nails
-- Nails

-- By adding DISTINCT before the column name,
-- SELECT DISTINCT tools from INVENTORY;
-- the result would now be:
-- Hammer
-- Nails

SELECT DISTINCT genre
FROM movies;

SELECT DISTINCT year
FROM movies;
