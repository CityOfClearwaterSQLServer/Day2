use AdventureWorks2014

select 'Hello' as Greeting, 10 + 25 as Results

select Name										as Product
	 , ListPrice * .07							as Tax
	 , ListPrice								as Price
	 , ListPrice * 1.07							as Total
from Production.Product

select 'Hello ' + FirstName + ' ' + LastName	as Greeting
from Person.Person
