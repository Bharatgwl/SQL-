/*
 constraints in SQL are use to specify any rules for the record in a table.
 constraints can be used  to limit the type of data that can go into the table.
 It ensure the acuuracy and relaiblity of the record in the table, and 
 if there is any violation between the constraints and the record actions,
 the action is aborted.constraints can be tha coloumn level or the table level
 coloumn level  constraints apply to a coloumn and the table level constraints
 apply to the whole table
 
 1. Not Null
 2. Unique
 3. primary key 
 4. foreign key 
 5. check 
 6. default
 7. index
 */
USE employee;

CREATE TABLE student (
    id int NOT NULL AUTO_INCREMENT,
    firstname varchar(25) NOT NULL,
    age int
);

SHOW TABLES;

DESC student;

ALTER TABLE
    student
MODIFY
    COLUMN lastname varchar(10) NOT NULL;

ALTER TABLE
    student
ADD
    COLUMN email varchar(30) NOT NULL UNIQUE;

ALTER TABLE
    student
ADD
    PRIMARY KEY(id);