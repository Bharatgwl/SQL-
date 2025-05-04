SELECT
    DISTINCT brand_name
FROM
    campusx.smartphones;

SELECT
    DISTINCT (processor_brand) AS 'ALL processor'
FROM
    campusx.smartphones;

SELECT
    DISTINCT (os)
FROM
    campusx.smartphones;

SELECT
    DISTINCT brand_name,
    processor_brand
FROM
    campusx.smartphones;