create database firstDB;
show databases;


#creating tables in db
use firstDB;
create table customer_info(id integer, firstname varchar(10),last_name varchar(10));

show tables;


# select * from tables
select * from customer_info;

#inserting in database
insert into customer_info(id,firstname, last_name) values(1,'bharat', 'gusaiwal');

drop tables customer_info;

show tables;

drop database firstDB;
