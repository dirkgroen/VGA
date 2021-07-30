CREATE TABLE [stg].[Schadesoort] (
    [ID]                           BIGINT         NULL,
    [Naam]                         NVARCHAR (MAX) NULL,
    [ANVA_Code]                    NVARCHAR (MAX) NULL,
    [Actief]                       BIT            NULL,
    [IsConversie]                  BIT            NULL,
    [Schadesoort_Hoofdoorzaak]     BIGINT         NULL,
    [Schadesoort_BeschadigdObject] BIGINT         NULL,
    [Schadesoort_SchadeOorzaak]    BIGINT         NULL,
    [Schadesoort_SchadesoortGroep] BIGINT         NULL,
    [Schadesoort_Hoofdbranche]     BIGINT         NULL
);

