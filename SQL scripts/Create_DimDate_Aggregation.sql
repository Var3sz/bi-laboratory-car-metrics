CREATE TABLE [dbo].[dwh.DimDate](
	[DateKey] [int] IDENTITY(1,1) NOT NULL,
	[FullDate] [date] NOT NULL,
	[Year] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Day] [int] NOT NULL,
    
    CONSTRAINT [PK_DimDate] PRIMARY KEY
 ) 