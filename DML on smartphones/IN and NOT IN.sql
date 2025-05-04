## IN and NOT IN
SELECT
    *
FROM
    campusx.smartphones
WHERE
    processor_brand = 'snapdragon'
    OR processor_brand = 'exynos'
    OR processor_brand = 'bionic';

-- using in
SELECT
    *
FROM
    campusx.smartphones
WHERE
    processor_brand IN ('snapdragon', 'exynos', 'bionic');

SELECT
    *
FROM
    campusx.smartphones
WHERE
    processor_brand NOT IN ('snapdragon', 'exynos', 'bionic');