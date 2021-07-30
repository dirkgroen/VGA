


CREATE VIEW [dwh].[vw_DIM_Melding]
AS
SELECT 
AK_Melding					= -1
,BK_Melding					= NULL
,MeldingNummer				= CAST('Onbekend' as nvarchar(15))
,MeldingDatum				= CAST(NULL as date)
,SchadeDatum				= CAST(NULL as date)
,MeldingVolgnummer			= CAST('Onbekend' as nvarchar(15))
,MeldingStatus				= CAST('Onbekend' as nvarchar(30))
,IsOpenMelding				= CAST(NULL as bit)
,MeldingOmschrijving		= CAST('Onbekend' as nvarchar(500))

UNION ALL

SELECT 
AK_Melding					= [ID]
,BK_Melding					= ISNULL([ID], '-1')
,MeldingNummer				= CAST(Meldingnummer as nvarchar(15))
,MeldingDatum				= CAST(MeldingDatum as date)
,SchadeDatum				= CAST(SchadeDatum as date)
,MeldingVolgnummer			= CAST(MeldingVolgnummer as nvarchar(15))
,MeldingStatus				= CAST([Status] as nvarchar(30))
,IsOpenMelding				= CAST(IsOpenMelding as bit)
,MeldingOmschrijving		= CAST(OmschrijvingSchadeoorzaak as nvarchar(500))
FROM stg.Melding

