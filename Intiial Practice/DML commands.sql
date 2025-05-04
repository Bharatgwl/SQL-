SELECT
    *
FROM
    test.titanic;

-- combining two columns like an expression  
SELECT
    pclass,
    survived,
    sibsp + parch AS family
FROM
    test.titanic;

-- selecting the column name by modifying it 
SELECT
    survived,
    pclass,
    sex,
    age,
    sibsp,
    parch,
    fare,
    class,
    who,
    adult_male,
    deck,
    alive,
    alone,
    embark_town AS departure
FROM
    test.titanic;

-- ---------- Arithmetic operation on the columns 
SELECT
    *,
    age + 106 AS currentAGE
FROM
    test.titanic;

-- ------- creating some constants 
SELECT
    *,
    100000 AS Compensation
FROM
    test.titanic
WHERE
    survived = 1;

-- ---- using the distinct or finding some unique value from a column  
-- it is used to find the total unique categories  
SELECT
    DISTINCT pclass
FROM
    test.titanic;

-- 
SELECT
    DISTINCT embark_town
FROM
    test.titanic;

-- 
SELECT
    DISTINCT pclass,
    embarked
FROM
    test.titanic;

-- comparison operator = 
SELECT
    *
FROM
    test.titanic
WHERE
    survived = 0;

-- And or between operator 
SELECT
    survived,
    pclass,
    class
FROM
    test.titanic
WHERE
    survived = 0
    AND pclass = 3;

-- ---------
SELECT
    survived,
    pclass,
    class
FROM
    test.titanic
WHERE
    survived = 0
    AND pclass = 2;

-- ---- 
SELECT
    survived,
    pclass,
    class
FROM
    test.titanic
WHERE
    survived = 0
    AND pclass = 1;

-- -- 
SELECT
    *
FROM
    test.titanic
WHERE
    age BETWEEN 10
    AND 15;

SELECT
    *
FROM
    test.titanic
WHERE
    pclass = 1
    OR survived = 0;

SELECT
    *
FROM
    test.`indian movies`;

SELECT
    `Movie Name`,
    Genre
FROM
    test.`indian movies`
WHERE
    Genre = 'Comedy, Musical, Romance            '
    OR Genre = 'Thriller            '
    OR Genre = 'Drama            ';

-- Reducing the or condition using in kewyord 
SELECT
    `Movie Name`
FROM
    test.`indian movies`
WHERE
    Genre IN (
        'Comedy, Musical, Romance            ',
        'Biography, Drama, History            ',
        'Action            ',
        'Documentary            '
    );

SELECT
    `Movie Name`
FROM
    test.`indian movies`
WHERE
    Genre NOT IN (
        'Comedy, Musical, Romance            ',
        'Biography, Drama, History            ',
        'Action            ',
        'Documentary            '
    );

-- Wildcard keyword used for the string searching in the rows 
SELECT
    `Movie Name`
FROM
    test.`indian movies`
WHERE
    `Movie Name` LIKE 'a%';

SELECT
    `Movie Name`
FROM
    test.`indian movies`
WHERE
    `Movie Name` LIKE '%man%';

SELECT
    `Movie Name`
FROM
    test.`indian movies`
WHERE
    `Movie Name` LIKE '%khan%'
    OR `Movie Name` LIKE '%kapoor%';

--   ____ using the underscore to find the row with frquency of the characters each underscore signify the single character
SELECT
    *
FROM
    test.`indian movies`
WHERE
    `Movie Name` LIKE '_____';

SELECT
    *
FROM
    test.`indian movies`
WHERE
    `Movie Name` LIKE 'A____';

-- with the specific char 
USE test;

DROP TABLE sample;

CREATE TABLE sample (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    email VARCHAR(255)
);

INSERT INTO
    sample
VALUES
    (1, "bharat", "bharat@gmail.com"),
    (2, "rahul", "rahul@gmail.com"),
    (3, "rohit", "rhoit@yahoo.com");

SELECT
    *
FROM
    sample;

-- Update statements 
UPDATE
    sample
SET
    name = 'Deepanshu'
WHERE
    email LIKE '%yahoo%';

--  updating multiple fields 
UPDATE
    sample
SET
    name = 'Archit',
    email = 'archit@gmail.com'
WHERE
    email LIKE '%yahoo%';

-- Delete command 
DELETE FROM
    sample
WHERE
    id = 1
    AND email LIKE '%gmail%';

DELETE FROM
    sample
WHERE
    1;

--  to delete all records from the table this is same truncate command