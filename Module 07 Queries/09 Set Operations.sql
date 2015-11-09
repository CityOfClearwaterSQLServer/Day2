use AdventureWorks2014

-- Union, Union All 
select p.FirstName + ' ' + p.LastName	as [Name]
from Person.Person						as p
	inner join HumanResources.Employee	as e	on p.BusinessEntityID = e.BusinessEntityID
	
--union -- all								-- (all no sort)
--intersect
--Except

select p.FirstName + ' ' + p.LastName	as [Name]
from Person.Person						as p
	inner join Sales.SalesPerson		as sp	on p.BusinessEntityID = sp.BusinessEntityID
