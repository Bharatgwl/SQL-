SELECT
    *
FROM
    membership t1
    RIGHT JOIN users t2 ON t1.user_id = t2.user_id