



CREATE VIEW [dwh].[vw_DIM_HoofdBranche]
AS

SELECT 
 AK_HoofdBranche				= -1
,BK_HoofdBranche				= NULL
,HoofdBrancheNaam				= CAST('Onbekend' as nvarchar(100))
,HoofdBrancheNaam1				= CAST('Onbekend' as nvarchar(100))
,HoofdBrancheANVACode			= CAST('Onbekend' as nvarchar(5))
,HoofdBrancheRelevanteDatum		= CAST('Onbekend' as nvarchar(25))
,HoofdBrancheAfkorting			= CAST('Onbekend' as nvarchar(5))
,HoofdBrancheIsVerhaalZichtbaar	= CAST(NULL as bit)

UNION ALL

SELECT 
 AK_HoofdBranche				= [ID]
,BK_HoofdBranche				= [ID]
,HoofdBrancheNaam				= CAST([Naam] as nvarchar(100))
,HoofdBrancheNaam1				= CAST([Naam] as nvarchar(100))
,HoofdBrancheANVACode			= CAST([ANVA_Code] as nvarchar(5))
,HoofdBrancheRelevanteDatum		= CAST([RelevanteDatum] as nvarchar(25))
,HoofdBrancheAfkorting			= CAST([Afkorting] as nvarchar(5))
,HoofdBrancheIsVerhaalZichtbaar	= CAST([IsVerhaalZichtbaar] as bit)
FROM [stg].[Hoofdbranche]
