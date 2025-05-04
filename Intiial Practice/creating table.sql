CREATE DATABASE firstDB;

SHOW DATABASES;

#creating tables in db
USE firstDB;

CREATE TABLE customer_info(
    id integer,
    firstname varchar(10),
    last_name varchar(10)
);

SHOW TABLES;

# select * from tables
SELECT
    *
FROM
    customer_info;

#inserting in database
INSERT INTO
    customer_info(id, firstname, last_name)
VALUES
(1, 'bharat', 'gusaiwal');

DROP TABLES customer_info;

SHOW TABLES;

DROP DATABASE firstDB;