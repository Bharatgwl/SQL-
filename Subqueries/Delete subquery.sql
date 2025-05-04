-- Delete the custoemr records who have never oredered 
DELETE FROM
    sub_query_users
WHERE
    user_id NOT IN (
        SELECT
            DISTINCT user_id
        FROM
            subquery_orders
    );

SELECT
    *
FROM
    sub_query_users