
-------------TCL

--Commit
--Rollback

--drop table DimCustomerdup

Select * into DimCustomerdup  from DimCustomer

Select * from DimCustomerdup

--without BEGIN TRANSACTION

update DimCustomerdup
Set YearlyIncome = 80000


Rollback

--with BEGIN TRANSACTION

Select * from DimCustomerdup

BEGIN TRANSACTION
update DimCustomerdup
Set YearlyIncome = 50000

Rollback

BEGIN TRANSACTION
update DimCustomer
Set YearlyIncome = 90000,
 middlename = 'xyz',
 MaritalStatus = 'M'
Where CustomerKey = 14632

Rollback

Commit 


BEGIN TRANSACTION
update DimCustomer
Set YearlyIncome = 80000
Where CustomerKey = 11000

Rollback

Commit 