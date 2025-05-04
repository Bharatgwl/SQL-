-- find the restaurant rating 
SELECT
    r_name,
    avg_rating
FROM
    (
        SELECT
            r_id,
            avg(restaurant_rating) AS 'avg_rating'
        FROM
            subquery_orders
        GROUP BY
            r_id
    ) t1
    JOIN restaurants t2 ON t1.r_id = t2.r_id;