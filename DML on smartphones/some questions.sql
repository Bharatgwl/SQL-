## find the smartphones which are less than 20000 and having rating greater than 
select * from campusx.smartphones where rating >=80 and price<=20000;

## find the smartphones with ram > 8gb 

select * from campusx.smartphones where ram_capacity >= 8;

## find all samsung phones with snapdragon processor 

select * from campusx.smartphones where brand_name = 'samsung' and processor_brand='snapdragon'; 