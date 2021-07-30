
-- =============================================
-- Author:     Albert Bijvank,
-- Create Date: 25-8-2020
-- Description: Het wegschrijven van de fails.
-- =============================================
CREATE PROCEDURE [dbo].[fail] 

@Collections AS NVARCHAR(100) 

AS

INSERT INTO dbo.CollectionFails
VALUES( @Collections , GETDATE())


