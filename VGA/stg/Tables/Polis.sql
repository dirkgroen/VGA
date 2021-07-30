CREATE TABLE [stg].[Polis] (
    [ID]                 BIGINT         NULL,
    [RelatieNummer]      NVARCHAR (MAX) NULL,
    [RelatieNaam]        NVARCHAR (MAX) NULL,
    [Volgnummer]         NVARCHAR (MAX) NULL,
    [VolgnummerSub]      NVARCHAR (MAX) NULL,
    [VersieNummer]       NVARCHAR (MAX) NULL,
    [ANVA_PolisPK]       NVARCHAR (MAX) NULL,
    [Polisnummer]        NVARCHAR (MAX) NULL,
    [IsNaarANVAGestuurd] BIT            NULL,
    [HoofdBrancheCode]   NVARCHAR (MAX) NULL,
    [IsGekozen]          BIT            NULL,
    [Polis_PolisDetail]  BIGINT         NULL,
    [HoofdDossier_Polis] BIGINT         NULL
);

