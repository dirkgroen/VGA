CREATE TABLE [stg].[Schadebedrag] (
    [ID]                   BIGINT           NULL,
    [changedBy]            BIGINT           NULL,
    [Omschrijving]         NVARCHAR (MAX)   NULL,
    [Referentie]           NVARCHAR (MAX)   NULL,
    [Schadebedrag]         DECIMAL (38, 18) NULL,
    [Schadebedrag_Melding] BIGINT           NULL
);

