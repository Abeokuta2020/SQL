/**
**Functions
-uper case
-lower case
-ubstring
-Trims
-
**/
--UPPER CASE
--Q1- make the values in the field 'type' capital letters - incase you want to join 2 tables and one is capital lettered you change the other to match the same case
SELECT [No]
   ,upper(type) as Type_cap
   ,[Name]
      ,[type]
      ,[Rating]
      ,[Stars]
      ,[Qty]
      ,[Price]
  FROM [SQLTrainning].[dbo].[Movies]


  --LOW CASE
  --Q1- make the values in the field 'stars' lower letters letters
  SELECT [No]
  ,lower(Stars) as stars_low
      ,[Name]
      ,[type]
      ,[Rating]
      ,[Stars]
      ,[Qty]
      ,[Price]
  FROM [SQLTrainning].[dbo].[Movies]

  update [SQLTrainning].[dbo].[Movies]
  set stars= lower(Stars) 
  where stars = 'cruise'

  --SUBSTRING
  --used to determine the location of a value of a record, eg in drama if you anly want to show DRA and not the whole DRAMA
  --Q1- make the values in the field 'stars' lower letters letters 
  --(1,3) it starts from number 1 and the 3rd number

  SELECT [No]
  ,substring (type, 1,2) as Type_string
      ,[Name]
      ,[type]
      ,[Rating]
      ,[Stars]
      ,[Qty]
      ,[Price]
  FROM [SQLTrainning].[dbo].[Movies]

  --Wild cars- used for pattern searching
  --show only stars that name starts with C
  SELECT [No]
      ,[Name]
      ,[type]
      ,[Rating]
      ,[Stars]
      ,[Qty]
      ,[Price]
  FROM [SQLTrainning].[dbo].[Movies]
  where stars like 'c%'

  --show only stars that name ends with E (then percentage comes before the letter)
  SELECT [No]
      ,[Name]
      ,[type]
      ,[Rating]
      ,[Stars]
      ,[Qty]
      ,[Price]
  FROM [SQLTrainning].[dbo].[Movies]
  where stars like '%e'

  /* Next class 8/9/24
  --Trims

  SELECT [No]
      ,[Name]
      ,[type]
      ,[Rating]
      ,[Stars]
      ,[Qty]
      ,[Price]
  FROM [SQLTrainning].[dbo].[Movies]
