CREATE DATABASE IF NOT EXISTS ORG;

USE ORG;

CREATE TABLE worker (
    WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    FIRST_NAME VARCHAR(30),
    LAST_NAME CHAR(30),
    SALARY INT(15),
    JOINING_DATE DATETIME,
    DEPARTMENT CHAR(30)
);

DROP TABLE worker;

INSERT INTO
    worker (
        FIRST_NAME,
        LAST_NAME,
        SALARY,
        JOINING_DATE,
        DEPARTMENT
    )
VALUES
    (
        'BHARAT',
        'GUSAIWAL',
        100000,
        '2025-03-29 07:30:00',
        'HR'
    ),
    (
        'HARSH',
        'GUSAIWAL',
        200000,
        '2025-03-29 07:30:00',
        'HR'
    ),
    (
        'AASHU',
        'SHARMA',
        300000,
        '2025-03-29 07:30:00',
        'HR'
    ),
    (
        'DEEPANSHU',
        'CHOUDHARY',
        80000,
        '2025-03-29 07:30:00',
        'HR'
    ),
    (
        'DEEPANSHU',
        'CHOUDHARY',
        90000,
        '2025-03-29 07:30:00',
        'HR'
    ),
    (
        'DEEPANSHU',
        'CHOUDHARY',
        50000,
        '2025-03-29 07:30:00',
        'HR'
    ),
    (
        'DEEPANSHU',
        'CHOUDHARY',
        99000,
        '2025-03-29 07:30:00',
        'HR'
    );

CREATE TABLE sample(
    id int PRIMARY KEY,
    wid integer,
    FOREIGN KEY (wid) REFERENCES worker(WORKER_ID)
);

SELECT
    *
FROM
    worker;

CREATE TABLE bonus (
    WORKER_REF_ID INT,
    BONUS_AMOUNT INT,
    BONUS_DATE DATETIME,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES worker (WORKER_ID) ON DELETE CASCADE
);

INSERT INTO
    bonus (WORKER_REF_ID, BONUS_AMOUNT, BONUS_DATE)
VALUES
    (1, 5000, '2025-03-29 07:30:00'),
    (2, 5000, '2025-03-29 07:40:00'),
    (3, 5000, '2025-03-29 07:50:00');

CREATE TABLE title (
    WORKER_REF_ID INT,
    WORKER_TITLE CHAR(25),
    AFFECTED_FROM DATETIME,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES WORKER (WORKER_ID) ON DELETE CASCADE
);

INSERT INTO
    title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM)
VALUES
    (1, 'Manager', '2025-03-29 07:30:00'),
    (1, 'Executive', '2025-03-29 07:30:00'),
    (1, 'Lead', '2025-03-29 07:30:00');

SELECT
    10 / 2;

SELECT
    NOW();

SELECT
    LCASE('BAHRAt');

SELECT
    UCASE('bharat');

SELECT
    *
FROM
    worker
WHERE
    salary < 100000;

SELECT
    *
FROM
    worker
WHERE
    first_name = 'BHARAT';

SELECT
    *
FROM
    worker
WHERE
    salary BETWEEN 80000
    AND 100000;

SELECT
    *
FROM
    worker