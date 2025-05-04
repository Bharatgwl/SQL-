# Mathematical expression 
SELECT
    model,
    SQRT(
        resolution_width * resolution_width + resolution_height * resolution_height
    ) / screen_size AS 'ppi'
FROM
    campusx.smartphones
ORDER BY
(ppi) DESC;

SELECT
    model,
    rating / 10
FROM
    campusx.smartphones;