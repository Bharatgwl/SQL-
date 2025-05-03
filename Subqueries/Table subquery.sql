--  find the most profitable movie of each year 
SELECT
    *
from
    movies
where
    (year, gross - budget) in (
        SELECT
            year,
            max(gross - budget)
        from
            movies
        GROUP BY
            year
    );

-- find the highest rated movie of each genre with more than 25000 votes
SELECT
    *
from
    movies
WHERE
    (genre, score) in (
        SELECT
            genre,
            max(score)
        from
            movies
        where
            votes > 25000
        GROUP BY
            genre
    )
    and votes > 25000;

-- find the highes grossing hbamovies which has top star and director combo in terms of gross income 
with
    var as (
        SELECT
            star,
            director,
            max(gross)
        from
            movies
        GROUP BY
            star,
            director
        ORDER BY
            sum(gross) DESC
        LIMIT
            5
    )
SELECT
    *
from
    movies
where
    (star, director, gross) in (
        select
            *
        from
            var
    );
