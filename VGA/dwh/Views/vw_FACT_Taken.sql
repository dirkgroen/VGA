


CREATE VIEW [dwh].[vw_FACT_Taken]
AS
SELECT
-- Keys
PK_ID							= m.ID
,AK_Medewerker					= ISNULL([owner], '-1')
,AK_Melding						= ISNULL(Task_Melding,'-1')
,AK_Dossier						= ISNULL(Task_Dossier,'-1')
,AK_Taak						= ISNULL(Task_TaskTemplate,'-1')
-- Datums
,StartDatum						= CONVERT(CHAR(8), StartDate, 112)
,StartDatumDate					= CAST(StartDate as date)
,OpleveringsDatum				= CONVERT(CHAR(8), DueDate, 112)
,OpleveringsDatumDate			= CAST(DueDate as date)
,AfsluitDatum					= CONVERT(CHAR(8), DoneDate, 112)
,AfsluitDatumDate				= CAST(DoneDate as date)
-- Losse selectie velden
,TaakStatus						= CAST([Status] as nvarchar(8))
,TaakSoort						= 'Systeem taak'
,TaakType						= CASE
									WHEN AdhocTask = 1 
										THEN 'AdhocTaak'
									WHEN AdministratieveTaak = 1
										THEN 'AdministratieveTaak'
									WHEN AlertTask = 1 
										THEN 'AlertTaak'
									ELSE 'Onbekend'
								  END
,UitgevoerdDoor					= CAST(DoneBy as nvarchar(50))
,Naar							= CAST(a.FullName as nvarchar(25))
,TaakNummer						= CAST(TaskId as nvarchar(10))
--Meetwaardes
,DoorlooptijdDagen				= DATEDIFF(DAY, StartDate, DoneDate)
,Norm							= DATEDIFF(DAY, StartDate, DueDate)
,IsOverschreden					= CASE 
									WHEN DATEDIFF(DAY, StartDate, DoneDate) > DATEDIFF(DAY, StartDate, DueDate) THEN 1
									ELSE 0
								  END
,TaakStatusOmschrijving			= CASE
									WHEN DATEDIFF(WEEK, StartDate, GETDATE()) <= 4 AND DoneDate IS NULL THEN 'Werkvoorraad'
									WHEN DATEDIFF(WEEK, StartDate, GETDATE()) > 4 AND DoneDate IS NULL THEN 'Achterstand'
									WHEN DoneDate is not null THEN 'Afgerond'
									ELSE 'Toekomst'
								  END
,AantalTaken					= 1
FROM stg.MeldingTaak m
LEFT JOIN stg.TaskTemplate t
	   ON t.ID = m.Task_TaskTemplate
LEFT JOIN stg.Account a
	   ON a.ID = m.MeldingTaak_Account_Aanmaker
WHERE EigenaarType is null and m.Description = 'Bepaal en maak dossiers van de melding'
AND t.Name not in ('Alert Saldo ', 'Alert ANVA ', 'Fout in de DDI koppeling', 'Verzonden mail niet in DDI')

UNION ALL

SELECT
-- Keys
PK_ID							= d.ID
,AK_Medewerker					= ISNULL([owner], '-1')
,AK_Melding						= ISNULL(Task_Melding, '-1')
,AK_Dossier						= ISNULL(Task_Dossier, '-1')
,AK_Taak						= ISNULL(Task_TaskTemplate, '-1')
-- Datums
,StartDatum						= CONVERT(CHAR(8), StartDate, 112)
,StartDatumDate					= CAST(StartDate as date)
,OpleveringsDatum				= CONVERT(CHAR(8), DueDate, 112)
,OpleveringsDatumDate			= CAST(DueDate as date)
,AfsluitDatum					= CONVERT(CHAR(8), DoneDate, 112)
,AfsluitDatumDate				= CAST(DoneDate as date)
-- Losse selectie velden
,TaakStatus						= CAST([Status] as nvarchar(8))
,TaakSoort						= CASE
									WHEN Eigenaartype in ('Alle_medewerkers_klant' , 'Medeweker_Klant' , 'Medewerker_Extern') THEN 'Uitgezette taak'
									WHEN Eigenaartype in ('Zelf_uitvoeren' , 'Behandelaar_van_dossier' , 'Medewerker_VGA') THEN 'Agenda'
									ELSE 'Systeem taak'
								END	
,TaakType						= CASE
									WHEN AdhocTask = 1 
										THEN 'AdhocTaak'
									WHEN AdministratieveTaak = 1
										THEN 'AdministratieveTaak'
									WHEN AlertTask = 1 
										THEN 'AlertTaak'
									ELSE 'Onbekend'
								  END
