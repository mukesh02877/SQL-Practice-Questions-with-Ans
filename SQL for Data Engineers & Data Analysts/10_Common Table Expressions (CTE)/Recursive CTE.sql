

--===================Recursive CTE==============================

/*A recursive common table expression (CTE) is a CTE that references itself. By doing so, 
the CTE repeatedly executes, returns subsets of data, until it returns the complete result set.*/

CREATE TABLE #MyEmployees  
(  
EmployeeID smallint NOT NULL,  
FirstName nvarchar(30)  NOT NULL,  
LastName  nvarchar(40) NOT NULL,  
Title nvarchar(50) NOT NULL,  
DeptID smallint NOT NULL,  
ManagerID int NULL,  
 CONSTRAINT PK_EmployeeID PRIMARY KEY CLUSTERED (EmployeeID ASC)   
); 


    INSERT INTO #MyEmployees VALUES   
    (1, 'HARISH', 'WARAN', N'Chief Executive Officer',16,NULL)  
    ,(273, 'PARTHA', 'SARATHY', N'Vice President of Sales',3,1)  
    ,(274, 'PREAM', 'KEMAR', N'North American Sales Manager',3,273)  
    ,(275, 'VIJAY', 'KUMAR', N'Sales Representative',3,274)  
    ,(276, N'Linda', N'Mitchell', N'Sales Representative',3,274)  
    ,(285, N'Syed', N'Abbas', N'Pacific Sales Manager',3,273)  
    ,(286, N'Lynn', N'Tsoflias', N'Sales Representative',3,285)  
    ,(16, N'David',N'Bradley', N'Marketing Manager', 4, 273)  
    ,(23, N'Mary', N'Gibson', N'Marketing Specialist', 4, 16);  

	
go

WITH DirectReports(ManagerID, EmployeeID, Title, EmployeeLevel) AS   
(  
    SELECT ManagerID, EmployeeID, Title, 0 AS EmployeeLevel  
    FROM #MyEmployees   
    WHERE ManagerID IS NULL  
    UNION ALL  
    SELECT e.ManagerID, e.EmployeeID, e.Title, EmployeeLevel + 1  
    FROM #MyEmployees AS e  
        INNER JOIN DirectReports AS d  
        ON e.ManagerID = d.EmployeeID   
)  
SELECT ManagerID, EmployeeID, Title, EmployeeLevel   
FROM DirectReports  

Select * from #MyEmployees