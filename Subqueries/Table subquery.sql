--  find the most profitable movie of each year 
SELECT
    *
FROM
    movies
WHERE
    (year, gross - budget) IN (
        SELECT
            year,
            max(gross - budget)
        FROM
            movies
        GROUP BY
            year
    );

-- find the highest rated movie of each genre with more than 25000 votes
SELECT
    *
FROM
    movies
WHERE
    (genre, score) IN (
        SELECT
            genre,
            max(score)
        FROM
            movies
        WHERE
            votes > 25000
        GROUP BY
            genre
    )
    AND votes > 25000;

-- find the highes grossing hbamovies which has top star and director combo in terms of gross income 
WITH var AS (
    SELECT
        star,
        director,
        max(gross)
    FROM
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
FROM
    movies
WHERE
    (star, director, gross) IN (
        SELECT
            *
        FROM
            var
    );