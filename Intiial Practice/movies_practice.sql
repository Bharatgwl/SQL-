SELECT
    count(*)
FROM
    test.`indian movies`;

SELECT
    director,
    avg(world - gross) AS profit
FROM
    movies
GROUP BY
    director
ORDER BY
    profit
LIMIT
;

SELECT
    *
FROM
    test.titanic;