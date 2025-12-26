

--===Real-time use cases of Aggregated function(AVG,COUNT,Max,Min,Sum and Group by clause)======

If Exists ( Select null from Sysobjects Where Name = 'Department' and type = 'U')
Drop table Department

CREATE TABLE Department
(
 DepartID int,
 DepartmentName VARCHAR(30)
 ) 

 Insert Into Department(DepartID,DepartmentName) values (1,'Software')
 Insert Into Department(DepartID,DepartmentName) values (2,'HR')
 Insert Into Department(DepartID,DepartmentName) values (3,'Marketing')
 Insert Into Department(DepartID,DepartmentName) values (4,'Operation')
  Insert Into Department(DepartID,DepartmentName) values (5,'BPO')

Select * from Department

If Exists ( Select null from Sysobjects Where Name = 'EmployeeTest' and type = 'U')
Drop table EmployeeTest
create table EmployeeTest  
(  
   EmpId int ,  
   FirstName varchar(100),  
   LastName varchar(100),  
   JoinDate datetime ,  
   Salary int ,  
   Department varchar(20)  
)  

insert into EmployeeTest(EmpId, FirstName,LastName,JoinDate,Salary,Department)values(1,'Rakesh','Kalluri','2012-07-01 10:00:00.000',20000,'Software')  
insert into EmployeeTest(EmpId, FirstName,LastName,JoinDate,Salary,Department)values(2,'Shabari','Vempati','2011-05-01 10:00:00.000',25000,'Software')  
insert into EmployeeTest(EmpId, FirstName,LastName,JoinDate,Salary,Department)values(3,'Venkatesh','Bodupaly','2013-04-01 10:00:00.000',15000,'Bpo')  
insert into EmployeeTest(EmpId, FirstName,LastName,JoinDate,Salary,Department)values(4,'Surjan','Peddineni','2011-07-01 10:00:00.000',25000,'Software')  
insert into EmployeeTest(EmpId, FirstName,LastName,JoinDate,Salary,Department) values(5,'Nani','Ch','2010-07-01 10:00:00.000',50000,'Software')  
insert into EmployeeTest(EmpId, FirstName,LastName,JoinDate,Salary,Department) values(6,'Raju','Chinna','2012-07-01 10:00:00.000',25000,'Software')  
insert into EmployeeTest(EmpId, FirstName,LastName,JoinDate,Salary,Department) values(7,'Kiran','Kumar','2011-07-01 10:00:00.000',20000,'Software')  
insert into EmployeeTest(EmpId, FirstName,LastName,JoinDate,Salary,Department) values(8,'Raki','Kumar','2012-07-01 10:00:00.000',17000,'Bpo')  
insert into EmployeeTest(EmpId, FirstName,LastName,JoinDate,Salary,Department) values(9,'Sri','Vidya','2011-07-01 10:00:00.000',30000,'Software')  
insert into EmployeeTest(EmpId, FirstName,LastName,JoinDate,Salary,Department) values(10,'Fehad','MD','2013-07-01 10:00:00.000',20000,'Bpo')  
insert into EmployeeTest(EmpId, FirstName,LastName,JoinDate,Salary,Department)values(11,'Anusha','Kumari','2011-07-01 10:00:00.000',35000,'Software')  
insert into EmployeeTest(EmpId, FirstName,LastName,JoinDate,Salary,Department) values(12,'Venky','Naidu','2013-07-01 10:00:00.000',20000,'Bpo')  
insert into EmployeeTest(EmpId, FirstName,LastName,JoinDate,Salary,Department)values(13,'Radha','Kumari','2012-07-01 10:00:00.000',10000,'Bpo')  

Select * from EmployeeTest

---=== AVG()============
/*Consider a table EMPLOYEE with columns EMP_ID, DEPT_NO and SALARY. Write a query to extract 
all employees who have salaries higher than the avg. of their department.*/

select Department,Avg(salary) 
 from EmployeeTest
 Group by Department

 select * 
 from EmployeeTest e
 Join (Select Department,Avg(salary) as AVGSalary from EmployeeTest
 Group by Department) s on s.Department = e.Department
 where e.salary>s.AVGSalary


 -------===========COUNT()=====================
 --Find the list of Customer which is married and there is a Middle name.

 Select * from Dimcustomer
 
 Select Count(*),Count(MiddleName) from Dimcustomer

 Select MaritalStatus, Count(MiddleName) as TotalCount 
 from Dimcustomer 
 Group By MaritalStatus
 Having MaritalStatus = 'M'

 -------------Sum()--------------------
 -- Find the total YearlyIncome for each EnglishEducation

 Select EnglishEducation,Sum(YearlyIncome) TotalYearlyIncome from DimCustomer
 Group by EnglishEducation


 ----============Max(),Min()========================

 select * into TestDimCustomer from DimCustomer   
 
 Select * from TestDimCustomer

 Create Clustered index IX_TestDimCustomer on TestDimCustomer(CustomerKey)
 
 Declare @max int, @min int, @emiladdress Nvarchar(1000), @Gender varchar(10)
 
 Select  @max = MAX(customerKey),@min = MIN(CustomerKey)   from TestDimCustomer
 Select @max
 Select @min
 
 While @min <= @max 
  Begin 
        Select @emiladdress = EmailAddress, @Gender = Gender from TestDimCustomer Where CustomerKey = @min

        
        If @Gender = 'M'
        Begin 
         Update TestDimCustomer
         Set Suffix = left(@emiladdress,3)
         Where CustomerKey = @min
         End

		If @Gender = 'F'
        Begin 
         Update TestDimCustomer
         Set Suffix = left(@emiladdress,4)
         Where CustomerKey = @min
         End

       set @min = @min+1
      End   
      
      Select * from TestDimCustomer