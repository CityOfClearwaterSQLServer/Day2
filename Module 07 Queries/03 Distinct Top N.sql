use AdventureWorks2014

select distinct City
from Person.Address

select top 3 with ties Name, ListPrice
from Production.Product
order by ListPrice desc
