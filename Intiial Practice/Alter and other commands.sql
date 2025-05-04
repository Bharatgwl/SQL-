/*
 mysql
 SQL NULL values
 SQL update statement
 SQL Delete statement 
 SQL alter table
 --add columns in existing table 
 --Modify/alter column
 --Alter Table-drop coloumn
 
 */
#create database
SHOW DATABASES;

CREATE DATABASE myshop;

USE myshop;

#create shop table
CREATE TABLE shoptable(
  id integer AUTO_INCREMENT,
  firstname varchar(10),
  lastname varchar(10),
  PRIMARY KEY(id)
);

INSERT INTO
  shoptable(firstname, lastname)
VALUES
  ('bharat', 'gwl'),
  ('archit', 'kamboj');

SHOW TABLES;

SELECT
  *
FROM
  shoptable;