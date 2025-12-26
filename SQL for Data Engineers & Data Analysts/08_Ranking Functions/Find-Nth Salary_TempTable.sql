

-----------------------------******* How to Find The Nth Higest Salary******************************-------------------

 Select * from EmployeeTest order by 5 desc

 --Top 5 Salary

 Select top 5 * from EmployeeTest order by 5 desc

 Select top 100 * from Dimcustomer

--1. By Using Temp Table

select * ,dense_rank() over (order by Salary desc) as Salary_rank  from EmployeeTest 

select * ,dense_rank() over (order by Salary desc) as Salary_rank into #HigestSalary from EmployeeTest 

Select * from #HigestSalary

Select * from #HigestSalary where Salary_rank = 4


select * ,dense_rank() over (partition by department order by Salary desc) as Salary_rank 
into #HigestSalaryByDep from EmployeeTest  

Select * from #HigestSalaryByDep

Select * from #HigestSalaryByDep where Salary_rank = 3 and Department = 'Software'



