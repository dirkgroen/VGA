CREATE TABLE [stg].[Gebeurtenis] (
    [ID]                             BIGINT             NULL,
    [changedBy]                      BIGINT             NULL,
    [Aanmaakdatum]                   DATETIMEOFFSET (7) NULL,
    [Datum]                          DATETIMEOFFSET (7) NULL,
    [GebeurtenisSoort]               NVARCHAR (MAX)     NULL,
    [GebeurtenisType]                NVARCHAR (MAX)     NULL,
    [Inhoud]                         NVARCHAR (MAX)     NULL,
    [Inhoud_klant]                   NVARCHAR (MAX)     NULL,
    [Notitie]                        NVARCHAR (MAX)     NULL,
    [Betrokkene]                     NVARCHAR (MAX)     NULL,
    [HeeftBijlage]                   NVARCHAR (MAX)     NULL,
    [Gebeurtenis_Mijlpaal]           BIGINT             NULL,
    [Gebeurtenis_DossierTaak]        BIGINT             NULL,
    [Gebeurtenis_Dossier]            BIGINT             NULL,
    [Gebeurtenis_Notitie]            BIGINT             NULL,
    [Gebeurtenis_Correspondentie]    BIGINT             NULL,
    [Gebeurtenis_Email]              BIGINT             NULL,
    [Gebeurtenis_Boeking]            BIGINT             NULL,
    [Gebeurtenis_ReserveringMutatie] BIGINT             NULL
);

