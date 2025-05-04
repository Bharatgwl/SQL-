--  find the order placed in pune 
SELECT
    *
FROM
    campusx.orders t1
    JOIN campusx.users t2 ON t1.user_id = t2.user_id
WHERE
    t2.city = 'Pune';