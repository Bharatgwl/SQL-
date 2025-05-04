-- ## find the smartphones which are less than 20000 and having rating greater than 
SELECT
    *
FROM
    campusx.smartphones
WHERE
    rating >= 80
    AND price <= 20000;

## find the smartphones with ram > 8gb 
SELECT
    *
FROM
    campusx.smartphones
WHERE
    ram_capacity >= 8;

## find all samsung phones with snapdragon processor 
SELECT
    *
FROM
    campusx.smartphones
WHERE
    brand_name = 'samsung'
    AND processor_brand = 'snapdragon';