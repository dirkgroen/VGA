﻿CREATE TABLE [stg].[Correspondentie] (
    [ID]                                        BIGINT             NULL,
    [createdDate]                               DATETIMEOFFSET (7) NULL,
    [owner]                                     BIGINT             NULL,
    [Tijdstempel]                               DATETIMEOFFSET (7) NULL,
    [CorrespondentieType]                       NVARCHAR (MAX)     NULL,
    [Titel]                                     NVARCHAR (MAX)     NULL,
    [Informatie]                                NVARCHAR (MAX)     NULL,
    [IsConceptBrief]                            BIT                NULL,
    [IsConceptEmail]                            BIT                NULL,
    [BestaatInDMS]                              BIT                NULL,
    [HeeftBijlagen]                             BIT                NULL,
    [IsZichtbaarVoorKlant]                      BIT                NULL,
    [IsZichtbaarVoorVGA]                        BIT                NULL,
    [Taal]                                      NVARCHAR (MAX)     NULL,
    [GebruikInterneDDiLink]                     BIT                NULL,
    [InterneDDiLink]                            NVARCHAR (MAX)     NULL,
    [InterneDDiGuid]                            NVARCHAR (MAX)     NULL,
    [IsBeantwoordingOfDoorstuurMail]            BIT                NULL,
    [ToonBoekingSelectie]                       BIT                NULL,
    [InkomendeEmailVerzender]                   NVARCHAR (MAX)     NULL,
    [IsTypeBekend]                              BIT                NULL,
    [IsEmailFilterChecked]                      BIT                NULL,
    [EmailFilterCheckQueued]                    BIT                NULL,
    [Correspondentie_Documentsoort]             BIGINT             NULL,
    [Correspondentie_Document_Hoofd]            BIGINT             NULL,
    [Correspondentie_Correspondentie_Melding]   BIGINT             NULL,
    [Correspondentie_MeldingBetrokkene]         BIGINT             NULL,
    [Correspondentie_Melding]                   BIGINT             NULL,
    [Correspondentie_Dossier]                   BIGINT             NULL,
    [Correspondentie_DDiDocument]               BIGINT             NULL,
    [Correspondentie_DossierBetrokkene]         BIGINT             NULL,
    [Correspondentie_Boeking]                   BIGINT             NULL,
    [Correspondentie_HoofdDossier]              BIGINT             NULL,
    [Correspondentie_DossierTaak]               BIGINT             NULL,
    [Correspondentie_DocumentTemplate]          BIGINT             NULL,
    [Correspondentie_Task]                      BIGINT             NULL,
    [Correspondentie_Sjabloontype]              BIGINT             NULL,
    [Gebeurtenis_Correspondentie]               BIGINT             NULL,
    [Correspondentie_Brief]                     BIGINT             NULL,
    [Correspondentie_Email]                     BIGINT             NULL,
    [Correspondentie_Email_BijlageNieuw]        BIGINT             NULL,
    [Correspondentie_DocumentSpecifiekeWaarden] BIGINT             NULL,
    [Correspondentie_EmailGeadresseerden]       BIGINT             NULL,
    [Correspondentie_UploadCorrespondentie]     BIGINT             NULL
);

