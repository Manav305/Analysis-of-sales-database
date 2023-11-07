SELECT 
  CustomerKey as [CustomerKey], 
  --    [GeographyKey]
  --[CustomerAlternateKey] 
  --      ,[Title]
  --,firstname as [FirstName],
  --      ,[MiddleName],
  FirstName + ' ' + LastName as CustomerName --,[LastName]
  --,[NameStyle]
  , 
  [BirthDate], 
  case MaritalStatus when 'M' then 'Married' when 'S' then 'Single' End as MaritalStatus, 
  --,[MaritalStatus]
  --[Suffix],
  case gender when 'M' then 'Male' when 'F' then 'Female' END as Gender --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  , 
  [Phone], 
  [DateFirstPurchase], 
  [CommuteDistance], 
  g.City as CustomerCity 
FROM 
  dbo.DimCustomer as c 
  left join dbo.DimGeography as g on g.GeographyKey = c.GeographyKey 
order by 
  CustomerKey asc