,UitgevoerdDoor					= CAST(DoneBy as nvarchar(50))
,Naar							= CAST(a.FullName as nvarchar(25))
,TaakNummer						= CAST(TaskId as nvarchar(10))
--Meetwaardes
,DoorlooptijdDagen				= DATEDIFF(DAY, StartDate, DoneDate)
,Norm							= DATEDIFF(DAY, StartDate, DueDate)
,IsOverschreden					= CASE 
									WHEN DATEDIFF(DAY, StartDate, DoneDate) > DATEDIFF(DAY, StartDate, DueDate) THEN 1
									ELSE 0
								  END
,TaakStatusOmschrijving			= CASE
									WHEN DATEDIFF(WEEK, StartDate, GETDATE()) <= 4 AND DoneDate IS NULL THEN 'Werkvoorraad'
									WHEN DATEDIFF(WEEK, StartDate, GETDATE()) > 4 AND DoneDate IS NULL THEN 'Achterstand'
									WHEN DoneDate is not null THEN 'Afgerond'
									ELSE 'Toekomst'
								  END
,AantalTaken					= 1
FROM stg.DossierTaak D
LEFT JOIN stg.TaskTemplate t
	   ON t.ID = D.Task_TaskTemplate
LEFT JOIN stg.Account a
	   ON a.ID = d.DossierTaak_Account_Aanmaker
WHERE EigenaarType is not null AND owner is not null
AND t.Name not in ('Alert Saldo ', 'Alert ANVA ', 'Fout in de DDI koppeling', 'Verzonden mail niet in DDI')

UNION ALL

SELECT
-- Keys
PK_ID							= c.ID
,AK_Medewerker					= ISNULL(
									CASE 
										WHEN c.Status = 'Done' THEN a2.ID
										ELSE c.owner
									END, '-1')
,AK_Melding						= ISNULL(Task_Melding, '-1')
,AK_Dossier						= ISNULL(Task_Dossier, '-1')
,AK_Taak						= ISNULL(Task_TaskTemplate, '-1')
-- Datums
,StartDatum						= CONVERT(CHAR(8), StartDate, 112)
,StartDatumDate					= CAST(StartDate as date)
,OpleveringsDatum				= CONVERT(CHAR(8), DueDate, 112)
,OpleveringsDatumDate			= CAST(DueDate as date)
,AfsluitDatum					= CONVERT(CHAR(8), DoneDate, 112)
,AfsluitDatumDate				= CAST(DoneDate as date)
-- Losse selectie velden
,TaakStatus						= CAST(c.[Status] as nvarchar(8))
,TaakSoort						= CASE
									WHEN t.Name in ('Notificatie meldingtaak ', 'Fiatteren boeking ', 'Geen taken ', 'Gewijzigde melding', 'Notificatie dossiertaak ', 'VERWERK_CORRESPONDENTIE', 'KOPPEL_AAN_DOSSIER', 'MAAK_DOSSIERS') THEN 'Systeem taak'
									ELSE t.Name
								  END	
,TaakType						= CASE
									WHEN AdhocTask = 1 
										THEN 'AdhocTaak'
									WHEN AdministratieveTaak = 1
										THEN 'AdministratieveTaak'
									WHEN AlertTask = 1 
										THEN 'AlertTaak'
									ELSE 'Onbekend'
								  END
,UitgevoerdDoor					= CAST(DoneBy as nvarchar(50))
,Naar							= CAST(a.FullName as nvarchar(25))
,TaakNummer						= CAST(TaskId as nvarchar(10))
--Meetwaardes
,DoorlooptijdDagen				= DATEDIFF(DAY, StartDate, DoneDate)
,Norm							= DATEDIFF(DAY, StartDate, DueDate)
,IsOverschreden					= CASE 
									WHEN DATEDIFF(DAY, StartDate, DoneDate) > DATEDIFF(DAY, StartDate, DueDate) THEN 1
									ELSE 0
								  END
,TaakStatusOmschrijving			= CASE
									WHEN DATEDIFF(WEEK, StartDate, GETDATE()) <= 4 AND DoneDate IS NULL THEN 'Werkvoorraad'
									WHEN DATEDIFF(WEEK, StartDate, GETDATE()) > 4 AND DoneDate IS NULL THEN 'Achterstand'
									WHEN DoneDate is not null THEN 'Afgerond'
									ELSE 'Toekomst'
								  END
,AantalTaken					= 1
FROM stg.Correspondentietaak c
LEFT JOIN stg.TaskTemplate t
	   ON t.ID = c.Task_TaskTemplate
LEFT JOIN stg.Account a
	   ON a.ID = c.owner
LEFT JOIN stg.Account a2
	   ON a2.FullName = c.DoneBy
LEFT JOIN stg.Dossier d
	   ON c.Task_Dossier = d.ID
WHERE YEAR(StartDate) >= 2015
AND c.AlertTask = 0
AND t.name not in ('Alert Saldo ', 'Alert ANVA ', 'Fout in de DDI koppeling', 'Verzonden mail niet in DDI')
