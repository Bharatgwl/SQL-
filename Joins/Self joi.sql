SELECT
    t1.name,
    t2.name
FROM
    campusx.users1 AS t1
    INNER JOIN campusx.users1 AS t2 ON t1.user_id = t2.emergency_contact;