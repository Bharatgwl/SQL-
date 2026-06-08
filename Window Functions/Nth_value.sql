-- find the student with highest marks  with all branch 
SELECT
    *,
    FIRST_VALUE(name) over(
        ORDER BY
            marks DESC
    )
FROM
    marks;

SELECT
    *,
    LAST_VALUE(name) over(
        -- this will give the wrong answer because the default frame is set to  row unbounded preceding and current row 
        ORDER BY
            marks DESC
    )
FROM
    marks;

SELECT
    *,
    LAST_VALUE(name) over(
        ORDER BY
            marks DESC ROWS BETWEEN UNBOUNDED PRECEDING
            AND UNBOUNDED FOLLOWING -- now this will give the correct answer because the frame is set to UNBOUNDED PRECEDING and UNBOUNDED FOLLOWING which checks the whole data for every value of marks  
    )
FROM
    marks;

SELECT
    *,
    NTH_VALUE(name, 2) over(
        ORDER BY
            marks DESC ROWS BETWEEN UNBOUNDED PRECEDING
            AND UNBOUNDED FOLLOWING
    )
FROM
    marks;

SELECT
    name,
    marks,
    branch
FROM
    (
        SELECT
            *,
            FIRST_VALUE(name) over(
                PARTITION BY branch
                ORDER BY
                    marks DESC
            ) AS "topper_name",
            FIRST_VALUE(marks) over(
                PARTITION BY branch
                ORDER BY
                    marks DESC
            ) AS "topper_marks"
        FROM
            marks
    ) t
WHERE
    t.marks = t.topper_marks
    AND t.name = t.topper_name;

-- since the above query is hactic and long we are specifying the same frame again and again 
-- we can use this window 
SELECT
    name,
    marks,
    branch
FROM
    (
        SELECT
            *,
            LAST_VALUE(name) OVER (
                PARTITION BY branch
                ORDER BY
                    marks DESC ROWS BETWEEN UNBOUNDED PRECEDING
                    AND UNBOUNDED FOLLOWING
            ) AS Last_name,
            LAST_VALUE(marks) OVER (
                PARTITION BY branch
                ORDER BY
                    marks DESC ROWS BETWEEN UNBOUNDED PRECEDING
                    AND UNBOUNDED FOLLOWING
            ) AS Last_marks
        FROM
            marks
    ) t
WHERE
    t.marks = t.Last_marks
    AND t.name = t.Last_name;

-- Lag 
SELECT
    *,
    LAG(marks) over(
        ORDER BY
            marks DESC
    )
FROM
    marks;

-- Lead 
SELECT
    *,
    LEAD(marks) over(
        ORDER BY
            marks DESC
    )
FROM
    marks;

SELECT
    MONTH(date),
    sum(amount),
    (
        (
            sum(amount) - Lag(sum(amount)) over(
                ORDER BY
                    MONTH(date)
            )
        ) / sum(amount)
    ) * 100 AS growth
FROM
    subquery_orders
GROUP BY
    MONTH(date);