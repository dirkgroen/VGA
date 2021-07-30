

CREATE VIEW [dwh].[vw_DIM_Klant]
AS

SELECT 
AK_Klant			= -1
,BK_Klant			= NULL
,KlantNaam			= CAST('Onbekend' as nvarchar(350))
,Adres				= CAST('Onbekend' as nvarchar(75))
,Plaats				= CAST('Onbekend' as nvarchar(75))
,Postcode			= CAST('Onbekend' as nvarchar(10))
,Telefoonnummer		= CAST('Onbekend' as nvarchar(15))
,Email				= CAST('Onbekend' as nvarchar(50))
,Website			= CAST('Onbekend' as nvarchar(250))
,IsBuitenland		= CAST(NULL as bit)
,LandBuitenland		= CAST('Onbekend' as nvarchar(65))
,PostcodeBuitenland	= CAST('Onbekend' as nvarchar(10))

UNION ALL

SELECT 
AK_Klant			= [ID]
,BK_Klant			= ISNULL([ID], '-1')
,KlantNaam			= CAST(Naam as nvarchar(350))
,Adres				= CAST(Adres as nvarchar(75))
,Plaats				= CAST(UPPER(LEFT(Plaats,1))+LOWER(SUBSTRING(Plaats,2,LEN(Plaats))) as nvarchar(75))
,Postcode			= CAST(Postcode as nvarchar(10))
,Telefoonnummer		= CAST(Telefoonnummer as nvarchar(15))
,Email				= CAST(Email as nvarchar(50))
,Website			= CAST(Website as nvarchar(250))
,IsBuitenland		= CAST(IsBuitenland as bit)
,LandBuitenland		= CAST(LandBuitenland as nvarchar(65))
,PostcodeBuitenland	= CAST(PostcodeBuitenland as nvarchar(10))
FROM stg.Klant
