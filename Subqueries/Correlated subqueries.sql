--  find the movie that have a rating higher than the avg rating of its own genre 
SELECT
    *
from
    movies m1
WHERE
    score > (
        SELECT
            avg(score)
        from
            movies m2
        where
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
with
    fav_food as (
        select
            name,
            f_name,
            count(*) as 'frequency'
        from
            sub_query_users as t1
            join subquery_orders t2 on t1.user_id = t2.user_id
            join subquery_order_details t3 on t2.order_id = t3.order_id
            join food t4 on t3.f_id = t4.f_id
        group BY
            t1.name,
            t4.f_name
    )
select
    *
from
    fav_food f1
where
    frequency = (
        select
            max(frequency)
        from
            fav_food f2
        where
            f1.name = f2.name
    )