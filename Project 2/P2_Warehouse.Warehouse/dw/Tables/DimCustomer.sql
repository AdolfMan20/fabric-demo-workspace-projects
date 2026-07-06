CREATE TABLE [dw].[DimCustomer] (

	[CustomerID] int NOT NULL, 
	[PersonID] int NULL, 
	[FirstName] varchar(50) NOT NULL, 
	[LastName] varchar(50) NOT NULL, 
	[EmailAddress] varchar(50) NULL, 
	[PhoneNumber] varchar(25) NULL, 
	[CreatedDate] datetime2(3) NULL, 
	[ModifiedDate] datetime2(3) NULL, 
	[DeletedDate] datetime2(3) NULL, 
	[IsDeleted] bit NULL
);