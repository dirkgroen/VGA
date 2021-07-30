CREATE TABLE [stg].[HerverzekeringsContract] (
    [ID]                                           BIGINT             NULL,
    [EigenBehoud]                                  DECIMAL (38, 18)   NULL,
    [Startdatum]                                   DATETIMEOFFSET (7) NULL,
    [Einddatum]                                    DATETIMEOFFSET (7) NULL,
    [ANVA_SchadeKey]                               NVARCHAR (MAX)     NULL,
    [Polisnummer]                                  NVARCHAR (MAX)     NULL,
    [Relatienummer]                                BIGINT             NULL,
    [Volgnummer]                                   NVARCHAR (MAX)     NULL,
    [VolgnummerSub]                                BIGINT             NULL,
    [Versienummer]                                 BIGINT             NULL,
    [IsActief]                                     BIT                NULL,
    [Maatschappijcode]                             NVARCHAR (MAX)     NULL,
    [ConversieStatus]                              NVARCHAR (MAX)     NULL,
    [HerverzekeringsContract_Hoofdbranche]         BIGINT             NULL,
    [HerverzekeringsContract_PolisDetail]          BIGINT             NULL,
    [HerverzekeringsContract_DekkingCode]          BIGINT             NULL,
    [HerverzekeringsContract_DekkingCode_Inversie] BIGINT             NULL
);

