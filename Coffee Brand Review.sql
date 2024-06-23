CREATE TABLE CoffeeBrandReview
(
	Brand_name varchar(100),
	Roasters varchar(40),
	Type_of_roast varchar(25),
	Roaster_Location varchar(25),
	Origin varchar (25),
	Price_per_100g float,
	Rating float,
	Review_date date,
	Short_product_description varchar(150)
	)
select * from CoffeeBrandReview

ALTER TABLE CoffeeBrandReview
ADD COLUMN Origin varchar(25)
