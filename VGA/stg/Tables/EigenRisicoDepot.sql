CREATE TABLE [stg].[EigenRisicoDepot] (
    [ID]                                    BIGINT             NULL,
    [ANVA_SchadeKey]                        NVARCHAR (MAX)     NULL,
    [Polisnummer]                           NVARCHAR (MAX)     NULL,
    [Schadedatum]                           DATETIMEOFFSET (7) NULL,
    [Relatienummer]                         BIGINT             NULL,
    [Volgnummer]                            NVARCHAR (MAX)     NULL,
    [VolgnummerSub]                         BIGINT             NULL,
    [Versienummer]                          BIGINT             NULL,
    [EigenRisico]                           DECIMAL (38, 18)   NULL,
    [StartDatum]                            DATETIMEOFFSET (7) NULL,
    [EindDatum]                             DATETIMEOFFSET (7) NULL,
    [IsActief]                              BIT                NULL,
    [Klant_Depot]                           BIGINT             NULL,
    [EigenRisicoDepot_PolisDetail]          BIGINT             NULL,
    [EigenRisicoDepot_DekkingCode]          BIGINT             NULL,
    [EigenRisicoDepot_DekkingCode_Inversie] BIGINT             NULL,
    [EigenRisicoDepot_Klant]                BIGINT             NULL,
    [EigenRisicoDepot_Hoofdbranche]         BIGINT             NULL
);

