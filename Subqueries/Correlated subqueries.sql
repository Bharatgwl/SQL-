--  find the movie that have a rating higher than the avg rating of its own genre 
SELECT
    *
FROM
    movies m1
WHERE
    score > (
        SELECT
            avg(score)
        FROM
            movies m2
        WHERE
            m2.genre = m1.genre -- isme m1.genre har baar new ayega fir m2.genre check karega m1.genre ke equal hay yaa nhi iska matlb har baar bahar se ek genre mil raha hay fir usko check kr rhe hay or uska avg nikal ke de rhe hay 
            -- for(i->m1.genre){ 
            --      movie.score > avg(score)  then select this movie
            --     for(j-> m2.genre){
            --         if (m2.genre == m1.genre) {
            --                  avg(score)
            --              ek temp table banalo uss genre ki or fir finally uss puri table ka score avg calculate krllo
            --              or return kardo 
            --         }
            --     }
            -- }
    );

-- find the fav food of each customer 
WITH fav_food AS (
    SELECT
        name,
        f_name,
        count(*) AS 'frequency'
    FROM
        sub_query_users AS t1
        JOIN subquery_orders t2 ON t1.user_id = t2.user_id
        JOIN subquery_order_details t3 ON t2.order_id = t3.order_id
        JOIN food t4 ON t3.f_id = t4.f_id
    GROUP BY
        t1.name,
        t4.f_name
)
SELECT
    *
FROM
    fav_food f1
WHERE
    frequency = (
        SELECT
            max(frequency)
        FROM
            fav_food f2
        WHERE
            f1.name = f2.name
    )