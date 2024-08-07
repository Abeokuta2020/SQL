Create Procedure SpPullGamesdata
as
--Fetching all records
SELECT [Year]
      ,[City]
  FROM [SQLTraining].[dbo].[Games]

 execute SpPullGamesdata
 --update table
 update Games
 set Year = 2025
 where year = 2000

 select *
 from Games
