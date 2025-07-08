-- RANK ()
SELECT
    *,
    RANK() OVER (
        -- this rank function will rank the marks in descending order from whole data 
        ORDER BY
            marks DESC
    )
FROM
    marks;

--  if we want to find the rank of each student in each branch 
SELECT
    *,
    RANK() OVER (
        PARTITION BY branch -- by adding this we will get the rank of each student in each branch
        ORDER BY
            marks DESC
    )
FROM
    marks;

-- DENSE RANK()  this will give the next rank if there is a tie 
SELECT
    *,
    DENSE_RANK() OVER (
        PARTITION BY branch
        ORDER BY
            marks DESC
    )
FROM
    marks;

-- ROW NUMBER()
SELECT
    *,
    ROW_NUMBER() OVER (
        PARTITION BY branch
        ORDER BY
            marks DESC
    )
FROM
    marks;

--  f
SELECT * 
FROM (
    SELECT
        MONTH(date) AS month,
        user_id,
        SUM(amount) AS total_amount,
        RANK() OVER (
            PARTITION BY MONTH(date)
            ORDER BY SUM(amount) DESC
        ) AS user_rank
    FROM subquery_orders
    GROUP BY MONTH(date), user_id
    ORDER BY month
) AS ranked_data;


