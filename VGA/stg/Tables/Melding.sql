CREATE TABLE [stg].[Melding] (
    [ID]                           BIGINT             NULL,
    [owner]                        BIGINT             NULL,
    [changedBy]                    BIGINT             NULL,
    [Volgnummer]                   BIGINT             NULL,
    [SysteemDatum]                 DATETIMEOFFSET (7) NULL,
    [MeldingDatum]                 DATETIMEOFFSET (7) NULL,
    [SchadeDatum]                  DATETIMEOFFSET (7) NULL,
    [SchadeTijd]                   NVARCHAR (MAX)     NULL,
    [KlantReferentienummer1]       NVARCHAR (MAX)     NULL,
    [KlantReferentienummer2]       NVARCHAR (MAX)     NULL,
    [MeldingNummer]                NVARCHAR (MAX)     NULL,
    [MeldingVolgnummer]            BIGINT             NULL,
    [Status]                       NVARCHAR (MAX)     NULL,
    [OmschrijvingSchadeoorzaak]    NVARCHAR (MAX)     NULL,
    [IsLetsel]                     BIT                NULL,
    [IsPolitieAangifteGedaan]      BIT                NULL,
    [ProcesVerbaalNummer]          NVARCHAR (MAX)     NULL,
    [ParketNummer]                 NVARCHAR (MAX)     NULL,
    [IsZichtbaarVoorVGA]           BIT                NULL,
    [IsOpenMelding]                BIT                NULL,
    [Routecode]                    NVARCHAR (MAX)     NULL,
    [Kenteken]                     NVARCHAR (MAX)     NULL,
    [BuitenlandsKenteken]          BIT                NULL,
    [ClosePage]                    BIT                NULL,
    [Zoekveld]                     NVARCHAR (MAX)     NULL,
    [isGeanonimiseerd]             BIT                NULL,
    [Melding_MeldingType]          BIGINT             NULL,
    [Melding_MeldingProces]        BIGINT             NULL,
    [Melding_Klant]                BIGINT             NULL,
    [Melding_Werknemer]            BIGINT             NULL,
    [Melding_OrganisatieOnderdeel] BIGINT             NULL,
    [Melding_Account]              BIGINT             NULL,
    [Melding_Schadesoort]          BIGINT             NULL,
    [Schadelocatie_Melding]        BIGINT             NULL
);

