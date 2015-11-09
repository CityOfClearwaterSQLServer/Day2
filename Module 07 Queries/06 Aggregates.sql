use AdventureWorks2014

select count(*)									as [Count *]
	 , count(SalesOrderID)						as [Count SalesOrderID]
	 , count(PurchaseOrderNumber)				as [Count PurchaseOrderNumber]
	 , count(*) - count(PurchaseOrderNumber)	as [Count null PurchaseOrderNumber]
	 , count(distinct CustomerID)				as [Count distinct CustomerID]
from Sales.SalesOrderHeader

select sum(ListPrice)							as [Sum]
	 , avg(ListPrice)							as [Avg]
	 , min(ListPrice)							as [Min]
	 , max(ListPrice)							as [Max]
	 , var(ListPrice)							as [Var]
	 , stdev(ListPrice)							as [Stdev]
	 , stdev(ListPrice) * stdev(ListPrice) 		as [Var2]
	 , sum(distinct ListPrice)					as [Sum Distinct]
	 , avg(distinct ListPrice)					as [Avg Distinct]
	 , min(distinct ListPrice)					as [Min Distinct]
	 , max(distinct ListPrice)					as [Max Distinct]
	 , var(distinct ListPrice)					as [Var Distinct]
	 , stdev(distinct ListPrice)				as [Stdev Distinct]
from Production.Product
