## MIN / MAX 
SELECT
    min(price)
FROM
    campusx.smartphones;

SELECT
    max(price)
FROM
    campusx.smartphones;

SELECT
    max(price)
FROM
    campusx.smartphones
WHERE
    brand_name = 'samsung';

SELECT
    *
FROM
    campusx.smartphones
WHERE
    price = 110999;

## AVG 
SELECT
    avg(rating) / 10
FROM
    campusx.smartphones
WHERE
    brand_name = 'apple';

## SUM
SELECT
    sum(price)
FROM
    campusx.smartphones
WHERE
    brand_name = 'samsung';

## COUNT
SELECT
    count(*)
FROM
    campusx.smartphones
WHERE
    brand_name = 'samsung';

SELECT
    count(*)
FROM
    campusx.smartphones
WHERE
    brand_name = 'xiaomi';

## Count((distinct))
SELECT
    count(DISTINCT(brand_name))
FROM
    campusx.smartphones;

## STD
SELECT
    std(price)
FROM
    campusx.smartphones;

## Variance 
SELECT
    variance(price)
FROM
    campusx.smartphones;