CREATE TABLE [stg].[Boekingsregel] (
    [ID]                        BIGINT             NULL,
    [createdDate]               DATETIMEOFFSET (7) NULL,
    [Boekingsbedrag]            DECIMAL (38, 18)   NULL,
    [Invoerbedrag]              DECIMAL (38, 18)   NULL,
    [Boekingsregel_Boeking]     BIGINT             NULL,
    [Boekingsregel_BoekingType] BIGINT             NULL,
    [Boekingsregel_BTWcode]     BIGINT             NULL
);

