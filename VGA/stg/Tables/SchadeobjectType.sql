CREATE TABLE [stg].[SchadeobjectType] (
    [ID]                      BIGINT         NULL,
    [Naam]                    NVARCHAR (MAX) NULL,
    [ToonKenteken]            BIT            NULL,
    [ToonLijnnummer]          BIT            NULL,
    [ToonDienstwagenNummer]   BIT            NULL,
    [ToonAdres]               BIT            NULL,
    [IsActief]                BIT            NULL,
    [ToonSchadelocatie]       BIT            NULL,
    [ToonGrootwagennummer]    BIT            NULL,
    [ToonChassisActiefNummer] BIT            NULL,
    [ToonAfgifteDatum]        BIT            NULL,
    [ToonKostenPlaats]        BIT            NULL,
    [ToonAanschafwaarde]      BIT            NULL,
    [ToonBoekwaarde]          BIT            NULL
);

