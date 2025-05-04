## find the top 5 suamsung smartphone wit biggest screen size
SELECT
    brand_name,
    screen_size
FROM
    campusx.smartphones
WHERE
    brand_name = 'samsung'
ORDER BY
    (screen_size) DESC
LIMIT
    5;

## sort all the phones in descending order of the number of total cameras
SELECT
    model,
    num_front_cameras + num_rear_cameras AS 'total_camera'
FROM
    campusx.smartphones
ORDER BY
    total_camera DESC;

## sort data on the basis of ppi in decreasing order
SELECT
    model,
    SQRT(
        resolution_width * resolution_width + resolution_height * resolution_height
    ) / screen_size AS 'ppi'
FROM
    campusx.smartphones
ORDER BY
(ppi) ASC;

## find the phone with 2nd largest battery 
SELECT
    model,
    battery_capacity
FROM
    campusx.smartphones
ORDER BY
    battery_capacity DESC
LIMIT
    1, 1;

## find the name and rating of worst rated apple phone 
SELECT
    brand_name,
    model,
    rating
FROM
    campusx.smartphones
WHERE
    brand_name = 'apple'
ORDER BY
    rating ASC
LIMIT
    0, 1;

## sort phone alphabetically and then on the basis of rating in desc order
SELECT
    *
FROM
    campusx.smartphones
ORDER BY
    brand_name ASC,
    price ASC