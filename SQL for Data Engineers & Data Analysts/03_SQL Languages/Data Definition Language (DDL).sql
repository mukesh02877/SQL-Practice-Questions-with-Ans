

--===========DDL commands===========================
 --DDL commands are CREATE, ALTER  DROP and Truncate

-- CREATE Statement:

--Today is the 2nd session

/*
Today is 
the 2nd 
session
*/

--Today is 
--the 2nd 
--session

---Creating Database

CREATE DATABASE TestMukesh
Go

--Select Database
use TestMukesh

-- Creating Table

CREATE Table Students(StudentID Int,StudentName varchar(100),MobileNumber bigint,
                       JoiningData datetime, Address1 nVarchar(max) )  

-- check the table
Select * from Students

Select StudentID,StudentName,MobileNumber from Students

-- ALTER Statement
-- 1. To add column to the existing table:

--Select * from dimEmployee

Alter table Students  
Add Marks int

Alter table Students  
Add City varchar(5)


-- Select * from Students

-- How to check table structure

sp_help Students  -- alt+f1

--2. To modify the datatype of a column in our existing table: 
Alter table Students  
ALTER COLUMN city nvarchar(200)

--3 To remove column from the existing table:
Alter table Students  
drop COLUMN city

Select * from Students


-- DROP Statement:
-- Droping Database
drop database Test456

-- Droping Table
Drop table Students


-- Select * from Students



--check the table information 
sp_help  Students

Sp_renameDB 'TestDB3rdAug','TestDB3rdAugNew'

Sp_rename 'Students','StudentsNew'

sp_RENAME 'StudentsNew.StudentName' , 'SName', 'COLUMN'

--Select * from StudentsNew

/*

sp_help  Students

Sp_renameDB 'SampleDB','SampleDB1'

Sp_rename 'Students','Students1'

sp_RENAME 'Students.StudentName' , 'Name', 'COLUMN'
*/