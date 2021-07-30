


CREATE VIEW [dwh].[vw_DIM_Taak]
AS
SELECT 
AK_Taak						= -1
,BK_Taak					= NULL
,TaakNaam					= CAST('Onbekend' as nvarchar(250))
,TaakDisplayNaam			= CAST('Onbekend' as nvarchar(250))
,TaakOmschrijving			= CAST('Onbekend' as nvarchar(350))
,TaakIsAdHoc				= CAST(NULL as bit)
,TaakIsAlert				= CAST(NULL as bit)

UNION ALL

SELECT 
AK_Taak						= [ID]
,BK_Taak					= ISNULL([ID], '-1')
,TaakNaam					= CAST(LEFT(name,1) + LOWER(SUBSTRING(REPLACE(name,'_',''), 2, LEN(name)-1)) as nvarchar(250))
,TaakDisplayNaam			= CAST(DisplayName as nvarchar(250))
,TaakOmschrijving			= CAST(Description as nvarchar(350))
,TaakIsAdHoc				= CAST(IsAdHocTask as bit)
,TaakIsAlert				= CAST(IsAlertTask as bit)
FROM stg.TaskTemplate

