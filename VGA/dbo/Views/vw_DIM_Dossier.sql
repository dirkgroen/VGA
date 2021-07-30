

CREATE VIEW [dbo].[vw_DIM_Dossier]
AS
WITH Mijlpaal_data as
(SELECT 
				D.ID as DossierID
				,T.MijlpaalNaam
				,S.StatusNaam
		  FROM stg.Dossier D
		  LEFT JOIN stg.Mijlpaal M
		  	ON m.Mijlpaal_Dossier = D.ID 
		  LEFT JOIN stg.MijlpaalType T
		  	ON T.ID = M.Mijlpaal_MijlpaalType
		  LEFT JOIN stg.MijlpaalStatus S
		  	ON S.ID = M.Mijlpaal_MijlpaalStatus)


, CTE_Mijlpaal
AS(
	SELECT DossierID, [Polisdekking], [Aansprakelijkheid], [Stand van zaken], [Schadelast]
	FROM Mijlpaal_data as P
	PIVOT
	(
	MAX(Statusnaam)
	FOR MijlpaalNaam IN 
	([Polisdekking], [Aansprakelijkheid], [Stand van zaken], [Schadelast])
	) as PivotTable
)

SELECT 
AK_Dossier				= -1
,BK_Dossier				= NULL
,DossierNummer			= CAST('onbekend' as nvarchar(25))
,DossierVolgnummer		= CAST('onbekend' as nvarchar(25))
,DossierStatus			= CAST('onbekend' as nvarchar(25))
,Polisdekking			= CAST('onbekend' as nvarchar(50))
,Aansprakelijkheid		= CAST('onbekend' as nvarchar(50))
,StandVanZaken			= CAST('onbekend' as nvarchar(50))
,Schadelast				= CAST('onbekend' as nvarchar(50))

UNION ALL

SELECT
AK_Dossier				= ID
,BK_Dossier				= ID
,DossierNummer			= CAST(DossierNummer as nvarchar(25))
,DossierVolgnummer		= CAST(DossierVolgnummer as nvarchar(25))
,DossierStatus			= CAST(Status as nvarchar(25))
,Polisdekking			= CAST(Polisdekking as nvarchar(50))
,Aansprakelijkheid		= CAST(Aansprakelijkheid as nvarchar(50))
,StandVanZaken			= CAST([Stand van zaken] as nvarchar(50))
,Schadelast				= CAST(Schadelast as nvarchar(50))
FROM stg.Dossier d
LEFT JOIN CTE_Mijlpaal c
	   ON c.DossierID = d.ID
