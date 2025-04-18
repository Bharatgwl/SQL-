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
use employee;
create table student (
id int not null auto_increment,
firstname varchar(25) not null,
age int );

show tables;
desc student;

alter table student modify column lastname varchar(10) not null;
 

alter table student add column email varchar(30) not null unique;
alter table student add primary key(id);


