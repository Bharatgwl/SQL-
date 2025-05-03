-- find the restaurant rating 
SELECT
    r_name,
    avg_rating
FROM
    (
        SELECT
            r_id,
            avg(restaurant_rating) as 'avg_rating'
        from
            subquery_orders
        GROUP BY
            r_id
    ) t1
    join restaurants t2 on t1.r_id = t2.r_id;