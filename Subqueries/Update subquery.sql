-- Populate the money column of loyal customers table using the order table provide 10 % app money to all customers based on their orders 
UPDATE
    loyal_customers t1
SET
    money = (
        SELECT
            sum(t2.amount) * 0.1
        FROM
            subquery_orders t2
        WHERE
            t2.user_id = t1.user_id
    );