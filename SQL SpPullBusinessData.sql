create Procedure SpPullBusinessData
as

SELECT [ID]
      ,[Name]
      ,[Age]
      ,[address]
      ,[Salary]
  FROM [SQLTrainningcase].[dbo].[Business]

  execute SpPullBusinessData

 update Business
 set ID = 8
 where ID = 1

 select *
 From Business



