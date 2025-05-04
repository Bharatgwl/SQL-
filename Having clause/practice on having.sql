## Select -> where
## group by -> having 
SELECT
    brand_name,
    COUNT(*) AS count,
    AVG(price) AS avg_price
FROM
    campusx.smartphones
GROUP BY
    brand_name
HAVING
    count > 20
ORDER BY
    avg_price DESC;

-- ## 1 find the avg rating of smartphone brands which having more than 20 phones 
SELECT
    brand_name,
    AVG(rating) AS rating,
    COUNT(*) AS count
FROM
    campusx.smartphones
GROUP BY
    brand_name
HAVING
    count > 20
ORDER BY
    rating;

## 2 find the top 3 brands with the highest avg ram that have a refresh rate at least 90hz and the fast charging available and dont consider brands which have less than 10 phones
SELECT
    brand_name,
    AVG(ram_capacity) AS avg_ram
FROM
    campusx.smartphones
WHERE
    refresh_rate > 90
    AND fast_charging_available = 1
GROUP BY
    brand_name
HAVING
    count(*) > 10
ORDER BY
    avg_ram DESC
LIMIT
    3;

## 3 find the avg price of all the phone brand with the avg rating > 70 and num phones more than 10 among all 5g enabled 
SELECT
    brand_name,
    ROUND(AVG(price))
FROM
    campusx.smartphones
WHERE
    has_5g = 'True'
GROUP BY
    brand_name
HAVING
    AVG(rating) > 70
    AND COUNT(*) > 10
ORDER BY
    ROUND(AVG(price)) DESC;