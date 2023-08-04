CREATE DATABASE REDBULL;
USE REDBULL;
GO 
SELECT * FROM REDBULL.dbo.Sheet4$;
SELECT [Account Type], count(dbo.Sheet4$.[2017]) AS counter
FROM dbo.Sheet4$
GROUP BY [Account Type]
ORDER BY counter DESC
--SS
SELECT [Posters?], count(dbo.Sheet4$.[2017]) AS counter
FROM dbo.Sheet4$
GROUP BY [Posters?]
ORDER BY counter Asc
--total sales 2017 ber bar
select [Account Type],sum([2017]) as "total sales in 2017" from  dbo.Sheet4$ group by [Account Type] 
--total sales 2018 ber bar
select [Account Type],sum([2018]) as "total sales in 2018" from  dbo.Sheet4$ group by [Account Type] 
--total sales 2019 ber bar
select [Account Type],sum([2019]) as "total sales in 2019" from  dbo.Sheet4$ group by [Account Type] 
--total sales 2020 ber bar
select [Account Type],sum([2020]) as "total sales in 2020" from  dbo.Sheet4$ group by [Account Type] 
--total sales 2021 ber bar
select [Account Type],sum([2021]) as "total sales in 2021" from  dbo.Sheet4$ group by [Account Type] 
-- best CAGR
select MAX([CAGR]) AS "BEST CAGR" FROM dbo.Sheet4$ 
-- WOREST CAGR
select MIN([CAGR]) AS "BEST CAGR" FROM dbo.Sheet4$ 
--BEST SALES BY BAR IN 2017
select [Account Type],MAX([2017]) as "BEST SALES2017" from  dbo.Sheet4$ group by [Account Type] 
--worest SALES BY BAR IN 2017
select [Account Type],min([2017]) as "BEST SALES2017" from  dbo.Sheet4$ group by [Account Type] 


