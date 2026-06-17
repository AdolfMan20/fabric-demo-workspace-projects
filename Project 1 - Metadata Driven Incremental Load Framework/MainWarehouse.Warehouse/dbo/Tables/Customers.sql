CREATE TABLE [dbo].[Customers] (

	[CustomerID] int NULL, 
	[FirstName] varchar(50) NOT NULL, 
	[LastName] varchar(50) NOT NULL, 
	[EmailAddress] varchar(100) NULL, 
	[TerritoryID] int NULL, 
	[ModifiedDate] datetime2(3) NULL
);