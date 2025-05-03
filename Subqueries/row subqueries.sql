USE campusx;

-- find the user id who has not placed any order
select
    *
from
    sub_query_users
where
    user_id not in (
        SELECT DISTINCT
            (user_id)
        from
            subquery_orders
    )
    -- find the top 3 directors based on total gross
WITH
    top_director as (
        SELECT
            director
        FROM
            movies
        GROUP BY
            director
        order by
            sum(gross) DESC
        limit
            3
    )
SELECT
    *
from
    movies
where
    director in (
        SELECT
            *
        from
            top_director
    );
-- find the actors who have acted in more than one movie with rating greater than 8.5 and more than 25000 votes
select
    *
from
    movies
where
    star in (
        SELECT
            star
        from
            movies
        where
            votes > 25000
        GROUP BY
            star
        having
            avg(score) > 8.5
    )
    and votes > 25000;  