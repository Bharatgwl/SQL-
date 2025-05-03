-- Populate the money column of loyal customers table using the order table provide 10 % app money to all customers based on their orders 
UPDATE loyal_customers t1
set
    money = (
        SELECT
            sum(t2.amount) * 0.1
        from
            subquery_orders t2
        where
            t2.user_id = t1.user_id
    );






