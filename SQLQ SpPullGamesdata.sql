Create Procedure SpPullGamesdata
as
SELECT [Year]
      ,[City]
  FROM [SQLTraining].[dbo].[Games]

 execute SpPullGamesdata

 update Games
 set Year = 2025
 where year = 2000

 select *
 from Games
