create database mobile_sales;
show databases;
use mobile_sales;
select * from mobile;
-- check mobile features and price list
select Phone_name,Price from mobile;

-- find out the price of 5 most expensive phones-- 
select * 
from mobile
order by price desc
limit 5; 

-- find out the price of 5 most cheap phones-- 
select * 
from mobile
order by price asc
limit 5; 

-- list of top 5  samsung phones with  price and all features
select * 
from mobile
where Brands="Samsung"
order by price desc
limit 5;

-- Must have android phone list then  top  5 high  price  android  phones
select * from mobile
where Operating_System_Type="Android"
order by price desc
limit 5;

-- Must have android phone list then  top  5 lower  price  android  phones
select * from mobile
where Operating_System_Type="Android"
order by price asc
limit 5;

-- Must have ios phone list then  top  5 lower  price  ios  phones
select * from mobile
where Operating_System_Type="IOS"
order by price asc
limit 5;

-- Must have ios phone list then  top  5 highest  price  ios  phones
select * from mobile
where Operating_System_Type="IOS"
order by price desc
limit 5;

-- write a query  which phone support 5g and also top 5 phone with 5g support
select * from mobile
where 5g_availability="Yes"
order by price desc
limit 5;

-- Total price of all mobile is to  be found with brand  name
select Brands,sum(price) from mobile
group by Brands;

