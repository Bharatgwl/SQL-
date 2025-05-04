USE campusx;

-- find the user id who has not placed any order
SELECT
    *
FROM
    sub_query_users
WHERE
    user_id NOT IN (
        SELECT
            DISTINCT (user_id)
        FROM
            subquery_orders
    ) -- find the top 3 directors based on total gross
    WITH top_director AS (
        SELECT
            director
        FROM
            movies
        GROUP BY
            director
        ORDER BY
            sum(gross) DESC
        LIMIT
            3
    )
SELECT
    *
FROM
    movies
WHERE
    director IN (
        SELECT
            *
        FROM
            top_director
    );

-- find the actors who have acted in more than one movie with rating greater than 8.5 and more than 25000 votes
SELECT
    *
FROM
    movies
WHERE
    star IN (
        SELECT
            star
        FROM
            movies
        WHERE
            votes > 25000
        GROUP BY
            star
        HAVING
            avg(score) > 8.5
    )
    AND votes > 25000;