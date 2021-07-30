﻿CREATE TABLE [stg].[MeldingTaak] (
    [ID]                            BIGINT             NULL,
    [createdDate]                   DATETIMEOFFSET (7) NULL,
    [owner]                         BIGINT             NULL,
    [IsHandmatigAangemaakt]         BIT                NULL,
    [StuurNotificatie]              BIT                NULL,
    [EigenaarType]                  NVARCHAR (MAX)     NULL,
    [Notitie]                       NVARCHAR (MAX)     NULL,
    [TaskId]                        BIGINT             NULL,
    [Description]                   NVARCHAR (MAX)     NULL,
    [Reference]                     NVARCHAR (MAX)     NULL,
    [Timestamp]                     DATETIMEOFFSET (7) NULL,
    [StartDate]                     DATETIMEOFFSET (7) NULL,
    [DueDate]                       DATETIMEOFFSET (7) NULL,
    [DoneDate]                      DATETIMEOFFSET (7) NULL,
    [DoneBy]                        NVARCHAR (MAX)     NULL,
    [Status]                        NVARCHAR (MAX)     NULL,
    [Priority]                      NVARCHAR (MAX)     NULL,
    [LockStatus]                    NVARCHAR (MAX)     NULL,
    [Deeplink]                      NVARCHAR (MAX)     NULL,
    [HeeftBijlage]                  BIT                NULL,
    [DueStatus]                     NVARCHAR (MAX)     NULL,
    [HasOwner]                      BIT                NULL,
    [ReturnToDashboard]             BIT                NULL,
    [CorrespondentieTaak]           BIT                NULL,
    [MeldingTaak]                   BIT                NULL,
    [DossierTaak]                   BIT                NULL,
    [AdministratieveTaak]           BIT                NULL,
    [AdhocTask]                     BIT                NULL,
    [AlertTask]                     BIT                NULL,
    [MeldingTaak_VrijeTaakTemplate] BIGINT             NULL,
    [MeldingTaak_Account_Tijdelijk] BIGINT             NULL,
    [MeldingTaak_Account_Aanmaker]  BIGINT             NULL,
    [Task_ProcessInstance]          BIGINT             NULL,
    [Task_TaskTemplate]             BIGINT             NULL,
    [Correspondentie_Task]          BIGINT             NULL,
    [Task_Account_Select]           BIGINT             NULL,
    [Task_Dossier]                  BIGINT             NULL,
    [Task_Melding]                  BIGINT             NULL
);

