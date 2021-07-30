CREATE TABLE [stg].[PolisStamdata] (
    [ID]                 BIGINT             NULL,
    [owner]              BIGINT             NULL,
    [DatumLaatsteUpdate] DATETIMEOFFSET (7) NULL,
    [Polisnr]            NVARCHAR (MAX)     NULL
);

