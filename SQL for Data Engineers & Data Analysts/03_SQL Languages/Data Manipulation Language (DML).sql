

--================Data Manipulation Language (DML): Insert, Update and Delete.======================


------*****************Insert*************************************************
--1
CREATE TABLE Employee
(
Emp_ID INT Identity(1,1),
Emp_name Varchar(100),
Emp_Sal int 
)

Select * from Employee

--- Insert data into table manually in all column

INSERT INTO Employee VALUES ('Anees',1000)
INSERT INTO Employee VALUES ('Rick',1200)
INSERT INTO Employee VALUES ('John',1100);
INSERT INTO Employee VALUES ('Stephen',900);
INSERT INTO Employee VALUES ('Maria',1400);

--- Insert data into table manually in all one column

INSERT INTO Employee VALUES ('Khushbu')

INSERT INTO Employee(Emp_name) VALUES ('Khushbu')

INSERT INTO Employee(Emp_Sal) VALUES (1900)

INSERT INTO Employee(Emp_name,Emp_Sal) VALUES ('abc',1500);

Select * from Employee


--2. Copy Data from existing table make sure new table is not exist

Select * from DimCustomer

Select * into DimCustomer_Dup1 from DimCustomer

Select * from DimCustomer_Dup1

--3 Copy only column Name from existing table 

Select CustomerKey,GeographyKey,FirstName,LastName into DimCustomercopyColumn1 from DimCustomer where 8=2

Select * from DimCustomercopyColumn1

--All column copy witout data 

Select * into DimCustomerCopyAllColumn1 from DimCustomer where 7=2

Select * from DimCustomerCopyAllColumn1

Select CustomerKey,GeographyKey,FirstName into DimCustomer111 from DimCustomer  -- with data


Select * from DimCustomer111



-- 4 Insering Data from Existing table 

Select * from Employee

--drop table Employee_copy

CREATE TABLE Employee_copy
(
Emp_ID INT,
Emp_name Varchar(100),
Emp_Sal int 
)

Insert into Employee_copy(Emp_ID,Emp_name,Emp_Sal)
Select Emp_ID,Emp_name,Emp_Sal from Employee


Select * from Employee

Select * from Employee_copy


--**************Update************************-------

Select * from DimCustomer

update DimCustomer
Set YearlyIncome = 70000
Where CustomerKey = 11000

update DimCustomer
Set YearlyIncome = 50000,
 middlename = 'xyz',
 MaritalStatus = 'S'
Where CustomerKey = 11000







