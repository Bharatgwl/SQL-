--  find the order id name and city by joining users and orders 
SELECT t1.order_id,
    t2.name,
    t2.city
from campusx.orders t1
    join campusx.users t2 on t1.user_id = t2.user_id;


-- fint the order id and product category by joining order_details and category 
SELECT t1.order_id,
    t2.category
from campusx.order_details t1
    join campusx.category t2 on t1.category_id = t2.category_id;


-- find all profitable orders
SELECT t1.order_id,
    sum(t2.profit) as profit
from orders t1
    join order_details t2
where t1.order_id = t2.order_id
GROUP BY t1.order_id
having profit > 0;


-- find the customer who has placed max number of orders 
SELECT name,
    count(*) as num_orders
from users as t1
    join orders as t2 on t1.user_id = t2.user_id
GROUP BY t1.name
ORDER BY count(num_orders) DESC
limit 1;


--  find the most profitable category 
SELECT vertical,
    sum(profit) as profit
from order_details as t1
    join category as t2 on t1.category_id = t2.category_id
GROUP BY t2.vertical
ORDER BY profit DESC
LIMIT 1;


-- which is the most profitable state
SELECT state,
    sum(profit)
from orders as t1
    join order_details as t2 on t1.order_id = t2.order_id
    join users t3 on t1.user_id = t3.user_id
GROUP BY state
ORDER BY sum(profit) DESC;


--  find all category with profit higher than 5000
SELECT vertical,
    sum(profit) as profit
from order_details as t1
    join category as t2 on t1.category_id = t2.category_id
GROUP BY t2.vertical
HAVING sum(profit) > 5000;