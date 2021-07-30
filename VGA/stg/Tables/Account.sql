CREATE TABLE [stg].[Account] (
    [ID]                             BIGINT         NULL,
    [FullName]                       NVARCHAR (MAX) NULL,
    [Email]                          NVARCHAR (MAX) NULL,
    [Telefoonnummer]                 NVARCHAR (MAX) NULL,
    [HasTemporaryPassword]           BIT            NULL,
    [PasswordResetLink]              NVARCHAR (MAX) NULL,
    [TemporaryPassword]              NVARCHAR (MAX) NULL,
    [IsKlant]                        BIT            NULL,
    [ANVAGebruikersnaam]             NVARCHAR (MAX) NULL,
    [GebruikInterneDDiLink]          BIT            NULL,
    [IsBoekenEnReserverenToegestaan] BIT            NULL,
    [MagDossiersHerverdelen]         BIT            NULL,
    [MailNotification]               BIT            NULL,
    [isODataUser]                    BIT            NULL,
    [Name]                           NVARCHAR (MAX) NULL,
    [IsAnonymous]                    BIT            NULL,
    [Account_Organisatie]            BIGINT         NULL,
    [Werknemer_Account]              BIGINT         NULL,
    [User_Language]                  BIGINT         NULL,
    [User_TimeZone]                  BIGINT         NULL,
    [Credentials_User]               BIGINT         NULL
);

