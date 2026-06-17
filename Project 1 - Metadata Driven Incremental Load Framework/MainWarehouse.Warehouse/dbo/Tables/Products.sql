CREATE TABLE [dbo].[Products] (

	[ProductID] int NULL, 
	[ProductNumber] varchar(25) NOT NULL, 
	[Name] varchar(50) NOT NULL, 
	[Color] varchar(15) NULL, 
	[StandardCost] decimal(18,2) NOT NULL, 
	[ListPrice] decimal(18,2) NOT NULL, 
	[ModifiedDate] datetime2(3) NULL
);