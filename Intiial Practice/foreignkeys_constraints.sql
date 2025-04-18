# primary key and foreign key
use employee;
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
alter table practicetbl add primary key(id);

alter table practicetbl add constraint variable primary key(id,firstname);
desc practicetbl;	
-- alter table practicetbl drop primary key;

drop table practicetbl;


CREATE TABLE person (
    id INT NOT NULL,
    firstname VARCHAR(25) NOT NULL,
    last_name VARCHAR(25),
    age INT NOT NULL,
    salary INT,
    PRIMARY KEY (id)
);
desc person;

CREATE TABLE department (
    id INT NOT NULL,
    department_id INT NOT NULL,
    deptname VARCHAR(25) NOT NULL,
    PRIMARY KEY (department_id)
);
desc department;
drop table department;
drop table person;

# adding the foreign key after defining the schema
alter table department add foreign key(id) references person(id);


insert into person values(1,'bharat', 'gwl', 18, 50000);
insert into department value(1,10,'physics');

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
desc person;

insert into person values(1, 'bharat','gwl', 18, 40000);

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

desc person;
-- delete from person where id =1;
insert into person values(1, 'bharat','gwl','raipur');
-- alter table person drop city_name;
SELECT 
    *
FROM
    person;