CREATE TABLE [stg].[Polisblad] (
    [ID]                      BIGINT             NULL,
    [createdDate]             DATETIMEOFFSET (7) NULL,
    [changedDate]             DATETIMEOFFSET (7) NULL,
    [owner]                   BIGINT             NULL,
    [changedBy]               BIGINT             NULL,
    [DDiDocumentPaginaGuid]   NVARCHAR (MAX)     NULL,
    [DDiDocumentPaginanummer] BIGINT             NULL,
    [DDiDocumentPaginanaam]   NVARCHAR (MAX)     NULL,
    [FileID]                  BIGINT             NULL,
    [Name]                    NVARCHAR (MAX)     NULL,
    [DeleteAfterDownload]     BIT                NULL,
    [Contents]                VARBINARY (MAX)    NULL,
    [HasContents]             BIT                NULL,
    [Size]                    BIGINT             NULL,
    [Polisblad_Polisdocument] BIGINT             NULL
);

