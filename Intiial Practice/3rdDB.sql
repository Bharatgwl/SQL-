-- create database employee;
USE employee;

CREATE TABLE emptable(
    id integer AUTO_INCREMENT,
    first_name varchar(10),
    last_name varchar(10),
    salary integer,
    PRIMARY KEY (id)
);

INSERT INTO
    emptable(first_name, last_name, salary)
VALUES
    ('bharat', 'gwl', 10000),
    ('deepanshu', 'choudhary', 19000),
    ('archit', 'kamboj', NULL);

--  select * from emptable where lastname is null;
SELECT
    *
FROM
    emptable
WHERE
    salary IS NOT NULL;

#sql update statement
UPDATE
    emptable
SET
    salary = 30000
WHERE
    id = 1;

SELECT
    *
FROM
    emptable;

## SQL delete statement 
DELETE FROM
    emptable
WHERE
    id = 1;

SELECT
    *
FROM
    emptable;

##sql alter statement
# Add coloumn in existing table
ALTER TABLE
    emptable
ADD
    email varchar(30);

ALTER TABLE
    emptable
ADD
    dob date;

##ALTER the table modify coloumn
ALTER TABLE
    emptable
MODIFY
    dob year;

##showing shema 
DESC emptable;

## alter table to drop coloumn 
ALTER TABLE
    emptable DROP COLUMN dob;

ALTER TABLE
    emptable
ADD
    UNIQUE(first_name);

ALTER TABLE
    emptable
ADD
    CONSTRAINT uc_emptable UNIQUE(salary);

DESC emptable;

ALTER TABLE
    emptable DROP INDEX uc_emptable;

-- alter table emptable drop column email;