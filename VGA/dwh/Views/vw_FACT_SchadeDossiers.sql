CREATE VIEW [dwh].[vw_FACT_SchadeDossiers] AS 
SELECT 
-- Keys
PK_ID								= D.ID
,AK_Dossier							= ISNULL(D.ID, '-1')
,AK_HoofdDossier					= ISNULL(H.ID, '-1')
,AK_HoofdBranche					= ISNULL(H.HoofdDossier_HoofdBranche, '-1')
,AK_Medewerker						= ISNULL(D.Dossier_Account_Behandelaar, '-1')
,AK_Klant							= ISNULL(H.HoofdDossier_Klant, '-1')
,AK_Relatie							= ISNULL(H.HoofdDossier_Relatie, '-1')
,AK_SchadeSoort						= ISNULL(H.HoofdDossier_Schadesoort, '-1')
,AK_SchadeLocatie					= ISNULL(H.HoofdDossier_Schadelocatie, '-1')
,AK_Polis							= ISNULL(H.HoofdDossier_Polis, '-1')
,AK_Organisatie						= ISNULL(H.HoofdDossier_Organisatie, '-1')
,AK_Melding							= ISNULL(H.HoofdDossier_Melding, '-1')
-- Datums
,DossierDatum						= CONVERT(CHAR(8),H.DossierDatum, 112)
,AfsluitDatum						= CONVERT(CHAR(8),H.AfsluitDatum, 112)
,MeldDatum							= CONVERT(CHAR(8),H.Melddatum, 112)
,SchadeDatum						= CONVERT(CHAR(8),H.Schadedatum, 112)
--Losse Selectie Velden
,IsCommunicatieDossier				= CASE 
										WHEN H.HoofdDossier_HoofdBranche IS NULL THEN 1
										ELSE 0
									  END
--Meetwaardes
,AantalHoofdDossiers				= 1
,DoorlooptijdDagenAfgehandeld		= DATEDIFF(DAY, H.Melddatum, H.AfsluitDatum)
,DoorlooptijdDagenInBehandeling		= CASE 
										WHEN H.AfsluitDatum IS NULL THEN DATEDIFF(DAY, H.Melddatum, GETDATE())
										ELSE DATEDIFF(DAY, H.Melddatum, NULL)
									  END
--,Norm					= 365
--,IsOverschreden			= CASE 
--							WHEN DATEDIFF(DAY, H.Melddatum, H.AfsluitDatum) > 365 THEN 1
--							ELSE 0
--						  END
FROM stg.Dossier D
LEFT JOIN stg.HoofdDossier H
	ON D.Dossier_HoofdDossier = H.ID
LEFT JOIN stg.Melding M
	ON H.HoofdDossier_Melding = M.ID
WHERE YEAR(H.MeldDatum) >= 2015 OR H.AfsluitDatum IS NULL 
