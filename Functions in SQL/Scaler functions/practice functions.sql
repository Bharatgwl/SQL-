## ABS
SELECT
    ABS(price - 100000) AS temp
FROM
    campusx.smartphones;

## ROUND
SELECT
    model,
    round(
        SQRT(
            resolution_width * resolution_width + resolution_height * resolution_height
        ) / screen_size,
        2
    ) AS 'ppi'
FROM
    campusx.smartphones;