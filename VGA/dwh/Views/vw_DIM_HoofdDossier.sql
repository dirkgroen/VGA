


CREATE VIEW [dwh].[vw_DIM_HoofdDossier]
AS

SELECT 
AK_HoofdDossier				= -1
,BK_HoofdDossier			= NULL
,DossierNummer				= CAST('-1' as nvarchar(25))
,DossierDatum				= CAST(NULL as date)
,MeldDatum					= CAST(NULL as date)
,SchadeDatum				= CAST(NULL as date)
,AfsluitDatum				= CAST(NULL as date)
,Schuldschade				= CAST(NULL as bit)
,Terugval					= CAST(NULL as bit)
,IsLetsel					= CAST(NULL as bit)
,Tekenjaar					= CAST(NULL as int)
,ANVA_SchadeKey				= CAST('Onbekend' as nvarchar(50))
,ANVA_Schadenummer			= CAST('Onbekend' as nvarchar(25))
,DossierVolgnummer			= CAST('Onbekend' as nvarchar(25))
,IsNieuw					= CAST(NULL as bit)
,HeeftEigenRisico			= CAST(NULL as bit)
,EigenRisico				= CAST(NULL as numeric(10,2))
,EigenBehoud				= CAST(NULL as numeric(10,2))

UNION ALL

SELECT 
AK_HoofdDossier				= [ID]
,BK_HoofdDossier			= [ID]
,DossierNummer				= CAST(DossierNummer as nvarchar(25))
,DossierDatum				= CAST(DossierDatum as date)
,MeldDatum					= CAST(Melddatum as date)
,SchadeDatum				= CAST(SchadeDatum as date)
,AfsluitDatum				= CAST(AfsluitDatum as date)
,Schuldschade				= CAST(Schuldschade as bit)
,Terugval					= CAST(Terugval as bit)
,IsLetsel					= CAST(IsLetsel as bit)
,Tekenjaar					= CAST(Tekenjaar as int)
,ANVA_SchadeKey				= CAST(ANVA_SchadeKey as nvarchar(50))
,ANVA_Schadenummer			= CAST(ANVA_Schadenummer as nvarchar(25))
,DossierVolgnummer			= CAST(DossierVolgnummer as nvarchar(25))
,IsNieuw					= CAST(IsNieuw as bit)
,HeeftEigenRisico			= CAST(HeeftEigenRisico as bit)
,EigenRisico				= CAST(EigenRisico as numeric(10,2))
,EigenBehoud				= CAST(EigenBehoud as numeric(10,2))
FROM stg.HoofdDossier
