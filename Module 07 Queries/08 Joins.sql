use AdventureWorks2014

-- ANSI Cross Join
select Production.Product.Name						as [Product Name]
	, Production.ProductSubcategory.Name			as [Subcategory]
	, ListPrice										as [Price]
from Production.Product 
	cross join Production.ProductSubcategory

select count(*) from Production.Product
select count(*) from Production.ProductSubcategory
select (select count(*) from Production.Product) * (select count(*) from Production.ProductSubcategory)

select p.Name										as [Product Name]
	, ps.Name										as [Subcategory]
	, ListPrice										as [Price]
from Production.Product								as p 
	cross join Production.ProductSubcategory		as ps

-- Vendor Cross Join
select p.Name										as [Product Name]
	, ps.Name										as [Subcategory]
	, ListPrice										as [Price]
from Production.Product								as p
	, Production.ProductSubcategory					as ps

-- ANSI Inner Join
select p.Name										as [Product Name]
	, ps.Name										as [Subcategory]
	, ListPrice										as [Price]
from Production.Product								as p 
	inner join Production.ProductSubcategory		as ps	on p.ProductSubcategoryID = ps.ProductSubcategoryID 

select count(*) from Production.Product where ProductSubcategoryID is null

-- Vendor Inner Join
select p.Name										as [Product Name]
	, ps.Name										as [Subcategory]
	, ListPrice										as [Price]
from Production.Product								as p 
	, Production.ProductSubcategory					as ps	
where p.ProductSubcategoryID = ps.ProductSubcategoryID 

-- ANSI Outer Join
select p.Name										as [Product Name]
	, ps.Name										as [Subcategory]
	, ListPrice										as [Price]
from Production.Product								as p 
	left outer join Production.ProductSubcategory	as ps	on p.ProductSubcategoryID = ps.ProductSubcategoryID 



-- ANSI Full Outer Join
select p.Name										as [Product Name]
	, ps.Name										as [Subcategory]
	, ListPrice										as [Price]
from Production.Product								as p 
	full outer join Production.ProductSubcategory	as ps	on p.ProductSubcategoryID = ps.ProductSubcategoryID 
