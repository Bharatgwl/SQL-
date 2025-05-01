SELECT *
from membership t1
    left JOIN users t2 on t1.user_id = t2.user_id