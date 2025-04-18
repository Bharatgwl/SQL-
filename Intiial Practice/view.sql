/*A view in SQL is a virtual table created based on a query.
 It does not store data itself but provides a way to simplify 
 complex queries by encapsulating them into a single, reusable object.*/


use employee;
CREATE TABLE stud (
    id INT NOT NULL AUTO_INCREMENT,
    fname VARCHAR(25) NOT NULL,
    lname VARCHAR(20) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY (id)
);

desc stud;

insert into stud(fname, lname,age) 
values('bharat', 'gwl', 19),('harry', 'code', 27);

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    deptname VARCHAR(30) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id)
        REFERENCES stud (id)
);
-- drop table department;
desc department;

insert into department
values(1,'cse'),(2,'electornics');


CREATE VIEW student_info AS
    SELECT 
        fname, lname, deptname
    FROM
        stud
            INNER JOIN
        department USING (id);

SELECT 
    *
FROM
    student_info;
