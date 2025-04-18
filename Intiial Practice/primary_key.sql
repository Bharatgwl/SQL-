use employee;
create table person1(
id int not null,
first_name varchar(25) not null,
last_name varchar(25),
age int,
constraint pk_person primary key(id, last_name) );

desc person1;

alter table person1 drop primary key;

Alter table person1 add primary key(id);