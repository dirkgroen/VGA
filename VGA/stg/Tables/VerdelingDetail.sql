CREATE TABLE [stg].[VerdelingDetail] (
    [ID]                            BIGINT           NULL,
    [Relatienr]                     BIGINT           NULL,
    [Volgnr]                        NVARCHAR (MAX)   NULL,
    [VolgnrSub]                     BIGINT           NULL,
    [Versie]                        BIGINT           NULL,
    [Polisnr]                       NVARCHAR (MAX)   NULL,
    [Branche]                       NVARCHAR (MAX)   NULL,
    [DekVolgnr]                     BIGINT           NULL,
    [Dekking]                       NVARCHAR (MAX)   NULL,
    [Mijcode]                       NVARCHAR (MAX)   NULL,
    [VerdeelMij]                    NVARCHAR (MAX)   NULL,
    [Aandeel]                       DECIMAL (38, 18) NULL,
    [Leader]                        NVARCHAR (MAX)   NULL,
    [VerdelingDetail_DekkingDetail] BIGINT           NULL
);

