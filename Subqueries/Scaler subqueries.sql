SELECT
    max(score)
from
    campusx.movies;

--  but this query is static so we need to make it dynamic 
SELECT
    *
from
    campusx.movies
where
    score = 9.3;

-- subquery 
select
    *
from
    campusx.movies
where
    score = (
        select
            max(score)
        from
            campusx.movies
    );

-- find the total no. of movies with rating greater than average rating of all movies 
SELECT
    count(*)
from
    campusx.movies
where
    score > (
        select
            avg(score)
        from
            campusx.movies
    );

-- find the highest rated movie of year 2000
select
    *
from
    campusx.movies
where
    year = 2000
    and score = (
        select
            max(score)
        from
            campusx.movies
        where
            year = 2000
    );

-- find the highest rated movie that has more votes than average votes
SELECT
    *
from
    campusx.movies
where
    score = (
        select
            max(score)
        from
            campusx.movies
        where
            votes > (
                select
                    avg(votes)
                from
                    campusx.movies
            )
    );