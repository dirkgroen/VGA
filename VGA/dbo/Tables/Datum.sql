﻿CREATE TABLE [dbo].[Datum] (
    [Datum]                     DATE         NOT NULL,
    [Datumnummer]               VARCHAR (8)  NULL,
    [Dagomschrijving]           VARCHAR (10) NULL,
    [DagVanJaar]                SMALLINT     NULL,
    [DagVanMaand]               TINYINT      NULL,
    [DagVanWeek]                TINYINT      NULL,
    [EersteDagVanMaand]         DATE         NULL,
    [LaatsteDagVanMaand]        DATE         NULL,
    [IsLaatsteDagVanMaand]      BIT          NULL,
    [IsWeekend]                 BIT          NULL,
    [Jaar]                      SMALLINT     NULL,
    [JaarKwartaal]              INT          NULL,
    [JaarKwartaalomschrijving]  VARCHAR (8)  NULL,
    [JaarMaand]                 INT          NULL,
    [JaarMaandomschrijving]     VARCHAR (36) NULL,
    [JaarMaandomschrijvingKort] VARCHAR (9)  NULL,
    [Kwartaal]                  TINYINT      NULL,
    [Kwartaalomschrijving]      VARCHAR (2)  NULL,
    [Maand]                     TINYINT      NULL,
    [Maandomschrijving]         VARCHAR (30) NULL,
    [MaandomschrijvingKort]     VARCHAR (3)  NULL,
    [JaarWeek]                  INT          NULL,
    [Week]                      INT          NULL,
    [ISOJaar]                   INT          NULL,
    [ISOWeek]                   TINYINT      NULL,
    [ISOJaarWeek]               INT          NULL,
    CONSTRAINT [PK_dbo_datum] PRIMARY KEY CLUSTERED ([Datum] ASC)
);

