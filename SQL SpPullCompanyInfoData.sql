create procedure SpPullCompanyInfoData
as
SELECT [FirstName]
      ,[LastName]
      ,[Country]
  FROM [SQLTraining].[dbo].[CompanyInfo]

Execute SpPullCompanyInfoData

update CompanyInfo
 set FirstName = 'Ayo'
 where FirstName = 'Mark'

 select *
 from CompanyInfo