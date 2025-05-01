--  find the order placed in pune 
SELECT *
from campusx.orders t1
    join campusx.users t2 on t1.user_id = t2.user_id
    where t2.city = 'Pune';