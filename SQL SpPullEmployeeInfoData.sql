create procedure SpPullEmployeeInfoData
as

SELECT [FirstName]
      ,[LastName]
      ,[Employee]
  FROM [SQLTraining].[dbo].[EmployeeInfo]

  execute  SpPullEmployeeInfoData

 
 update EmployeeInfo
 set FirstName = 'Ayo'
 where FirstName = 'John'

 select *
 From EmployeeInfo