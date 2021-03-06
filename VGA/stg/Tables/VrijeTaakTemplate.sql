CREATE TABLE [stg].[VrijeTaakTemplate] (
    [ID]                                    BIGINT         NULL,
    [StuurNotificatieTaak]                  BIT            NULL,
    [IsActief]                              BIT            NULL,
    [IsBeschikbaarVoorMelding]              BIT            NULL,
    [IsBeschikbaarVoorDossier]              BIT            NULL,
    [IsBeschikbaarVoorKlant]                BIT            NULL,
    [BeschikbaarVoorBulkVerwerking]         BIT            NULL,
    [Name]                                  NVARCHAR (MAX) NULL,
    [DisplayName]                           NVARCHAR (MAX) NULL,
    [Description]                           NVARCHAR (MAX) NULL,
    [Priority]                              NVARCHAR (MAX) NULL,
    [TimeForStartDateInMinutes]             BIGINT         NULL,
    [TimeForDueDateInMinutes]               BIGINT         NULL,
    [TaskObjectType]                        NVARCHAR (MAX) NULL,
    [OpenTaskMicroflowCompleteName]         NVARCHAR (MAX) NULL,
    [OwnerType]                             NVARCHAR (MAX) NULL,
    [SetOwnerMicroflowCompleteName]         NVARCHAR (MAX) NULL,
    [IsAdHocTask]                           BIT            NULL,
    [IsAlertTask]                           BIT            NULL,
    [TaskTemplate_ProcessDefinitionVersion] BIGINT         NULL,
    [TaskCondition_TaskTemplate]            BIGINT         NULL,
    [TaskTemplate_MxObjectType]             BIGINT         NULL,
    [TaskTemplate_Microflows_OpenTask]      BIGINT         NULL,
    [TaskTemplate_Microflows_SetOwner]      BIGINT         NULL,
    [TaskTemplate_TemplateType]             BIGINT         NULL
);

