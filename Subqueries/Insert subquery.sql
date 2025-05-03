--  populate a already created loyal customers table with records of only those customers who have ordered food more than 3 times
CREATE table loyal_customers (
    user_id int primary key,
    name varchar(50),
    money int
);

INSERT INTO
    loyal_customers (user_id, name, money)
SELECT
    o.user_id,
    u.name,
    50 AS money
FROM
    subquery_orders o
    JOIN sub_query_users u ON o.user_id = u.user_id
GROUP BY
    o.user_id,
    u.name
HAVING
    COUNT(*) > 3;

SELECT * from loyal_customers;
