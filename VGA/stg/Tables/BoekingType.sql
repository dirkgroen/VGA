CREATE TABLE [stg].[BoekingType] (
    [ID]             BIGINT         NULL,
    [Code]           NVARCHAR (MAX) NULL,
    [Omschrijving]   NVARCHAR (MAX) NULL,
    [IsCourtage]     BIT            NULL,
    [RegelType]      NVARCHAR (MAX) NULL,
    [IsActief]       BIT            NULL,
    [Sorteersleutel] BIGINT         NULL,
    [IsDefault]      BIT            NULL
);

