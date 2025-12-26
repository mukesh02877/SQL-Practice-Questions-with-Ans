

---=======How to check valid date in sql query=============
--drop table ISDateTest

Create table ISDateTest(ID int, JoiningDate Varchar(100))

Insert into ISDateTest
Select 1,'12-Dec-2020'

Insert into ISDateTest
Select 2,'12-Dec-2020'

Insert into ISDateTest
Select 3,'12-Dec'

Insert into ISDateTest
Select 4,'xyz123'

Insert into ISDateTest
Select 5,'13-Dec-2019'

Select * from ISDateTest

Select *,isdate(JoiningDate) from ISDateTest

-- Filter invalid date

--Method-1

delete ISDateTest where isdate(JoiningDate) = 0

Select * from ISDateTest

--Method-2

Create table #ValidDate(ID int, JoiningDate Datetime)
insert #ValidDate
Select ID,JoiningDate from ISDateTest
where isdate(JoiningDate) = 1

Select * from #ValidDate

Select isdate(JoiningDate),* from ISDateTest where isdate(JoiningDate) = 0




















Select isdate(JoiningDate),* from ISDateTest

insert ValidDate
Select ID,JoiningDate from ISDateTest
where isdate(JoiningDate) = 1

Select * from ValidDate

Select isdate(JoiningDate),* from ISDateTest where isdate(JoiningDate) = 0

Select Getdate()

Insert into ValidDate(id,JoiningDate)
Select 123,'12/03/2021'