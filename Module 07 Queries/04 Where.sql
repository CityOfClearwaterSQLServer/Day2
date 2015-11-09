use AdventureWorks2014

select Name, ListPrice
from Production.Product
where ListPrice >= 19.00 and ListPrice <= 50
--where ListPrice between 19 and 50
--where ListPrice like '%.00'

select CountryRegionCode, Name
from Person.CountryRegion
where CountryRegionCode = 'US' or CountryRegionCode = 'CA' or CountryRegionCode = 'MX'
-- where CountryRegionCode in ('US', 'CA', 'MX')
-- where Name like '%Island%' and CountryRegionCode = 'CX' or CountryRegionCode = 'VI'
-- where Name like '%Island%' and CountryRegionCode in ('CX', 'VI')
