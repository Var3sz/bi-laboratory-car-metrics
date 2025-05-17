CREATE TABLE [dbo].[dwh.DimCar](
	[CarKey] [int] IDENTITY(1,1) NOT NULL,
	[CarMake] [nvarchar](200) NOT NULL,
	[CarModel] [nvarchar](200) NOT NULL,
	[CarYear] [int] NOT NULL,

    CONSTRAINT [PK_DimCar] PRIMARY KEY
    CONSTRAINT [UQ_DimCar_ModelYear] UNIQUE 
)