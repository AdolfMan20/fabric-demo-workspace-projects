CREATE TABLE [dbo].[Territories_Target] (

	[TerritoryID] int NULL, 
	[Name] varchar(50) NOT NULL, 
	[CountryRegionCode] varchar(3) NOT NULL, 
	[Group] varchar(50) NOT NULL, 
	[ModifiedDate] datetime2(3) NULL
);