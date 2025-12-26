

----------------Truncate Vs Delete Vs Drop-------------------------

--drop table Emp

CREATE TABLE Emp
(
Emp_ID INT Identity(1,1),
Emp_name Varchar(100),
Emp_Sal int 
)

INSERT INTO Emp VALUES ('Anees',1000)
INSERT INTO Emp VALUES ('Rick',1200)
INSERT INTO Emp VALUES ('John',1100);
INSERT INTO Emp VALUES ('Stephen',900);
INSERT INTO Emp VALUES ('Maria',1400);

INSERT INTO Emp VALUES ('Karan',1500);

INSERT INTO Emp VALUES ('Tarrio',1700);


Select * from Emp

--Delete
Delete emp where Emp_ID = 5

Delete emp 


--Truncate

Truncate table emp where Emp_ID = 3

Truncate table emp 


drop table Emp