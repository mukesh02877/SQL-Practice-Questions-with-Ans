

--================String functions in SQL(Part-1)==================

--ASCII() 

SELECT ASCII('a')

--CHAR()  

Select CHAR(70)

Select CHAR(97)


Select * from DimEmployee

--LEFT() 

SELECT LEFT('MukeshPandey',3)  

Select LEFT(FirstName,3) as First4Letter ,* from DimEmployee

--RIGHT()

SELECT right('MukeshPandey',4)  

Select right(FirstName,4) ,* from DimEmployee

--How we can find the Name starting with Vowel Letter

Select * from DimCustomer where LEFT(FirstName,1) in ('a','e','i','o','u')

Select * from DimCustomer where LEFT(FirstName,1) not in ('a','e','i','o','u')

--How can find the Name ending with Vowel Letter

Select * from DimCustomer where Right(FirstName,1) in ('a','e','i','o','u')

Select * from DimCustomer where Right(FirstName,1) not in ('a','e','i','o','u')



--LTRIM() 

SELECT LTRIM('   MukeshPandey')


--RTRIM() 

SELECT RTRIM('   MukeshPandey     ')

SELECT LTRIM(RTRIM('   MukeshPandey     '))

select * into DimEmployee1 from DimEmployee

Select * from DimEmployee1

--REPLACE() 
--REPLACE(find, replace, string) 

SELECT REPLACE('My name is Mukesh','Mukesh', 'Mridul')

Select  REPLACE(EmailAddress,'adventure-works.com','Graphy.com') as NewEmailAddress,EmailAddress, * from DimEmployee1

update DimEmployee1
set EmailAddress = REPLACE(EmailAddress,'adventure-works.com','Graphy.com')
--where EmployeeKey= 1 

select * from DimEmployee1

--STUFF

Select * from DimEmployee1

SELECT STUFF(Phone,3,8,'****'),Phone, * from DimEmployee1


--REVERSE() 

select REVERSE(FirstName),* from DimEmployee

--CHARINDEX 

SELECT CHARINDEX('SQL', 'Microsoft SQL Server') 

select CHARINDEX('@',EmailAddress),EmailAddress, * from DimEmployee

select CHARINDEX('@',FirstName), * from DimEmployee



--PATINDEX 

Select PATINDEX('%CD%','ABCDhhjhjghjgjhgjh')

Select PATINDEX('%ter%', 'interesting data'); 

--LEN

select LEN(FirstName),* from DimEmployee

select LEN(Title),* from DimEmployee

--Marketing  Manager


--SUBSTRING

SELECT SUBSTRING('abcdefgh', 5, 3) 

SELECT SUBSTRING('SQL SERVER is USEFUL', 5, 3) 

SELECT LEFT('MukeshPandey',4)  

Select * from DimEmployee1

Select SUBSTRING(EmailAddress,1,CHARINDEX('@',EmailAddress)) as NTID,EmailAddress, * from DimEmployee


Select SUBSTRING(EmailAddress,1,CHARINDEX('@',EmailAddress)-1) as NTID,EmailAddress, * from DimEmployee

--LOWER / UPPER

select LOWER(FirstName),* from DimEmployee

select UPPER(FirstName),* from DimEmployee

Select * from DimEmployee

Update DimEmployee
Set FirstName = LOWER(FirstName)

Select * from DimEmployee

Select UPPER(Left(FirstName,1))+SUBSTRING(FirstName,2,Len(FirstName)) , * from DimEmployee

Update DimEmployee
Set FirstName = UPPER(Left(FirstName,1))+SUBSTRING(FirstName,2,Len(FirstName))

Select * from DimEmployee



-- Space and Concat

Select * from DimEmployee

Select CONCAT(FirstName,Space(1),LastName) as FullName, * from DimEmployee

select  FirstName + LastName as FullName, * from DimEmployee


select  (FirstName + Space(1) + LastName) as FullName, * from DimEmployee

select  (FirstName + ' ' + LastName) as FullName, * from DimEmployee


