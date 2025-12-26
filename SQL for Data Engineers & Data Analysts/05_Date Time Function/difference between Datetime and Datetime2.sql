

---===difference between Datetime and Datetime2================

Select * from DimEmployee

Declare @Datettime datetime , @Datettime2 datetime2

Select @Datettime = GETUTCDATE()
Select @Datettime2 = GETUTCDATE()

Select @Datettime
Select @Datettime2

-- Drop table Emp
Create Table Emp (EMPID int identity, HireDate datetime, Birthdate Datetime2)

Insert into Emp
Select HireDate,Birthdate from DimEmployee

Select * from Emp



Insert into Emp
Select GETUTCDATE(),Dateadd(year,-25,GETUTCDATE())


Select * from Emp