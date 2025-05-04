--  union to find rows between 2 or more tables it removes duplicate rows which are common in both tables 
SELECT
    *
FROM
    person1
UNION
SELECT
    *
FROM
    person2;

-- union all to find all rows between 2 or more tables
SELECT
    *
FROM
    person1
UNION
ALL
SELECT
    *
FROM
    person2;

-- intersect to find the only which is common  
SELECT
    *
FROM
    person1
INTERSECT
SELECT
    *
FROM
    person2;

-- Except return the rows which are only present in 1st table and also remove common duplicate rows
SELECT
    *
FROM
    person1
EXCEPT
SELECT
    *
FROM
    person2;