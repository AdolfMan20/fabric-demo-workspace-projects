CREATE TABLE [dbo].[ConfigTable] (

	[ConfigID] int NULL, 
	[SourceTable] varchar(100) NULL, 
	[TargetTable] varchar(100) NULL, 
	[WatermarkColumn] varchar(100) NULL, 
	[IsIncremental] bit NULL, 
	[IsActive] bit NULL
);