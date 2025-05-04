-- find the genre having avg score > avg acore of all the movies 
SELECT
    genre
FROM
    movies
GROUP BY
    genre
HAVING
    avg(score) > (
        SELECT
            avg(score)
        FROM
            movies
    )