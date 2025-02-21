/* * * * * * * * * 
 * RETRIEVE DATA *
 * FROM   TABLES *
 * * * * * * * * */
 
 Use W3Resource


-- [[[1]]]
Select * From Inventory.Salesman

-- [[[2]]]
Select 'This is an SQL Exercise, Practice and Solution'

-- [[[3]]]
Select 3.14, 0.618, 114

-- [[[4]]]
Select 10 + 15

-- [[[5]]]
Select 111+6*37

-- [[[6]]]
Select name, commission From Inventory.Salesman

-- [[[7]]] 
/*
order date, 
salesman ID, 
order number,
purchase amount for all orders
*/
Select ord_date, salesman_id, ord_no, purch_amt From Inventory.Orders

-- [[[8]]]
--Select * From Inventory.Orders
Select Distinct salesman_id From Inventory.Orders

-- [[[9]]]
Select name, city From Inventory.Salesman
Where city = 'Paris'

-- [[[10]]]
-- Select * From Inventory.Customer
Select customer_id, cust_name, city, grade, salesman_id From Inventory.Customer
Where grade = 200

-- [[[11]]]
Select ord_no, ord_date, purch_amt From Inventory.Orders
Where salesman_id = 5001

-- [[[12]]]
Select YEAR, SUBJECT, WINNER From nobel_win
Where YEAR = 1970

-- [[[13]]]
Select winner 
From nobel_win
Where subject = 'Literature' and year = 1971

-- [[[14]]]
Select year, subject
From nobel_win
Where winner = 'Dennis Gabor'

-- [[[15]]]
Select winner
From nobel_win
Where subject = 'Physics' and year >= 1950

-- [[[16]]]
Select year, subject, winner, country
From nobel_win
Where subject = 'Chemistry' and year between 1965 and 1975
--                          and year >= 1965 and year <= 1975 

-- [[[17]]]
Select *, 'terrorist state of jews' 
From nobel_win
Where (winner = 'Menachem Begin' or winner = 'Yitzhak Rabin') and year > 1972

-- [[[18]]]
Select *
From nobel_win
Where winner Like 'Louis%'

-- [[[19]]]
Select *
From nobel_win
Where (subject = 'Physics' and year = 1970) or (subject = 'Economics' and year = 1971)

-- [[[20]]]
Select *
From nobel_win
Where year = 1970 and (subject <> 'Physiology' and subject <> 'Economics')

-- [[[21]]]
Select *
From nobel_win
Where (subject = 'Physiology' and year < 1971)
       or (subject = 'Peace' and year > 1974)

-- [[[22]]]
Select *
From nobel_win
Where winner = 'Johannes Georg Bednorz'

-- [[[23]]]
Select * 
From nobel_win
Where subject not like 'P%'
Order by year desc, winner asc

-- [[[24]]]
Select *
From nobel_win
Where year = 1970 
Order by 
Order by 