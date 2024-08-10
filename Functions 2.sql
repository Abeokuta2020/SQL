SELECT TOP (1000) [EMPLOYEEID]
      ,(Lastname + ' ' + Firstname + ' ' + middlename) as employeename
      ,[LASTNAME]
      ,[FIRSTNAME]
      ,[MIDDLENAME]
      ,[JOBID]
      ,[MANAGERID]
      ,[HIREDATE]
      ,[SALARY]
      ,[COMM]
      ,[DEPARTMENTID]
  FROM [SQLTraining].[dbo].[EMPLOYEE]


  -- to change all the selected fields to Upper case
  --the + is to join while '' is to give space in between between  
  --(concatenate)- also mean adding, joining

  SELECT TOP (1000) [EMPLOYEEID]
      ,upper((Lastname + ' ' + Firstname + ' ' + middlename)) as employeename
	  ,upper((Lastname + Firstname + middlename)) as employeename2
      ,[LASTNAME]
      ,[FIRSTNAME]
      ,[MIDDLENAME]
      ,[JOBID]
      ,[MANAGERID]
      ,[HIREDATE]
      ,[SALARY]
	  ,AVG (((salary)))
      ,[COMM]
      ,[DEPARTMENTID]
  FROM [SQLTraining].[dbo].[EMPLOYEE]

  --show first 4 letter in last name
  --create a new table as employeeString
  
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
	  into Employee_String1
  FROM [SQLTraining].[dbo].[EMPLOYEE]

  ---join table Employee-strings Lastname_strings to Employee table Lastname (just where the 2 tables match)
  select *
  from Employee_String1 as ES
  join EMPLOYEE as E
  on substring (ES.Lastname_string, 1,5) = substring (E.Lastname, 1,5)

   ---join table Employee-strings lastname to Employee table Lastname
  select *
  from Employee_String as ES
  join EMPLOYEE as E
  on ES.Lastname = E.LASTNAME

  /**
  --union all show all records on both tables, but the tables have to have same colum fro it to work,
  hence why we added the table structure on both command
  while union
  **/
  select [EMPLOYEEID]
      --,substring (Lastname, 1,5) as Lastname_string
      ,[LASTNAME]
      ,[FIRSTNAME]
      ,[MIDDLENAME]
      ,[JOBID]
      ,[MANAGERID]
      ,[HIREDATE]
      ,[SALARY]
      ,[COMM]
      ,[DEPARTMENTID]
  from Employee_String
  union all
  select [EMPLOYEEID]
      --,substring (Lastname, 1,5) as Lastname_string
      ,[LASTNAME]
      ,[FIRSTNAME]
      ,[MIDDLENAME]
      ,[JOBID]
      ,[MANAGERID]
      ,[HIREDATE]
      ,[SALARY]
      ,[COMM]
      ,[DEPARTMENTID]
  from EMPLOYEE
  -- union eradicated duplicated 
  select [EMPLOYEEID]
      --,substring (Lastname, 1,5) as Lastname_string
      ,[LASTNAME]
      ,[FIRSTNAME]
      ,[MIDDLENAME]
      ,[JOBID]
      ,[MANAGERID]
      ,[HIREDATE]
      ,[SALARY]
      ,[COMM]
      ,[DEPARTMENTID]
  from Employee_String
  union 
  select [EMPLOYEEID]
      --,substring (Lastname, 1,5) as Lastname_string
      ,[LASTNAME]
      ,[FIRSTNAME]
      ,[MIDDLENAME]
      ,[JOBID]
      ,[MANAGERID]
      ,[HIREDATE]
      ,[SALARY]
      ,[COMM]
      ,[DEPARTMENTID]
  from EMPLOYEE
  select *
  from Employee_String1
  
  ------adding a Derived column when combinning 2 tables using union or union all clause
  ------ ' ' creates fake column/ derived / made up column
  ---u can put distinct on both or one it doesnt mater

  select [EMPLOYEEID]
  --, 'employee_string ' as tableName
     --,Lastname_string
      ,[LASTNAME]
      ,[FIRSTNAME]
      ,[MIDDLENAME]
      ,[JOBID]
      ,[MANAGERID]
      ,[HIREDATE]
      ,[SALARY]
      ,[COMM]
      ,[DEPARTMENTID]
  from Employee_String
  union 
  select [EMPLOYEEID]
     -- , 'employee ' as tableName
     -- ,' ' as Lastname_string
      ,[LASTNAME]
      ,[FIRSTNAME]
      ,[MIDDLENAME]
      ,[JOBID]
      ,[MANAGERID]
      ,[HIREDATE]
      ,[SALARY]
      ,[COMM]
      ,[DEPARTMENTID]
  from EMPLOYEE