





CREATE VIEW [dwh].[vw_FACT_SchadeBedragen] AS 
SELECT 
PK_ID =					D.ID
,AK_HoofdDossier =		H.ID
,AK_HoofdBranche =		H.HoofdDossier_Hoofdbranche
,AK_Polis =				H.HoofdDossier_Polis
,AK_Klant =				H.HoofdDossier_Klant
,AK_Medewerker =		M.[owner]
,AK_Melding =			M.ID
,SchadeDatum =			CONVERT(CHAR(8),M.SchadeDatum, 112)
,IsAfgehandeld =		IIF(H.AfsluitDatum IS NULL, 0, 1)
,SchadeLast =			NULLIF(D.SchadeLast,0)
,Schade_Reserve =		NULLIF(D.NettoSchadeSaldo,0)
,Schade_Betaald =		NULLIF(SUM(B.SchadeRelatie) * -1,0)
,Kosten_Reserve =		NULLIF(D.KostenSaldo,0)
,Kosten_Betaald =		NULLIF(SUM(B.KostenRelatie) * -1,0)
,Te_Verhalen =			NULLIF(D.VerhaalReserve,0)
,Percentage_BEB =		IIF(H.EigenBehoud <= 0 OR D.SchadeLast <=0, 0, D.SchadeLast / H.EigenBehoud)
FROM stg.Dekkingsregel D
LEFT JOIN stg.Boeking B
	ON D.ID = B.Boeking_Dekkingsregel
LEFT JOIN stg.Boekingsregel BR
	ON BR.Boekingsregel_Boeking = B.ID
LEFT JOIN stg.HoofdDossier H
	ON D.Dekkingsregel_HoofdDossier = H.ID
LEFT JOIN stg.Melding M
	ON H.HoofdDossier_Melding = M.ID
WHERE H.ID IS NOT NULL
AND D.SchadeLast > 0
GROUP BY 
D.ID
,H.ID
,H.HoofdDossier_Hoofdbranche
,H.HoofdDossier_Polis
,H.HoofdDossier_Klant
,M.[owner]
,M.ID
,D.SchadeLast
,D.NettoSchadeSaldo
,D.KostenSaldo
,D.VerhaalReserve
,M.SchadeDatum
,H.AfsluitDatum
,H.EigenBehoud

