-- # 1 Group smartphones by brand and get theccount, average price , maxrating , avg screen size 
-- # and average battery capacity 

SELECT 
    brand_name,
    COUNT(*),
    AVG(price) AS avg_price,
    MAX(rating) AS max_rating,
    round(AVG(battery_capacity)) avg_battery_capacity
FROM
    campusx.smartphones
GROUP BY (brand_name);

-- ## 2 group by smartphones by whether they have a NFC and get the avg price and rating 

SELECT 
    has_nfc, AVG(price) AS 'avg_price', AVG(rating)
FROM
    campusx.smartphones
GROUP BY (has_nfc);

-- ## 3 group by phones by brand and processor and get the count of models and the average primary camera resolutin (Rear)

SELECT 
    brand_name,
    processor_brand,
    COUNT(*) AS 'num phones',
    round(AVG(primary_camera_front)) as 'avg_camera_resolution'
FROM
    campusx.smartphones
GROUP BY brand_name , processor_brand 
order by brand_name;

-- ## 4 find top 5 most costly brand_name

SELECT 
    brand_name, AVG(price) AS avg_price
FROM
    campusx.smartphones
GROUP BY brand_name
ORDER BY avg_price DESC
LIMIT 5;


-- ## 5 Which brand makes the smallest screen phone

SELECT 
    brand_name, AVG(screen_size) AS avg_screen
FROM
    campusx.smartphones
GROUP BY brand_name
ORDER BY avg_screen ASC
LIMIT 1;

-- ## 6 group smartphone by the brand and find the brand with the highest number of model which have both NFC and ir blaster
SELECT 
    brand_name, COUNT(*) AS count
FROM
    campusx.smartphones
WHERE
    has_5g = 'True'
        AND has_ir_blaster = 'True'
GROUP BY brand_name
ORDER BY count DESC
LIMIT 1;

-- ## 7 find all samsung 5g enabled phone and find out the avg price of nfc and non nfc

SELECT 
    has_nfc, AVG(price)
FROM
    campusx.smartphones
WHERE
    has_5g = 'True'
GROUP BY has_nfc;

-- ## find the phone name and costliest phone

SELECT 
    *
FROM
    campusx.smartphones
ORDER BY price DESC
LIMIT 1;