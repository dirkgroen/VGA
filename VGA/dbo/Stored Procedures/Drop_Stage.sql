
-- =============================================
-- Author:     Albert Bijvank,
-- Create Date: 25-8-2020
-- Description: Droppen van de Stage tabellen.
-- =============================================

CREATE PROCEDURE [dbo].[Drop_Stage]  AS

DECLARE @sql NVARCHAR(max)=''SELECT @sql += ' Drop table ' + QUOTENAME(TABLE_SCHEMA) + '.'+ QUOTENAME(TABLE_NAME) + '; '

FROM   INFORMATION_SCHEMA.TABLES

WHERE  TABLE_TYPE = 'BASE TABLE' AND TABLE_SCHEMA = 'stg'

Exec Sp_executesql @sql


