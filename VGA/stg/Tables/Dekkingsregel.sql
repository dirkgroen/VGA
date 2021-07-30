CREATE TABLE [stg].[Dekkingsregel] (
    [ID]                                        BIGINT           NULL,
    [VolgnrDekking]                             BIGINT           NULL,
    [IsAfgeleideDekkingsregel]                  BIT              NULL,
    [Reservering]                               DECIMAL (38, 18) NULL,
    [Betaling]                                  DECIMAL (38, 18) NULL,
    [Reserve]                                   DECIMAL (38, 18) NULL,
    [KostenSaldo]                               DECIMAL (38, 18) NULL,
    [NettoSchadeSaldo]                          DECIMAL (38, 18) NULL,
    [TeVerhalen]                                DECIMAL (38, 18) NULL,
    [Ontvangen]                                 DECIMAL (38, 18) NULL,
    [VerhaalReserve]                            DECIMAL (38, 18) NULL,
    [SchadeLast]                                DECIMAL (38, 18) NULL,
    [TotaalReserve]                             DECIMAL (38, 18) NULL,
    [ConversieHoofdDossiernummer]               NVARCHAR (MAX)   NULL,
    [Dekkingsregel_EigenRisicoDepot]            BIGINT           NULL,
    [Dekkingsregel_Dossier]                     BIGINT           NULL,
    [Dekkingsregel_HoofdDossier]                BIGINT           NULL,
    [Dekkingsregel_HoofdDossier_ERDepot]        BIGINT           NULL,
    [Dekkingsregel_HerverzekeringsContract]     BIGINT           NULL,
    [Dekkingsregel_HoofdDossier_Herverzekering] BIGINT           NULL,
    [Dekkingsregel_Dekkingcode]                 BIGINT           NULL
);

