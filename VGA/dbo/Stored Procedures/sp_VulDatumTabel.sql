


/*================================================================================================================
Author		:	ilionx
Create date	:	2020-08-31
Copyright	:	© ilionx 2020	
Purpose		:	Vul Datum Tabel
                        
Change	Name	Date		Description
----------------------------------------------------------------------------------------------------------------
1		Jasper 	2020-08-31	Initial version
================================================================================================================*/
CREATE PROCEDURE [dbo].[sp_VulDatumTabel]
AS
SET NOCOUNT ON

TRUNCATE TABLE [dbo].[Datum]

DECLARE @startjaar INT;
SET @Startjaar = (SELECT YEAR(MIN(SchadeDatum)) FROM stg.Melding WHERE YEAR(SchadeDatum) > 1900)
DECLARE @Eindjaar INT;
SET @Eindjaar = YEAR(GETDATE()) + 5


DECLARE	@Startdatum DATE = CAST(CONCAT(@Startjaar,'-01-01') as DATE)
DECLARE	@Einddatum DATE = CAST(CONCAT(@Eindjaar,'-12-31') as DATE)

SET DATEFIRST 1
SET LANGUAGE Nederlands

;WITH [Datum] as	(
SELECT
	 [Datum]
	,CONVERT(VARCHAR(8),[Datum],112) as [Datumnummer]
	,CONVERT(VARCHAR(10),DATENAME(WEEKDAY,[Datum])) as [Dagomschrijving]
	,CONVERT(SMALLINT,DATEPART(DAYOFYEAR,[Datum])) as [DagVanJaar]
	,CONVERT(TINYINT,DAY([Datum])) as [DagVanMaand]
	,CONVERT(TINYINT,DATEPART(WEEKDAY, [Datum])) as [DagVanWeek]
	,CAST(CONCAT(YEAR([Datum]),'-',MONTH([Datum]),'-01') as DATE) as [EersteDagVanDeMaand]
	,CAST(EOMONTH([Datum]) as DATE) as [LaatsteDagVanDeMaand]
	,CONVERT(BIT,CASE WHEN [Datum] = EOMONTH([Datum]) THEN 1 ELSE 0 END) as [IsLaatsteDagVanMaand]
	,CONVERT(BIT,CASE WHEN DATEPART(WEEKDAY, [Datum]) IN (6,7) THEN 1 ELSE 0 END) as [IsWeekend]
	,CONVERT(SMALLINT, YEAR([Datum])) as [Jaar]
	,CONVERT(TINYINT, DATEPART(QUARTER, [Datum])) as [Kwartaal]
	,CONVERT(TINYINT, MONTH([Datum])) as [Maand]
	,DATENAME(MONTH, [Datum]) as [Maandomschrijving]
	,LEFT(REPLACE(DATENAME(MONTH, [Datum]), 'maart', 'mrt'), 3) as [MaandomschrijvingKort]
	,DATEPART(WEEK, [Datum]) as [Week]
	,CONVERT(TINYINT, DATEPART(ISO_WEEK, [Datum])) as [ISOWeek]
	,CONVERT(VARCHAR(4), YEAR([Datum])) + ', ' as [JaarVarchar]
FROM
	(SELECT TOP (DATEDIFF(DAY,@Startdatum,@Einddatum)+1)
			DATEADD(DAY,ROW_NUMBER() OVER (ORDER BY T1.[object_id]) -1,@Startdatum) as [Datum]
		FROM
			sys.all_objects T1
			CROSS JOIN
			sys.all_objects T2
	) Datums
)

INSERT INTO [dbo].[Datum]
       ([Datum]
       ,[Datumnummer]
       ,[Dagomschrijving]
       ,[DagVanJaar]
       ,[DagVanMaand]
       ,[DagVanWeek]
	   ,[EersteDagVanMaand]
       ,[LaatsteDagVanMaand]
       ,[IsLaatsteDagVanMaand]
       ,[IsWeekend]
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
       ,[ISOJaar]
       ,[ISOWeek]
       ,[ISOJaarWeek])
SELECT
	 [Datum]
	,[Datumnummer]
	,[Dagomschrijving]
	,[DagVanJaar]
	,[DagVanMaand]
	,[DagVanWeek]
	,[EersteDagVanDeMaand]
	,[LaatsteDagVanDeMaand]
	,[IsLaatsteDagVanMaand]
	,[IsWeekend]
	,[Jaar]
	,[Jaar] *100 + [Kwartaal] as [JaarKwartaal]
	,[JaarVarchar] + 'Q' + CONVERT(VARCHAR(1),[Kwartaal]) as [JaarKwartaalomschrijving]
	,[Jaar] *100 + [Maand] as [JaarMaand]
	,[JaarVarchar] + [Maandomschrijving] as [JaarMaandomschrijving]
	,[JaarVarchar] + [MaandomschrijvingKort] as [JaarMaandomschrijvingKort]
	,[Kwartaal]
	,'Q' + CONVERT(VARCHAR(1),[Kwartaal]) as [Kwartaalomschrijving]
	,[Maand]
	,[Maandomschrijving]
	,[MaandomschrijvingKort]
	,[Jaar] * 100 + [Week] as [JaarWeek]
	,[Week]
	,YEAR(DATEADD(DAY,26-[ISOWeek],[Datum])) as [ISOJaar]
	,[ISOWeek]
	,YEAR(DATEADD(DAY,26 -[ISOWeek],[Datum])) *100 + [ISOWeek] as [ISOJaarWeek]
FROM
	[Datum]
