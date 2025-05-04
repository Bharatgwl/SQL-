## SQL joins
/*
 1. inner joins 
 2. outer joins
 3. right joins
 4. left joins
 5. natural joins 
 6. cross joins
 
 */
USE employee;

SELECT
    *
FROM
    stud;

SELECT
    *
FROM
    department;

INSERT INTO
    stud
VALUES
(3, 'dikshant', 'jangra', 20);

SELECT
    *
FROM
    student_info;

## Inner joins
SELECT
    *
FROM
    stud
    INNER JOIN department ON stud.id = department.id;

--  but with this command id comes up in a repeated format
SELECT
    stud.id,
    stud.lname,
    stud.fname,
    department.deptname
FROM
    stud
    INNER JOIN department ON stud.id = department.id;

## left join
SELECT
    *
FROM
    stud
    LEFT JOIN department ON stud.id = department.id;

--  but with this command id comes up in a repeated format
SELECT
    stud.id,
    stud.lname,
    stud.fname,
    department.deptname
FROM
    stud
    LEFT JOIN department ON stud.id = department.id;

## right join
SELECT
    *
FROM
    stud
    RIGHT JOIN department ON stud.id = department.id;

--  but with this command id comes up in a repeated format
SELECT
    stud.id,
    stud.lname,
    stud.fname,
    department.deptname
FROM
    stud
    RIGHT JOIN department ON stud.id = department.id;

## full outer join // just combines the left and right join
SELECT
    stud.id,
    stud.lname,
    stud.fname,
    department.deptname
FROM
    stud
    LEFT JOIN department ON stud.id = department.id
UNION
SELECT
    stud.id,
    stud.lname,
    stud.fname,
    department.deptname
FROM
    stud
    RIGHT JOIN department ON stud.id = department.id;

`

## cross join
select stud.id,stud.lname,stud.fname,department.deptname from stud cross join department;


## natural join
select stud.id,stud.lname,stud.fname,department.deptname from stud natural join department;