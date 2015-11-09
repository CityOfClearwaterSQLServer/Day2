use AdventureWorks2014

select CountryRegionCode, Avg(SalesYTD) as [Avg SalesYTD]
from Sales.SalesTerritory
group by CountryRegionCode

select CountryRegionCode, Name, Avg(SalesYTD) as [Avg SalesYTD]
from Sales.SalesTerritory
group by CountryRegionCode, Name


select CountryRegionCode, avg(SalesYTD) as [Avg SalesYTD]
from Sales.SalesTerritory
where SalesYTD > SalesLastYear
group by CountryRegionCode
having avg(SalesYTD) > 5000000
order by avg(SalesYTD) desc
