





CREATE VIEW [dwh].[vw_DIM_Medewerker]
AS

SELECT 
AK_Medewerker				= -1
,BK_Medewerker				= NULL
,MedewerkerCode				= CAST('-1' as nvarchar(25))
,MedewerkerVolledigeNaam	= CAST('Onbekend' as nvarchar(50))
,MedewerkerEmail			= CAST('Onbekend' as nvarchar(50))
,IsKlant					= NULL

UNION ALL

SELECT 
AK_Medewerker				= [ID]
,BK_Medewerker				= [ID]
,MedewerkerCode				= ISNULL([ID], '-1')
,MedewerkerVolledigeNaam	= CAST(FullName as nvarchar(50))
,MedewerkerEmail			= CAST(Email as nvarchar(50))
,IsKlant					= CAST(IsKlant as bit)
FROM stg.Account
WHERE FullName is not null

