select count(*) from test.`indian movies`;

select director , avg(world-gross) as profit from movies group by director order by profit limit ;


select * from test.titanic;