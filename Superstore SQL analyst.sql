-- use superstore dataset
USE SUPERSTORE;
-- show dataset
select * from superstore limit 5;
-- total sales and profit per year
SELECT DATE_TRUNC('year',orderdate) as year,
SUM(sales) as sales_title
sum(profit) as profit_title
from SUPERSTORE
group by year
order by year asc;
-- total sales and profit per quarter
select
date_part('year',orderdate) as year,
case
  when date_part('month',orderdate) in (1,2,3) then 'q1'
  when date_part('month',orderdate) in (4,5,6) then 'q2'
  when date_part('month',orderdate) in (7,8,9) then 'q3'
else 'q4'
 end as quarter,
 sum(sales) as total_sales,
 sum(profit) as total_profit
from superstore
group by year,quarter
order by year,quarter asc;

-- highest sales and profit by region
select region ,sum(sales) as total_sales , sum(profit) as total_profit 
from superstore
group by region
order by total_profit desc;

-- profit_margin
select region ,round(sum(profit)/sum(sales))*100,2) as profit_margin
from superstore
group by region
order by profit_margin desc;
-- state and city in the highest sales&profit
select State ,sum(sales) as total_sales ,round(sum(profit)/sum(sales))*100,2) as profit_margin
from superstore
group by State
order by total_profit limit 10;
-- Cities
select City ,sum(sales) as total_sales ,round(sum(profit)/sum(sales))*100,2) as profit_margin
from superstore
group by State
order by total_profit limit 10;
-- relation between disc and sales
select Discount,avg(sales) as avg_sales
from superstore
group by Discount
order by Discount;

-- total discount by category
select category , sum(discount) as total_discount
from superstore
group by category
order by total_discount asc;
-- product name sales and profit
select productname , sum(sales) as total_sales
from superstore
group by productname
order by total_sales asc;
-- customer reward program
select customer_id ,
sum(sales) as total_sales , sum(profit) as total_profit 
from superstore
group by customer_id
order by total_sales desc limit 5;
