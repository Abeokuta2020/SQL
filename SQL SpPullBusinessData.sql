create Procedure SpPullBusinessData
as

--Fetching all records
SELECT [ID]
      ,[Name]
      ,[Age]
      ,[address]
      ,[Salary]
  FROM [SQLTrainningcase].[dbo].[Business]

  execute SpPullBusinessData

--update business table
 update Business
 set ID = 8
 where ID = 1

 select *
 From Business



