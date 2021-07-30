CREATE TABLE [stg].[BetrokkeneType] (
    [ID]                           BIGINT         NULL,
    [Code]                         NVARCHAR (MAX) NULL,
    [Naam]                         NVARCHAR (MAX) NULL,
    [IsActief]                     BIT            NULL,
    [DoorsturenNaarANVA]           BIT            NULL,
    [Rol]                          NVARCHAR (MAX) NULL,
    [IsSysteemType]                BIT            NULL,
    [BetrokkeneReadOnly]           BIT            NULL,
    [KanBoekingenHebben]           BIT            NULL,
    [IsBeschikbaarVoorKlant]       BIT            NULL,
    [IsBeschikbaarVoorBehandelaar] BIT            NULL
);

