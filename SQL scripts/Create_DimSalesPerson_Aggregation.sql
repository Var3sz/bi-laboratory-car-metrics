CREATE TABLE [dbo].[dwh.DimSalesperson](
	[SalespersonKey] [int] IDENTITY(1,1) NOT NULL,
	[SalespersonName] [nvarchar](500) NOT NULL,
 
 	CONSTRAINT [PK_DimSalesperson] PRIMARY KEY 
 	CONSTRAINT [UQ_DimSalesperson_Name] UNIQUE
) 