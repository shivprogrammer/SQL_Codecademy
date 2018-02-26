-- Primary Key VS Foreign Key
-- Primary keys have a few requirements
-- None of the values can be NULL
-- Each value must be unique (i.e., you can't have two customers with the same customer_id in the customers table)
-- A table can not havae more than one primary key column.

-- When a primary key for one table appears in a different table, it is called a foreign key. So customer_id is a primary key when it appears in customers, but a foreign key when it appears in orders.

---------------------
-- Perform an inner join of classes and students using the primary and foreign keys described above, and select all columns.
SELECT *
FROM classes
JOIN students ON classes.id = students.class_id;
