SELECT
    name,
    genre,
    score,
    (
        SELECT
            avg(score)
        from
            movies m2
        where
            m2.genre = m1.genre
    )
from
    movies m1