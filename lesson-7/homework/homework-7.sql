--1
/*
select * from Inventory.Salesman
select * from Inventory.Customer
*/

select s.name, c.cust_name, s.city 
from Inventory.Salesman as s
	 join Inventory.Customer as c 
	 on s.city = c.city

--2
/*
select * from Inventory.Customer
select * from Inventory.Orders
*/

select ord_no, purch_amt, cust_name, city
from Inventory.Customer as c
	join 
	(
		select customer_id, ord_no, purch_amt
		from Inventory.Orders
		where purch_amt between 500 and 2000
	) as o 
	on c.customer_id = o.customer_id

--3
/*
select * from Inventory.Customer
select * from Inventory.Salesman
*/

select cust_name, c.city, name as salesman, commission
from 
    Inventory.Customer as c
inner join 
	Inventory.Salesman as s
	on c.salesman_id = s.salesman_id
group by name, cust_name, c.city, commission

--4
select cust_name, c.city, name as salesman, commission
from Inventory.Customer as c
join 
	(
		select * 
		from Inventory.Salesman
		where commission > 0.12
	)   as s
on c.salesman_id = s.salesman_id

--5
select cust_name, c.city, name, s.city, commission
from Inventory.Customer as c
join Inventory.Salesman as s
on c.salesman_id = s.salesman_id and c.city <> s.city
where commission > 0.12

--6
select ord_no, ord_date, purch_amt, cust_name, grade, name as salesman, commission
from Inventory.Orders as o
join Inventory.Customer as c on o.salesman_id = c.salesman_id
join Inventory.Salesman as s on c.salesman_id = s.salesman_id

--7
select o.*, cust_name, c.city, grade, c.salesman_id, name as salesman, s.city, commission
from Inventory.Orders as o
join Inventory.Customer as c on o.salesman_id = c.salesman_id
join Inventory.Salesman as s on c.salesman_id = s.salesman_id

--8
select customer_id, cust_name, c.city, grade, name as salesman, s.city
from Inventory.Customer as c
join Inventory.Salesman as s
on c.salesman_id = s.salesman_id
order by customer_id asc

--9
select cust_name, c.city, grade, name as salesman, s.city
from Inventory.Customer as c
join Inventory.Salesman as s 
on c.salesman_id = s.salesman_id
where grade < 300 and grade is not null
order by customer_id asc

--10

