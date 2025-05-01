--  union to find rows between 2 or more tables it removes duplicate rows which are common in both tables 
SELECT *
from person1
UNION
SELECT *
FROM person2;

-- union all to find all rows between 2 or more tables
SELECT *
from person1
UNION all
SELECT *
from person2;

-- intersect to find the only which is common  
SELECT *
from person1
intersect
SELECT *
from person2;

-- Except return the rows which are only present in 1st table and also remove common duplicate rows
SELECT *
from person1
Except
SELECT *
from person2;