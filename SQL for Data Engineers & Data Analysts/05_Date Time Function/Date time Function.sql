
------------Date Time Function----------

Select * from DimEmployee

--•	GETDATE() 

Select GETDATE()

Select *,GETDATE() as ReportGeneratedDate from FactInternetSales

--
Select GETUTCDATE()

--DATEADD() 

SELECT DATEADD(day,90,GETDATE())

SELECT DATEADD(day,-164,GETDATE())

--DATEPART()

SELECT DATEPART(year, GETDATE()) 

SELECT DATEPART(DAY, GETDATE())

SELECT DATEPART(MONTH, GETDATE())

Select * from DimEmployee

Select DATEPART(year, BirthDate) As BirthYear ,BirthDate,* from DimEmployee

--Find the Employee information which Birthyear is 1974

Select * from DimEmployee Where DATEPART(year, BirthDate) = 1974

Select * from DimEmployee where DATEPART(MONTH, BirthDate) = 12

--Find the joining year

Select DATEPART(year, HireDate) As HireDate ,BirthDate,* 
from DimEmployee where DATEPART(year, HireDate) = 2007

Select DATEPART(MONTH, HireDate) As HireMonh ,BirthDate,* from DimEmployee where DATEPART(MONTH, HireDate) = '7'


--DATEDIFF()

Select DATEDIFF(YEAR, BirthDate,getdate()) As Age ,* from DimEmployee

Select * from DimEmployee where DATEDIFF(YEAR, BirthDate,getdate()) = 48

Select DATEDIFF(YEAR, HireDate,getdate()) As Tenure ,* from DimEmployee

--Greater than 10 years

Select DATEDIFF(YEAR, HireDate,getdate()) As Tenure ,* from DimEmployee 
where DATEDIFF(YEAR, HireDate,getdate()) >= 10

--DATENAME()

SELECT DATENAME(dw, getdate()) AS 'Today Is'

SELECT DATENAME(dw, '2021-02-15') 

SELECT DATENAME(dw, HireDate), * from DimEmployee

SELECT  * from DimEmployee where DATENAME(dw, HireDate) = 'Monday'


SELECT DATENAME(month, getdate()) AS 'Month'

Select EOMONTH('2021-02-15')

Select EOMONTH(getdate())


Select Getdate() as 'Today Date',
EOMONTH(Getdate()) as 'EOM Date',
DATENAME(dw, Getdate()) as 'Today Day',
DATENAME(dw, EOMONTH(Getdate())) as 'EOM Day'

Select DATENAME(dw, EOMONTH('2021-03-15')) as 'EOM Day'

-- @@DATEFIRST 

Select @@DATEFIRST 


