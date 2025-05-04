# primary key and foreign key
USE employee;

-- one way to add  primary  keys t multiple values
-- create table practicetbl(
-- id int not null,
-- firstname varchar(25) not null,
-- lastname varchar(25) not null,
-- age int,
-- -- primary key(id)
-- constraint p_person primary key(id,firstname)
-- );
CREATE TABLE practicetbl (
    id INT NOT NULL,
    firstname VARCHAR(25) NOT NULL,
    lastname VARCHAR(25) NOT NULL,
    age INT
);

# adding primary key after defining the schema
# all are the ways to define constraints in the table after defining schema 
ALTER TABLE
    practicetbl
ADD
    PRIMARY KEY(id);

ALTER TABLE
    practicetbl
ADD
    CONSTRAINT variable PRIMARY KEY(id, firstname);

DESC practicetbl;

-- alter table practicetbl drop primary key;
DROP TABLE practicetbl;

CREATE TABLE person (
    id INT NOT NULL,
    firstname VARCHAR(25) NOT NULL,
    last_name VARCHAR(25),
    age INT NOT NULL,
    salary INT,
    PRIMARY KEY (id)
);

DESC person;

CREATE TABLE department (
    id INT NOT NULL,
    department_id INT NOT NULL,
    deptname VARCHAR(25) NOT NULL,
    PRIMARY KEY (department_id)
);

DESC department;

DROP TABLE department;

DROP TABLE person;

# adding the foreign key after defining the schema
ALTER TABLE
    department
ADD
    FOREIGN KEY(id) REFERENCES person(id);

INSERT INTO
    person
VALUES
(1, 'bharat', 'gwl', 18, 50000);

INSERT INTO
    department value(1, 10, 'physics');

SELECT
    *
FROM
    department
WHERE
    id = 1;

CREATE TABLE person (
    id INT NOT NULL,
    firstname VARCHAR(25) NOT NULL,
    last_name VARCHAR(25),
    age INT NOT NULL,
    salary INT,
    PRIMARY KEY (id),
    CHECK (salary < 50000)
);

DESC person;

INSERT INTO
    person
VALUES
(1, 'bharat', 'gwl', 18, 40000);

SELECT
    *
FROM
    person;

CREATE TABLE person (
    id INT NOT NULL,
    firstname VARCHAR(25) NOT NULL,
    last_name VARCHAR(25),
    city_name VARCHAR(25) DEFAULT 'jaipur',
    PRIMARY KEY (id)
);

DESC person;

-- delete from person where id =1;
INSERT INTO
    person
VALUES
(1, 'bharat', 'gwl', 'raipur');

-- alter table person drop city_name;
SELECT
    *
FROM
    person;