

--AVG

Select * from Dimcustomer

select AVG(YearlyIncome) from Dimcustomer

--this will throw an error

select AVG(YearlyIncome),FirstName from Dimcustomer

--this will not throw an error

Select  Gender, AVG(YearlyIncome) as AVGByGender from Dimcustomer Group By Gender


Select MaritalStatus,Gender, AVG(YearlyIncome) from Dimcustomer Group By MaritalStatus,Gender

-- COUNT

Select MaritalStatus, Count(CustomerKey) as MaritalStatus_Count  from Dimcustomer Group By MaritalStatus

Select MaritalStatus, Count(*) from Dimcustomer Group By MaritalStatus

Select Count(*) from Dimcustomer

--Max

Select Gender, MAX(YearlyIncome) from Dimcustomer Group By Gender

--min

Select Gender, min(YearlyIncome) from Dimcustomer Group By Gender



--Sum

Select Gender, Sum(YearlyIncome) as SumofSalary from Dimcustomer Group By Gender

Select  Sum(YearlyIncome) as SumofSalary from Dimcustomer






