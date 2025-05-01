SELECT *
from membership t1
    Left JOIN users t2 on t1.user_id = t2.user_id
UNION
SELECT *
from membership t1
    right JOIN users t2 on t1.user_id = t2.user_id