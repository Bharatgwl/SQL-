USE employee;

CREATE TABLE person1(
    id int NOT NULL,
    first_name varchar(25) NOT NULL,
    last_name varchar(25),
    age int,
    CONSTRAINT pk_person PRIMARY KEY(id, last_name)
);

DESC person1;

ALTER TABLE
    person1 DROP PRIMARY KEY;

ALTER TABLE
    person1
ADD
    PRIMARY KEY(id);