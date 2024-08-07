create procedure SpPullEmployeeInfoData
as
--Fetching all records
SELECT [FirstName]
      ,[LastName]
      ,[Employee]
  FROM [SQLTraining].[dbo].[EmployeeInfo]

  execute  SpPullEmployeeInfoData

 --update Table
 update EmployeeInfo
 set FirstName = 'Ayo'
 where FirstName = 'John'

 select *
 From EmployeeInfo