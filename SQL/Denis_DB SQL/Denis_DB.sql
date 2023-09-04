-- Show all details about properties, orders and products.
select * from orders;
select * from products;
select * from propertyinfo;

--
-- Select the city and state column in propertyinfo table.
select "PropertyCity", "PropertyState"
from propertyinfo;

-- Find the dates orders were made and the quantity of orders made.
select "Quantity", "OrderDate"
from orders;


--
-- Find unique dates orders were made
select distinct ("OrderDate") from orders;

Select Distinct "OrderDate" from orders;

-- The different product category Denis has in his store
select distinct ("ProductCategory")
from products;

Select distinct "ProductCategory" 
from products;


--
-- The data from order table and sort in ascending order of quantity
select * from orders
order by "Quantity"
desc;

select * from orders
order by "PropertyID"
desc;

select * from orders
order by "ProductID"
desc;

-- All products and their details and sort in descending order of price
select * from products
order by "Price"
desc;

select * from products
order by "ProductID"
desc;

select * from products
order by "Price";


--
-- Find the five most expensive products
select * from products
order by "Price" desc
limit 5;

-- Find the 5 products with the lowest price
select * from products
order by "Price" asc
limit 5;




-- Task 2

-- The name of product whose id is 50
select "ProductName", "ProductID" from products
where "ProductID" = 50;

select * from products
where "ProductID" = 50;

-- The name and category of product whose id is 94
select "ProductID", "ProductName", "ProductCategory"
from products
where "ProductID" =94;

-- The name and category of product whose prices are above $200
select * from products;

Select "ProductID", "ProductName", "ProductCategory", "Price"
from products
where "Price" > 200;


-- The name of product whose prices are between $50 and $200
select "Price", "ProductName"
from products
where "Price" between 50 and 200
order by "Price";

-- The productid of products sold between 07-01-2015 and 10-01-2015
select * from orders;

Select "ProductID", "OrderDate" 
from orders
where "OrderDate" between '2015-01-07' and '2015-01-10'

Select "ProductID", "OrderDate" 
from orders
where "OrderDate" between '2015-01-07' and '2015-01-10'
order by "ProductID";


-- Orders by property 14, 16, and 10
select * from orders
where "PropertyID" in (14, 16, 10);

select "ProductName", "Price", "ProductCategory"
from products
where "ProductCategory" = 'Office Supplies'
order by "Price" desc
limit 1;

-- Total amount all products will be worth if there were just 2 of it in the store
-- sum, avg, min, count
Select "ProductName", "Price", 2*"Price" as double_price
from products;

select sum (2 * "Price") as total_amount
from products;

select round(avg("Price"),2) as average_price
from products;


-- The most expensive product
select * from products;

select "Price", "ProductName"
from products
order by "Price" desc
limit 1;

-- The least expensive product
select "Price", "ProductName"
from products
order by "Price" asc
limit 1;

-- What is the average price of products?
select  round(avg("Price"),2) as average_price
from products;

-- What products have names starting with “T”?
select "ProductName", "Price"
from products
where "ProductName" like 'T%';




--
-- Extract the following information from Denis_DB:


-- Find the different properties that have made orders.
select * from propertyinfo;
select * from orders;



-- Find the five least expensive products

-- All properties in alphabetical order of their city names.

-- The name and category of the most expensive product

-- The name and category of product whose price is $300

-- Orders by properties that are not 14, 16, and 10

-- Total amount all products will be worth if there were just 5 of it in the store





-- Take Home Task

-- What is the most purchased product?

-- What is the least purchased product?

-- What is the average price of products for each product category?

-- How many products are soaps?

-- What is the average price of envelopes?

-- What is the cheapest envelope?

-- We want to find the the average price of housekeeping products.