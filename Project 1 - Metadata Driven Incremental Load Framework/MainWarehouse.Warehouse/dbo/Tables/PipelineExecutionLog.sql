CREATE TABLE [dbo].[PipelineExecutionLog] (

	[LogID] int NULL, 
	[TableName] varchar(100) NULL, 
	[ExecutionTime] datetime2(3) NULL, 
	[RowsCopied] int NULL, 
	[Status] varchar(50) NULL
);