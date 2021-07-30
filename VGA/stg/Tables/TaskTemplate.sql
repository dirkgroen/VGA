CREATE TABLE [stg].[TaskTemplate] (
    [ID]                                    BIGINT         NULL,
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

