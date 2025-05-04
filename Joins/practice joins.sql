--  find the order id name and city by joining users and orders 
SELECT
    t1.order_id,
    t2.name,
    t2.city
FROM
    campusx.orders t1
    JOIN campusx.users t2 ON t1.user_id = t2.user_id;

-- fint the order id and product category by joining order_details and category 
SELECT
    t1.order_id,
    t2.category
FROM
    campusx.order_details t1
    JOIN campusx.category t2 ON t1.category_id = t2.category_id;

-- find all profitable orders
SELECT
    t1.order_id,
    sum(t2.profit) AS profit
FROM
    orders t1
    JOIN order_details t2
WHERE
    t1.order_id = t2.order_id
GROUP BY
    t1.order_id
HAVING
    profit > 0;

-- find the customer who has placed max number of orders 
SELECT
    name,
    count(*) AS num_orders
FROM
    users AS t1
    JOIN orders AS t2 ON t1.user_id = t2.user_id
GROUP BY
    t1.name
ORDER BY
    count(num_orders) DESC
LIMIT
    1;

--  find the most profitable category 
SELECT
    vertical,
    sum(profit) AS profit
FROM
    order_details AS t1
    JOIN category AS t2 ON t1.category_id = t2.category_id
GROUP BY
    t2.vertical
ORDER BY
    profit DESC
LIMIT
    1;

-- which is the most profitable state
SELECT
    state,
    sum(profit)
FROM
    orders AS t1
    JOIN order_details AS t2 ON t1.order_id = t2.order_id
    JOIN users t3 ON t1.user_id = t3.user_id
GROUP BY
    state
ORDER BY
    sum(profit) DESC;

--  find all category with profit higher than 5000
SELECT
    vertical,
    sum(profit) AS profit
FROM
    order_details AS t1
    JOIN category AS t2 ON t1.category_id = t2.category_id
GROUP BY
    t2.vertical
HAVING
    sum(profit) > 5000;