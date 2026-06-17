CREATE PROCEDURE usp_write_watermark @LastModifiedTime datetime, @TableName VARCHAR(50)
AS

BEGIN

UPDATE watermark_table
SET [WatermarkValue] = @LastModifiedTime
WHERE [TableName] = @TableName

END