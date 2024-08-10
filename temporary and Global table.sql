--Temporary Table
----temp tables are accessible in the current session 
--to create a temp table, you add pound (#)
--put the # infront of the table name no space
SELECT [EMPLOYEEID]
      ,substring (Lastname, 1,5) as Lastname_string
      ,[LASTNAME]
      ,[FIRSTNAME]
      ,[MIDDLENAME]
      ,[JOBID]
      ,[MANAGERID]
      ,[HIREDATE]
      ,[SALARY]
      ,[COMM]
      ,[DEPARTMENTID]
	  into #Employee_String
  FROM [SQLTraining].[dbo].[EMPLOYEE]

  select *
  From #Employee_String

--global table
----temp tables are accessible in the other sessions 
--to create a Global table, you add 2 pound (##)
--put the ## infront of the table name no space
SELECT [EMPLOYEEID]
      ,substring (Lastname, 1,5) as Lastname_string
      ,[LASTNAME]
      ,[FIRSTNAME]
      ,[MIDDLENAME]
      ,[JOBID]
      ,[MANAGERID]
      ,[HIREDATE]
      ,[SALARY]
      ,[COMM]
      ,[DEPARTMENTID]
	  into ##Employee_String
  FROM [SQLTraining].[dbo].[EMPLOYEE]

  select *
  From ##Employee_String