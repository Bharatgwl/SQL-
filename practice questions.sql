## find the average battery capacity and average primary rear camera resolution for all brands where price is greater than or equals to 100000

SELECT 
    AVG(battery_capacity) AS avg_battery,
    AVG(primary_camera_front)
FROM
    campusx.smartphones
WHERE
    price >= 100000;

# find the average 	internal memeory capacity of smartphones that have a refersh rate of 120hs or greater and front camera resolution is greater than 20 megapixel\

SELECT 
    ROUND(AVG(internal_memory))
FROM
    campusx.smartphones
WHERE
    refresh_rate >= 120
        AND primary_camera_front >= 20;
        
        
## find the number of smartphone with 5g capability;

SELECT 
    COUNT(*)
FROM
    campusx.smartphones
WHERE
    has_5g = 'True';
    
