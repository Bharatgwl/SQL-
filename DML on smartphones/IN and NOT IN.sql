## IN and NOT IN

select * from campusx.smartphones where processor_brand='snapdragon' or processor_brand = 'exynos' or processor_brand = 'bionic';

-- using in

select * from campusx.smartphones where processor_brand in ('snapdragon' , 'exynos' ,'bionic');

select * from campusx.smartphones where processor_brand not in ('snapdragon' , 'exynos' ,'bionic');
