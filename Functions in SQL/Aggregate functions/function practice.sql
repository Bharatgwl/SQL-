## MIN / MAX 

select  min(price) from campusx.smartphones;

select max(price) from campusx.smartphones; 

select max(price) from campusx.smartphones where brand_name = 'samsung';

select * from campusx.smartphones where price =110999;

## AVG 

select avg(rating)/10 from campusx.smartphones where brand_name = 'apple';

## SUM

select sum(price) from campusx.smartphones where brand_name = 'samsung';

## COUNT

select count(*) from campusx.smartphones where brand_name = 'samsung';

select count(*) from campusx.smartphones where brand_name = 'xiaomi';

## Count((distinct))

select count(distinct(brand_name)) from campusx.smartphones;

## STD

select std(price) from campusx.smartphones;

## Variance 

select variance(price) from campusx.smartphones;






