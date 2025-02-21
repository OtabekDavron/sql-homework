create table StrTest(PaymentDetails varchar(max))
insert into StrTest values ('Full Name = Abdullayev Shoxruh Account = 20201123456789790001 CorrAccount = 105USD777132005'),
              ('Full Name = Alimboev Hamid Account = 20001123459872543510 CorrAccount = 110USD000177007')
/*

select * from StrTest


*/

select PaymentDetails,
trim
(
substring
	(
	PaymentDetails, 
	patindex('%Full Name = %', PaymentDetails) + len('Full Name = '),
	patindex('% Account = %', PaymentDetails) - (patindex('%Full Name = %', PaymentDetails) + len('Full Name = '))
	)	
) as FullName,
trim
(
	substring
	(
	PaymentDetails,
	patindex('% Account = %', PaymentDetails) + len(' Account = '),
	patindex('% CorrAccount%', PaymentDetails) - (patindex('% Account = %', PaymentDetails) + len(' Account = '))
	)
) as Account,
trim
(
	right
	(
	PaymentDetails,
	len(PaymentDetails) - (patindex('%CorrAccount = %', PaymentDetails) + len('CorrAccount = '))
	)
) as CorrAccount
from StrTest

