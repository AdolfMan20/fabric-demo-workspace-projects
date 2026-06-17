CREATE TABLE [dbo].[Orders_Target] (

	[SalesOrderID] int NULL, 
	[CustomerID] int NULL, 
	[TerritoryID] int NULL, 
	[OrderDate] datetime2(3) NOT NULL, 
	[ShipDate] datetime2(3) NULL, 
	[SubTotal] decimal(18,2) NOT NULL, 
	[TaxAmt] decimal(18,2) NOT NULL, 
	[Freight] decimal(18,2) NOT NULL, 
	[TotalDue] decimal(18,2) NULL, 
	[ModifiedDate] datetime2(3) NULL
);