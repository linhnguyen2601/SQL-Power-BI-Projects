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

-- Roasters có nhiều brand name nhất
select count(distinct(brand_name)), roasters from  coffeebrandreview
group by roasters
order by count(distinct(brand_name)) desc

	
-- Brand name theo type of roast
select count(distinct(brand_name)), type_of_roast from  coffeebrandreview
group by type_of_roast
order by count(distinct(brand_name)) desc

-- Brand name theo roaster_location
select count(distinct(brand_name)), roaster_location from  coffeebrandreview
group by roaster_location
order by count(distinct(brand_name)) desc

--Brand name theo origin
select count(distinct(brand_name)), origin from  coffeebrandreview
group by origin
order by count(distinct(brand_name)) desc

--Brand name theo price-per-100g
select count(distinct(brand_name)), coffeebrandreview.price_per_100g 
	from  coffeebrandreview
group by coffeebrandreview.price_per_100g
order by count(distinct(brand_name)) desc

-- check if there are outliers
with cte as(	
select max(price_per_100g), min(price_per_100g), avg(price_per_100g),
	PERCENTILE_CONT(0.25) within group (order by price_per_100g) as Q1,
	PERCENTILE_CONT(0.5) within group (order by price_per_100g) as Q2,
	PERCENTILE_CONT(0.75) within group (order by price_per_100g) as Q3
	from  coffeebrandreview),

cte2 as(
select (Q1 - 1.5*Q1) as min_value, (Q3 + 1.5*Q3) as max_value from cte)

select count(price_per_100g), count(distinct(price_per_100g)) 
from coffeebrandreview
where (price_per_100g > (select max_value from cte2))
or price_per_100g < (select min_value from cte2)
--93, 47

-- Number of reviews each year theo roasters, brand_name
select extract(year from review_date), 
count(distinct(roasters)) as no_of_roasters, 
count(distinct(brand_name)) as no_of_brandname
from coffeebrandreview
group by extract(year from review_date)
order by extract(year from review_date)
