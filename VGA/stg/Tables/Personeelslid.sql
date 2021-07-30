CREATE TABLE [stg].[Personeelslid] (
    [ID]                                 BIGINT             NULL,
    [Personeelsnummer]                   NVARCHAR (MAX)     NULL,
    [Achternaam]                         NVARCHAR (MAX)     NULL,
    [Geboortedatum]                      DATETIMEOFFSET (7) NULL,
    [Kostenplaats]                       NVARCHAR (MAX)     NULL,
    [Omschrijving]                       NVARCHAR (MAX)     NULL,
    [Rechtspersoon]                      BIT                NULL,
    [Naam]                               NVARCHAR (MAX)     NULL,
    [Voornaam]                           NVARCHAR (MAX)     NULL,
    [Email]                              NVARCHAR (MAX)     NULL,
    [Telefoonnummer]                     NVARCHAR (MAX)     NULL,
    [PersoneelsLid_Klant]                BIGINT             NULL,
    [Personeelslid_OrganisatieOnderdeel] BIGINT             NULL,
    [Initialen]                          NVARCHAR (MAX)     NULL,
    [Tussenvoegsel]                      NVARCHAR (MAX)     NULL,
    [Aanhef]                             NVARCHAR (MAX)     NULL,
    [Adres]                              NVARCHAR (MAX)     NULL,
    [Plaats]                             NVARCHAR (MAX)     NULL
);

