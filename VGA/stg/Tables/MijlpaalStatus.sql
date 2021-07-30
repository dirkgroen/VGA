CREATE TABLE [stg].[MijlpaalStatus] (
    [ID]                          BIGINT         NULL,
    [StatusNaam]                  NVARCHAR (MAX) NULL,
    [Volgorde]                    BIGINT         NULL,
    [IsDefault]                   BIT            NULL,
    [AnvaCode]                    NVARCHAR (MAX) NULL,
    [IsActief]                    BIT            NULL,
    [MijlpaalStatus_MijlpaalType] BIGINT         NULL
);

