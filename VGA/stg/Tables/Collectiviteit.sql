CREATE TABLE [stg].[Collectiviteit] (
    [ID]                                  BIGINT         NULL,
    [Code]                                NVARCHAR (MAX) NULL,
    [Toelichting]                         NVARCHAR (MAX) NULL,
    [Collectiviteit_Klant]                BIGINT         NULL,
    [Collectiviteit_OrganisatieOnderdeel] BIGINT         NULL
);

