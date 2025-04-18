-- create database employee;

use employee;
create table emptable(id integer auto_increment,
 first_name varchar(10), 
 last_name varchar(10),
 salary integer,
 primary key (id));
 
 insert into emptable(first_name,last_name,salary) 
 values
 ('bharat', 'gwl' , 10000),
 ('deepanshu' ,'choudhary' ,19000),
 ('archit', 'kamboj', NULL); 
 
--  select * from emptable where lastname is null;
select * from emptable where salary is not null;

#sql update statement

update emptable set salary = 30000 where id = 1;

select * from emptable;

## SQL delete statement 
 delete from emptable where id=1;
 
 select * from emptable;
 
 ##sql alter statement
 # Add coloumn in existing table
 
 alter table emptable add email varchar(30);

alter table emptable add dob date;
 
 ##ALTER the table modify coloumn
alter table emptable modify dob year;

##showing shema 
desc emptable;

## alter table to drop coloumn 
alter table emptable drop column dob;
alter table emptable 
add unique(first_name);

alter table emptable
add constraint uc_emptable unique(salary);

desc emptable;

alter table emptable 
drop index uc_emptable;

-- alter table emptable drop column email;
