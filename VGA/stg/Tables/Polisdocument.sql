CREATE TABLE [stg].[Polisdocument] (
    [ID]                          BIGINT             NULL,
    [owner]                       BIGINT             NULL,
    [AanmaakTijdstempel]          DATETIMEOFFSET (7) NULL,
    [DDiDocumentGuid]             NVARCHAR (MAX)     NULL,
    [DDiDocumentLink]             NVARCHAR (MAX)     NULL,
    [DDiDocumentOmschrijving]     NVARCHAR (MAX)     NULL,
    [IsBeschikbaarVoorKlant]      BIT                NULL,
    [Polisdocument_PolisStamdata] BIGINT             NULL
);

