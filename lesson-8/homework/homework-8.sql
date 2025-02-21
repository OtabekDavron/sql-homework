--1
select *
from Shippers

--2
select CategoryName, Description
from Categories

--3
select FirstName, LastName, HireDate
from Employees
where Title = 'Sales Representative'

--4 
--select * from Employees
select FirstName, LastName, HireDate
from Employees
where Title = 'Sales Representative' and Country = 'USA'

--5
select * 
from Orders
where EmployeeID = 5

--6
select SupplierID, ContactName, ContactTitle
from Suppliers
where ContactTitle <> 'Marketing Manager'

--7
select ProductID, ProductName 
from Products
where ProductName like '%queso%'

--8
select OrderID, CustomerID, ShipCountry
from Orders
where ShipCountry = 'France' or ShipCountry = 'Belgium'

--9
Select OrderID, CustomerID, ShipCountry
from Orders
where ShipCountry in ('Brazil', 'Mexico', 'Argentina', 'Venezuela')

--10
select FirstName, LastName, Title, BirthDate
from Employees
order by BirthDate asc

--11
select FirstName, LastName, Title, convert(date, BirthDate)
from Employees
order by BirthDate asc

--12
select FirstName, LastName, FirstName + ' ' + LastName as FullName
from Employees

--13
select OrderID, ProductID, UnitPrice, Quantity, UnitPrice*Quantity as TotalPrice
from OrderDetails

--14
select count(distinct CustomerID) as TotalCustomers
from Customers 

--15 
--select * from Orders
select min(OrderDate) as FirstOrder
from Orders

--16
select Country
from Customers
group by Country

--17
select ContactTitle, count(ContactTitle) as Total
from Customers
group by ContactTitle

--18
select ProductID, ProductName, CompanyName
from Products as p 
join Suppliers as s
on p.SupplierID = s.SupplierID

--19 select * from orders select * from shippers
select OrderID, convert(date, OrderDate) as OrderDate, CompanyName
from Orders as o
join Shippers as s
on o.ShipVia = s.ShipperID
where OrderID < 10300

--20
--select * from Categories select * from Products
select CategoryName, count(*) as Total
from Categories as c
join Products as p 
on c.CategoryID = p.CategoryID
group by c.CategoryName
order by Total desc

--21
select Country, City, count(*) as TotalCustomers
from Customers
group by City, Country

--22
select ProductID, ProductName, UnitsInStock, ReorderLevel
from Products
where UnitsInStock < ReorderLevel

--23
select ProductID, ProductName, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued
from Products
where (UnitsInStock + UnitsOnOrder) <= ReorderLevel and Discontinued = 0
order by ProductID

--24
select CustomerID, CompanyName, Region 
from Customers
order by case when Region is null then '1' else 0 end asc, Region asc, CustomerID asc

--25
select top 3 ShipCountry, avg(Freight) as AvgFreight
from Orders
group by ShipCountry
order by AvgFreight desc

--26
select top 3 ShipCountry, avg(Freight) as AvgFreight
from Orders
where year(OrderDate) = 2015
group by ShipCountry
order by AvgFreight desc

--27
Select Top 3
ShipCountry ,AverageFreight = avg(freight) 
From Orders 
Where OrderDate
between '1/1/2015' and '12/31/2015'
Group By ShipCountry Order By AverageFreight desc
select * from Orders order by OrderDate

--28
select top 3 ShipCountry, avg(Freight) as AvgFreight
from Orders
where OrderDate 
between (select DATEADD(yy, -1, (select max(OrderDate) from Orders))) 
and (select max(OrderDate) from Orders)
group by ShipCountry
order by AvgFreight desc

--29
select * from Employees
select * from Orders
select * from Products
select * from OrderDetails

select e.EmployeeID, LastName, o.OrderID, ProductName, Quantity
from Employees as e 
join Orders as o on e.EmployeeID = o.EmployeeID
join OrderDetails as od on o.OrderID = od.OrderID
join Products as p on od.ProductID = p.ProductID
order by o.OrderID, p.ProductID 

--30
select * from Customers
select * from Orders

select c.CustomerID, o.OrderID
from Customers as c
left join Orders as o on c.CustomerID = o.CustomerID
where o.CustomerID is null

--31
select * from Customers
select * from orders 

select c.CustomerID, o.employeeID
from Customers as c
left join
(
select * from orders 
where EmployeeID = 4
) as o on c.CustomerID = o.CustomerID
where o.EmployeeID is null