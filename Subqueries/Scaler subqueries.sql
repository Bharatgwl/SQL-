SELECT
    max(score)
FROM
    campusx.movies;

--  but this query is static so we need to make it dynamic 
SELECT
    *
FROM
    campusx.movies
WHERE
    score = 9.3;

-- subquery 
SELECT
    *
FROM
    campusx.movies
WHERE
    score = (
        SELECT
            max(score)
        FROM
            campusx.movies
    );

-- find the total no. of movies with rating greater than average rating of all movies 
SELECT
    count(*)
FROM
    campusx.movies
WHERE
    score > (
        SELECT
            avg(score)
        FROM
            campusx.movies
    );

-- find the highest rated movie of year 2000
SELECT
    *
FROM
    campusx.movies
WHERE
    year = 2000
    AND score = (
        SELECT
            max(score)
        FROM
            campusx.movies
        WHERE
            year = 2000
    );

-- find the highest rated movie that has more votes than average votes
SELECT
    *
FROM
    campusx.movies
WHERE
    score = (
        SELECT
            max(score)
        FROM
            campusx.movies
        WHERE
            votes > (
                SELECT
                    avg(votes)
                FROM
                    campusx.movies
            )
    );