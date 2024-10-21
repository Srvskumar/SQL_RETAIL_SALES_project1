create database sql_project;
use sql_project;
create table retail_sales(
transactions_id int primary key,
sale_date date,
sale_time time,			
customer_id	int,
gender	varchar(15),
age	int,
category varchar(15),	
quantiy	int,
price_per_unit float,
cogs float,
total_sale float
);
select * from retail_sales;

-- To find the Null Values or DATA CLEANING
select * from retail_sales
where 
transactions_id is null
or 
sale_date is null
or
sale_time is null
or
customer_id is null
or
gender is null
or
age is null
or
category is null
or
quantiy is null
or 
price_per_unit is null 
or 
cogs is null
or
total_sale is null;
select count(*) from retail_sales;

-- Data Exploration
-- How many sales we have ?
select count(*) as TOTAL_SALES from retail_sales;
-- how many Customers we have?
select Count(distinct customer_id) from retail_sales;
-- How many category we have ?
select count(distinct category) from retail_sales;

select distinct category from retail_sales;  