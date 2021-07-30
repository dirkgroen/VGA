CREATE TABLE [stg].[Schadelocatie] (
    [ID]                         BIGINT             NULL,
    [createdDate]                DATETIMEOFFSET (7) NULL,
    [changedDate]                DATETIMEOFFSET (7) NULL,
    [owner]                      BIGINT             NULL,
    [changedBy]                  BIGINT             NULL,
    [Richting]                   NVARCHAR (MAX)     NULL,
    [Kruising]                   NVARCHAR (MAX)     NULL,
    [Straat]                     NVARCHAR (MAX)     NULL,
    [Huisnummer]                 NVARCHAR (MAX)     NULL,
    [Postcode]                   NVARCHAR (MAX)     NULL,
    [Plaats]                     NVARCHAR (MAX)     NULL,
    [Adres]                      NVARCHAR (MAX)     NULL,
    [Onbekend]                   BIT                NULL,
    [Address]                    NVARCHAR (MAX)     NULL,
    [Latitude]                   DECIMAL (38, 18)   NULL,
    [Longitude]                  DECIMAL (38, 18)   NULL,
    [Description]                NVARCHAR (MAX)     NULL,
    [HoofdDossier_Schadelocatie] BIGINT             NULL,
    [Schadelocatie_Melding]      BIGINT             NULL
);

