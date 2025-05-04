USE campusx;

SELECT
    *
FROM
    users t2
    LEFT JOIN membership t1 ON t1.user_id = t2.user_id