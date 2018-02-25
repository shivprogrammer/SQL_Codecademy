-- Combining Tables with SQL
-- If we want to combine orders and customers, we would type:
SELECT * -- The first line selects all columns from our combined table.
FROM orders -- The second line specifies the first table that we want to look in, orders
JOIN customers -- The third line uses JOIN to say that we want to combine information from orders with customers.
  ON orders.customer_id = customers.customer_id; -- The fourth line tells us how to combine the two tables. We want to match customer_id from orders with customer_id from customers.

-- Because column names after often repeated across multiple tables we use the syntax table_name.column_name to be sure that our requests for columsn are unambigious.

-- If we wanted to select the order_id from orders and the customer_name from customers, we could use the following query.
SELECT orders.order_id, customers.customer_name
FROM orders
JOIN customers
  ON orders.customer_id = customers.customer_id;

-----------------
SELECT *
FROM orders
JOIN subscriptions
  ON orders.subscription_id = subscriptions.subscription_id;

-- Add a second query after your first one that only selects rows from the join where description is equal to 'Fashion Magazine'.
SELECT *
FROM orders
JOIN subscriptions
  ON orders.subscription_id = subscriptions.subscription_id
WHERE description = 'Fashion Magazine';
