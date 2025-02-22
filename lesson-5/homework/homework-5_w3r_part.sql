use W3Resource
go

--1
select sum(purch_amt) 
from Inventory.Orders

--2
select avg(purch_amt)
from Inventory.Orders

--3
select count(distinct salesman_id)
from Inventory.Orders

--4
select count(distinct customer_id)
from Inventory.Customer

--5 
select count(customer_id)
from Inventory.Customer
where grade > 0

--6
select max(purch_amt)
from Inventory.Orders

--7
select min(purch_amt)
from Inventory.Orders

--8
select city, max(grade) as maxgrade
from Inventory.Customer
group by city

--9
select customer_id, max(purch_amt) as maxpurchase
from Inventory.Orders
group by customer_id

--10
select customer_id, ord_date, max(purch_amt) as maxpchs
from Inventory.Orders
group by customer_id, ord_date

--11
select salesman_id, max(purch_amt)
from Inventory.Orders
where ord_date = '2012-08-17'
group by salesman_id

--12
select customer_id, ord_date, max(purch_amt) as maxpurchase
from Inventory.Orders
where purch_amt > 2000
group by customer_id, ord_date

--or--

select customer_id, ord_date, max(purch_amt) as maxpurchase
from Inventory.Orders
group by customer_id, ord_date
having max(purch_amt) > 2000

--13
select customer_id, ord_date, max(purch_amt) as maxpchsamt
from Inventory.Orders
where purch_amt >= 2000 and purch_amt <= 6000
group by customer_id, ord_date

--or--

select customer_id, ord_date, max(purch_amt) as maxpchsamt
from Inventory.Orders
group by customer_id, ord_date
having max(purch_amt) >= 2000 and max(purch_amt) <= 6000

--14
select customer_id, ord_date, max(purch_amt)
from Inventory.Orders
group by customer_id, ord_date
having max(purch_amt) in (2000, 3000, 5760, 6000)

--15
select customer_id, max(purch_amt) as maxx
from Inventory.Orders
where customer_id between 3002 and 3007
group by customer_id

--or--

select customer_id, max(purch_amt) as maximum
from Inventory.Orders
group by customer_id
having customer_id between 3002 and 3007

--16
select customer_id, max(purch_amt)
from Inventory.Orders
where customer_id between 3002 and 3007 and purch_amt > 1000
group by customer_id

--or--

select customer_id, max(purch_amt) as maxpurch
from Inventory.Orders
group by customer_id
having customer_id between 3002 and 3007 and max(purch_amt) > 1000

--17
select salesman_id, max(purch_amt)
from Inventory.Orders
where salesman_id between 5003 and 5008
group by salesman_id

--or--

select salesman_id, max(purch_amt) as maxi
from Inventory.Orders
group by salesman_id
having salesman_id between 5003 and 5008

--18
select count(ord_no)
from Inventory.Orders
where ord_date = '2012-08-17'

--19
select count(salesman_id)
from Inventory.Salesman
group by city

--20
select ord_date, salesman_id, count(*) as num_of_orders
from Inventory.Orders
group by ord_date, salesman_id

--21
select avg(pro_price)
from item_mast


--22
select count(*) 
from item_mast
where pro_price >= 350

--23
select avg(pro_price), pro_com
from item_mast
group by pro_com

--25
select emp_dept, count(*)
from emp_details
group by emp_dept