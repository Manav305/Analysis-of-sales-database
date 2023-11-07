SELECT 
  [DateKey], 
  [FullDateAlternateKey] as date, 
  --[DayNumberOfWeek] 
  [EnglishDayNameOfWeek] as Day, 
  --[SpanishDayNameOfWeek]
  --[FrenchDayNameOfWeek]
  --[DayNumberOfM
  --[CalendarSemester]
  --[FiscalQuarter], 
  --[FiscalYear], onth]
  --[DayNumberOfYear]
  --[WeekNumberOfYear]
  Left([EnglishMonthName], 3) as MonthShort, 
  [EnglishMonthName] as Month, 
  --[SpanishMonthName]
  --[FrenchMonthName]
  [MonthNumberOfYear] as MonthNo, 
  [CalendarQuarter], 
  [CalendarYear] as Year
  --[FiscalSemester] 
FROM 
  .[dbo].[DimDate] 
where 
  CalendarYear >= 2021

