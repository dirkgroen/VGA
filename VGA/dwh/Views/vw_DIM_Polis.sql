

CREATE VIEW [dwh].[vw_DIM_Polis]
AS
SELECT 
AK_Polis				= -1
,BK_Polis				= NULL
,RelatieNummer			= CAST('-1' as nvarchar(25))
,RelatieNaam			= CAST('Onbekend' as nvarchar(100))
,Volgnummer				= CAST('Onbekend' as nvarchar(15))
,VersieNummer			= CAST('Onbekend' as nvarchar(15))
,Polisnummer			= CAST('Onbekend' as nvarchar(25))
,PolisOmschrijving		= CAST('Onbekend' as nvarchar(250))
,Maatschappij			= CAST('Onbekend' as nvarchar(250))
,Branche				= CAST('Onbekend' as nvarchar(250))
UNION ALL

SELECT 
AK_Polis				= P.[ID]
,BK_Polis				= P.[ID]
,RelatieNummer			= CAST(RelatieNummer as nvarchar(25))
,RelatieNaam			= CAST(RelatieNaam as nvarchar(100))
,Volgnummer				= CAST(Volgnummer as nvarchar(15))
,VersieNummer			= CAST(VersieNummer as nvarchar(15))
,Polisnummer			= CAST(Polisnummer as nvarchar(25))
,PolisOmschrijving		= CAST(PD.Omschrijving as nvarchar(250))
,Maatschappij			= CAST(PD.Maatschappij as nvarchar(250))
,Branche				= CAST(PD.Branche as nvarchar(250))
FROM stg.Polis P
LEFT JOIN stg.PolisDetail PD
       ON P.ID = PD.Polis_PolisDetail

