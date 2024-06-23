CREATE TABLE CoffeeBrandReview
(
	Brand_name varchar(100),
	Roasters varchar(40),
	Type_of_roast varchar(25),
	Roaster_Location varchar(25),
	Origin varchar (50),
	Price_per_100g float,
	Rating float,
	Review_date date,
	Short_product_description varchar(150)
	)
select * from CoffeeBrandReview


Copy CoffeeBrandReview from 'C:\Program Files\PostgreSQL\15\data\Coffee Brand Review.csv' csv header

select 
count(distinct(roasters)),
count(distinct(type_of_roast)),
count(distinct(roaster_location)),
count(distinct(origin)), 
count(distinct(short_product_description))
from coffeebrandreview
=> 294, 5, 11, 27, 999

-- Nhung brand name dc danh gia nhieu hon 1 lan	
select brand_name, 
row_number() over(partition by brand_name)
from coffeebrandreview
order by row_number() over(partition by brand_name) desc
