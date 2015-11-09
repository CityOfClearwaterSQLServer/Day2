use AdventureWorks2014

select Name, ListPrice * .07 as Tax
from Production.Product
order by Name desc

select Name, ListPrice * .07 as Tax
from Production.Product
order by ListPrice * .07 desc

select Name, ListPrice * .07 as Tax
from Production.Product
order by Tax desc

select Name, ListPrice * .07 as Tax
from Production.Product
order by 2 desc