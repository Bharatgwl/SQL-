SELECT
    name,
    genre,
    score,
    (
        SELECT
            avg(score)
        FROM
            movies m2
        WHERE
            m2.genre = m1.genre
    )
FROM
    movies m1