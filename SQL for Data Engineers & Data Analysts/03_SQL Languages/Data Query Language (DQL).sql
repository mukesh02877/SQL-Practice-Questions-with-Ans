
--- Find the table name

Select * from sys.tables

--- Find the All objects Name 

Select * from Sys.objects

Select distinct type,type_desc from Sys.objects

Select * from Sys.objects where type = 'P'


----Table creation

If Exists ( Select 1 from Sys.objects Where Name = 'Department' and type = 'U')
Drop table Department

CREATE TABLE Department
(
 DepartID int,
 DepartmentName VARCHAR(30)
 ) 

 Insert Into Department(DepartID,DepartmentName) values (1,'IT')
 Insert Into Department(DepartID,DepartmentName) values (2,'HR')
 Insert Into Department(DepartID,DepartmentName) values (3,'Marketing')
 Insert Into Department(DepartID,DepartmentName) values (4,'Operation')

--How many stored procedure created in the database

Select * from Sys.objects where type = 'V'


Select * from DimEmployee


--Where clause

Select * from DimEmployee where Gender = 'M'  and [MaritalStatus]= 'M'

Select * from DimEmployee where [EmployeeKey] = 10 or  [SalariedFlag] = 1

--•	Order by Clause: By default ASC

--Asc
-- Desc

Select * from DimEmployee


Select * from DimEmployee order by FirstName desc

Select * from DimEmployee order by FirstName 

Select * from DimEmployee order by FirstName asc

Select * from DimEmployee order by SalesTerritoryKey,FirstName desc 

--we can also use the column position

Select * from DimEmployee order by 5 desc

Select * from DimEmployee order by 6 desc

Select * from DimEmployee order by 5,6,7 asc




drop table Emp1

CREATE TABLE Emp1(
Emp_ID INT ,
Emp_name Varchar(100),
Emp_Sal int 
)

INSERT INTO Emp1 VALUES (1,'Anees',4000);
INSERT INTO Emp1 VALUES (2,'Rick',1200);
INSERT INTO Emp1 VALUES (3,'John',1100);
INSERT INTO Emp1 VALUES (4,'Stephen',900);
INSERT INTO Emp1 VALUES (5,'assf',1400);
INSERT INTO Emp1 VALUES (6,'cddgd',1400);
INSERT INTO Emp1 VALUES (7,'dfgfhfg',1400);



--•	Distinct Keyword

Select  * from Emp1 order by 1

Select distinct * from Emp1 order by 1

Select distinct * from EmpSalary order by 1

--•	Isnull(), Null, not Null function

Select * from Emp1

Select * from DimCustomer

update DimCustomer
set MiddleName = ''
where CustomerKey between 11011 and 11020


Select * from DimCustomer

--How we can find the employee information which don't have middle name

Select * from DimCustomer where MiddleName is null

Select * from DimCustomer where ISNULL(MiddleName,'') = ''

Select ISNULL(MiddleName,''),* from DimCustomer where ISNULL(MiddleName,'') = ''

Select ISNULL(MiddleName,'N/A') as MiddleName_New,* from DimCustomer


Select ISNULL(MiddleName,1),* from DimCustomer where ISNULL(GeographyKey,1)=1


--How we can find the employee information which  have middle name

Select * from DimCustomer where MiddleName is not null

Select * from DimCustomer where ISNULL(MiddleName,'') <> ''

Select * from DimEmployee where ISNULL(EndDate,'') <> ''


--•	Column aliases

Select * from DimEmployee

Select EmployeeKey as EMPID,ParentEmployeeKey PEMPID,FirstName as FName,LastName LName from DimEmployee


-- In And Between

select * from DimEmployee where EmployeeKey between 100 and 200 

select * from DimEmployee where EmployeeKey in (1,20,32,140)

--Like (wildcard operator)

Select * from  DimEmployee where FirstName like 'R%'

Select * from  DimEmployee where FirstName like '%R'

Select * from  DimEmployee where FirstName like 'R_S%'

Select * from  DimEmployee where Title like '%Technician%'

Select * from  DimEmployee where Title like '%WC60'


Select * from Sys.objects where type = 'U' and name like'%Sales%'


Select * from Employee_copy
