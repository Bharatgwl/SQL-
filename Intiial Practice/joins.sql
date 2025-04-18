## SQL joins
/*
1. inner joins 
2. outer joins
3. right joins
4. left joins
5. natural joins 
6. cross joins

*/

use employee;

select * from stud;
select * from department;

insert into stud values(3,'dikshant', 'jangra',20);

select * from student_info;


## Inner joins
select * from stud inner join department on stud.id = department.id;  --  but with this command id comes up in a repeated format
select stud.id,stud.lname,stud.fname,department.deptname from stud inner join department on stud.id = department.id; 


## left join
select * from stud left join department on stud.id = department.id;  --  but with this command id comes up in a repeated format
select stud.id,stud.lname,stud.fname,department.deptname from stud left join department on stud.id = department.id; 

## right join
select * from stud right join department on stud.id = department.id;  --  but with this command id comes up in a repeated format
select stud.id,stud.lname,stud.fname,department.deptname from stud right join department on stud.id = department.id; 


## full outer join // just combines the left and right join
select stud.id,stud.lname,stud.fname,department.deptname from stud left join department on stud.id = department.id
union
select stud.id,stud.lname,stud.fname,department.deptname from stud right join department on stud.id = department.id; `

## cross join
select stud.id,stud.lname,stud.fname,department.deptname from stud cross join department;


## natural join
select stud.id,stud.lname,stud.fname,department.deptname from stud natural join department;
