﻿CREATE TABLE [stg].[MeldingBetrokkene] (
    [ID]                                     BIGINT             NULL,
    [changedBy]                              BIGINT             NULL,
    [Voornaam]                               NVARCHAR (MAX)     NULL,
    [Initialen]                              NVARCHAR (MAX)     NULL,
    [Achternaam]                             NVARCHAR (MAX)     NULL,
    [Tussenvoegsel]                          NVARCHAR (MAX)     NULL,
    [Aanhef]                                 NVARCHAR (MAX)     NULL,
    [Geboortedatum]                          DATETIMEOFFSET (7) NULL,
    [Adres]                                  NVARCHAR (MAX)     NULL,
    [Huisnummer]                             NVARCHAR (MAX)     NULL,
    [HuisnummerToevoeging]                   NVARCHAR (MAX)     NULL,
    [Plaats]                                 NVARCHAR (MAX)     NULL,
    [Postcode]                               NVARCHAR (MAX)     NULL,
    [IsBuitenland]                           BIT                NULL,
    [PostcodeBuitenland]                     NVARCHAR (MAX)     NULL,
    [LandBuitenland]                         NVARCHAR (MAX)     NULL,
    [AdresIsCorrespondentieAdres]            BIT                NULL,
    [CorrespondentieAdres]                   NVARCHAR (MAX)     NULL,
    [CorrespondentieHuisnummer]              NVARCHAR (MAX)     NULL,
    [CorrespondentieHuisnummerToevoeging]    NVARCHAR (MAX)     NULL,
    [CorrespondentiePlaats]                  NVARCHAR (MAX)     NULL,
    [CorrespondentiePostcode]                NVARCHAR (MAX)     NULL,
    [CorrespondentiePostcodeBuitenland]      NVARCHAR (MAX)     NULL,
    [CorrespondentieLandBuitenland]          NVARCHAR (MAX)     NULL,
    [Email]                                  NVARCHAR (MAX)     NULL,
    [Telefoonnummer]                         NVARCHAR (MAX)     NULL,
    [Bankrekeningnummer]                     NVARCHAR (MAX)     NULL,
    [IsRechtspersoon]                        BIT                NULL,
    [Contactpersoon]                         NVARCHAR (MAX)     NULL,
    [IsEersteLijnsBetrokkene]                BIT                NULL,
    [VolledigeNaam]                          NVARCHAR (MAX)     NULL,
    [Kenteken]                               NVARCHAR (MAX)     NULL,
    [Referentie]                             NVARCHAR (MAX)     NULL,
    [Omschrijving]                           NVARCHAR (MAX)     NULL,
    [Letsel]                                 NVARCHAR (MAX)     NULL,
    [IsTegenpartij]                          BIT                NULL,
    [IsVasteBetrokkene]                      BIT                NULL,
    [Personeelsnummer]                       NVARCHAR (MAX)     NULL,
    [BuitenlandsKenteken]                    BIT                NULL,
    [Betrokkene_Betrokkene]                  BIGINT             NULL,
    [MeldingBetrokkene_BetrokkeneType]       BIGINT             NULL,
    [MeldingBetrokkene_TegenpartijType]      BIGINT             NULL,
    [Klant_Betrokkene]                       BIGINT             NULL,
    [Werknemer_Betrokkene]                   BIGINT             NULL,
    [MeldingBetrokkene_Melding]              BIGINT             NULL,
    [MeldingBetrokkene_Personeelslid]        BIGINT             NULL,
    [MeldingBetrokkene_OrganisatieOnderdeel] BIGINT             NULL
);
