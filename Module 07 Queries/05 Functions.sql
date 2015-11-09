use AdventureWorks2014

-- String Scalar Functions
select LastName
	 , Upper(LastName)											as [Upper]
	 , Lower(LastName)											as [Lower]
	 , Left(LastName, 1)										as [Left]
from Person.Person

select Soundex('McBride'), Soundex('Blue'), Soundex('Blew')

-- Conversion Scalar Functions
select '$' + ListPrice										as [No $]
	 , '$' + Convert(varchar(20), ListPrice)				as [Shows $]
	 , '$' + Convert(varchar(20), ListPrice * 100)			as [No Comma]
	 , '$' + Convert(varchar(20), ListPrice * 100, 1)		as [Comma]
	 , '$' + Cast(ListPrice as varchar(20))					as [Cast]
from Production.Product
where ListPrice > 100

select OrderDate											as [Date Ordered]
	 , Convert(varchar(20), OrderDate, 107)					as [Date Format]
from Sales.SalesOrderHeader

-- Date Time Scalar Functions
select OrderDate											as [Date Ordered]
	 , GetDate()											as [Today]
	 , DatePart(year, OrderDate)							as [DatePart]
	 , Year(OrderDate)										as [Year]
	 , DateAdd(year, -5, OrderDate)							as [DateAdd]
	 , DateDiff(year, OrderDate, GetDate())					as [DateDiff]
	 , Convert(varchar(20), DatePart(day, OrderDate)) + '.' 
	 + Convert(varchar(20), DatePart(month, OrderDate)) + '.' 
	 + Convert(varchar(20), DatePart(year, OrderDate))		as [Custom]
from Sales.SalesOrderHeader

