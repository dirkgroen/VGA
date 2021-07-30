
CREATE VIEW [dwh].[vw_DIM_Datum] AS
SELECT 
	AK_Datum = [Datumnummer]
	,BK_Datum = [Datumnummer]
	,[Datum]
	,[Datumnummer]
	,[Jaar]
	,[JaarKwartaal]
	,[JaarKwartaalomschrijving]
	,[JaarMaand]
	,[JaarMaandomschrijving]
	,[JaarMaandomschrijvingKort]
	,[Kwartaal]
	,[Kwartaalomschrijving]
	,[Maand]
	,[Maandomschrijving]
	,[MaandomschrijvingKort]
	,[JaarWeek]
	,[Week]
	,[Dagomschrijving]
	,[DagVanJaar]
	,[DagVanMaand]
	,[DagVanWeek]
	,[IsLaatsteDagVanMaand]
	,[IsWeekend]
	,DATEDIFF(DAY, GETDATE(), Datum) AS DagDelta
	,DATEDIFF(WEEK, GETDATE(), Datum) AS WeekDelta
	,DATEDIFF(MONTH, GETDATE(), Datum) AS MaandDelta
	,DATEDIFF(QUARTER, GETDATE(), Datum) AS KwartaalDelta
	,DATEDIFF(YEAR, GETDATE(), Datum) AS JaarDelta
  FROM [dbo].[Datum]
