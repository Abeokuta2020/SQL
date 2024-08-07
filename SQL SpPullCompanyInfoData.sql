create procedure SpPullCompanyInfoData
as
--Fetching all records
SELECT [FirstName]
      ,[LastName]
      ,[Country]
  FROM [SQLTraining].[dbo].[CompanyInfo]

Execute SpPullCompanyInfoData

--update table companyinfor
update CompanyInfo
 set FirstName = 'Ayo'
 where FirstName = 'Mark'

 select *
 from CompanyInfo