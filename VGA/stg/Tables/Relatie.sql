CREATE TABLE [stg].[Relatie] (
    [ID]                 BIGINT         NULL,
    [Naam]               NVARCHAR (MAX) NULL,
    [Adres]              NVARCHAR (MAX) NULL,
    [Postcode]           NVARCHAR (MAX) NULL,
    [Plaats]             NVARCHAR (MAX) NULL,
    [Telefoonnummer]     NVARCHAR (MAX) NULL,
    [Banknummer]         NVARCHAR (MAX) NULL,
    [SoortRelatie]       NVARCHAR (MAX) NULL,
    [Status]             NVARCHAR (MAX) NULL,
    [Relatienummer]      BIGINT         NULL,
    [IsBuitenland]       BIT            NULL,
    [PostcodeBuitenland] NVARCHAR (MAX) NULL,
    [LandBuitenland]     NVARCHAR (MAX) NULL,
    [Relatie_Klant]      BIGINT         NULL
);

