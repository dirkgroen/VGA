CREATE TABLE [stg].[Hoofdbranche] (
    [ID]                    BIGINT             NULL,
    [Naam]                  NVARCHAR (MAX)     NULL,
    [ANVA_Code]             NVARCHAR (MAX)     NULL,
    [RelevanteDatum]        NVARCHAR (MAX)     NULL,
    [Afkorting]             NVARCHAR (MAX)     NULL,
    [SchadedatumOndergrens] DATETIMEOFFSET (7) NULL,
    [IsVerhaalZichtbaar]    BIT                NULL
);

