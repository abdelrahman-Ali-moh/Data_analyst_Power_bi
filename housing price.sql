use master;
go 
select * from dbo.['2016$'] 
--delete null values from id column
DELETE FROM dbo.['2016$'] 
WHERE id IS NULL;
-- show id,grade and built year when price of house > 250000
select id,[grade of the house],[Built Year] from dbo.['2016$'] where Price >250000
-- show house prices when grade of house = 10 star 
SELECT Price
FROM dbo.['2016$']
WHERE [grade of the house]=10;
-- count school near house built in year is greater than 1980
SELECT count([Number of schools nearby]) as "total of school"
FROM dbo.['2016$'] where [Built Year] >=1980
-- avg price houses 2016
select  avg(Price) as "avg price of house"  from dbo.['2016$'] 
-- join table named 2016,2017
SELECT * INTO joined FROM dbo.['2016$'] UNION ALL SELECT * FROM dbo.['2017$'];
-- show joined table
select * from joined
--delete null values from rows
DELETE FROM joined
WHERE id IS NULL;
-- avg price houses 
select  avg(Price) as "avg price of house"  from  joined
-- mean price house
select  sum(Price)/COUNT(Price) as "mean price of house"  from joined 
-- sum prices of houses
select SUM(Price) as "sum of houses" from joined
-- min price of houses
select min(Price) as "min of houses" from joined
-- max price of houses
select max(Price) as "max of houses" from joined
-- count price of houses
select count(Price) as "count of houses" from joined
--As we can see maximum number of houses are with 3 bedrooms
select *  from joined where [number of bedrooms]>3
-- Distance > 75 m in airport
select *  from joined where [Distance from the airport]>75
-- count living area
select *  from dbo.joined order by [living area] 
