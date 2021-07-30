
-- =============================================
-- Author:     Lars Schlaepfer,
-- Create Date: 17-09-2020
-- Description: Truncate van de Stage tabellen.
-- =============================================

CREATE PROCEDURE [dbo].[Truncate_Stage]  AS

DECLARE @sql NVARCHAR(max)=''

SELECT @sql += ' Truncate table ' + QUOTENAME(TABLE_SCHEMA) + '.'+ QUOTENAME(TABLE_NAME) + '; '

FROM   INFORMATION_SCHEMA.TABLES

WHERE  TABLE_TYPE = 'BASE TABLE' AND TABLE_SCHEMA = 'stg'

Exec Sp_executesql @sql