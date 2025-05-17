CREATE TABLE [dbo].[dwh.DimCity](
	[CityKey] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](300) NOT NULL,
	[Country] [nvarchar](300) NULL,
	[Population] [int] NULL,
    
    CONSTRAINT [PK_DimCity] PRIMARY KEY CLUSTERED
    CONSTRAINT [UQ_DimCity_City] UNIQUE NONCLUSTERED 
) 