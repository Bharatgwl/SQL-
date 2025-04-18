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
show databases;
create database myshop;
use myshop;

#create shop table

create table shoptable(id integer auto_increment, firstname varchar(10), lastname varchar(10) ,primary key(id));

insert into shoptable(firstname,lastname) 
values
 ('bharat' ,'gwl'),
 ('archit' ,'kamboj');

show tables;

select * from shoptable;