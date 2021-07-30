CREATE TABLE [stg].[SchadeobjectMelding] (
    [ID]                                    BIGINT             NULL,
    [changedBy]                             BIGINT             NULL,
    [Kenteken]                              NVARCHAR (MAX)     NULL,
    [Lijnnummer]                            NVARCHAR (MAX)     NULL,
    [Dienstwagennummer]                     NVARCHAR (MAX)     NULL,
    [Adres]                                 NVARCHAR (MAX)     NULL,
    [Postcode]                              NVARCHAR (MAX)     NULL,
    [Omschrijving]                          NVARCHAR (MAX)     NULL,
    [Grootwagennummer]                      NVARCHAR (MAX)     NULL,
    [Samengesteld]                          NVARCHAR (MAX)     NULL,
    [ChassisActiefNummer]                   NVARCHAR (MAX)     NULL,
    [AfgifteDatum]                          DATETIMEOFFSET (7) NULL,
    [Kostenplaats]                          NVARCHAR (MAX)     NULL,
    [Aanschafwaarde]                        NVARCHAR (MAX)     NULL,
    [Boekwaarde]                            NVARCHAR (MAX)     NULL,
    [KentekenBuitenland]                    BIT                NULL,
    [SchadeobjectMelding_SchadeObjectKlant] BIGINT             NULL,
    [SchadeObjectMelding_SchadeObjectType]  BIGINT             NULL,
    [SchadeObjectMelding_Melding]           BIGINT             NULL
);

