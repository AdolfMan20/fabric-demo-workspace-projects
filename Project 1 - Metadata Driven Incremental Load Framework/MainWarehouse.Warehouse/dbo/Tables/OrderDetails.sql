CREATE TABLE [dbo].[OrderDetails] (

	[SalesOrderID] int NULL, 
	[SalesOrderDetailID] int NULL, 
	[ProductID] int NULL, 
	[OrderQty] smallint NOT NULL, 
	[UnitPrice] decimal(18,2) NOT NULL, 
	[LineTotal] decimal(18,2) NULL, 
	[ModifiedDate] datetime2(3) NULL
);