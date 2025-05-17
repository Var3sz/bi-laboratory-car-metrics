/******* SSSMS-ben Script Table as CREATE TO mechanizmussal eloallitott script *******/

USE [CarMetrics]
GO

/****** Object:  Table [dbo].[dwh.FactSales]    Script Date: 2025. 05. 17. 19:56:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dwh.FactSales](
	[FactSalesKey] [int] IDENTITY(1,1) NOT NULL,
	[DateKey] [int] NOT NULL,
	[CityKey] [int] NOT NULL,
	[SalespersonKey] [int] NOT NULL,
	[CarKey] [int] NOT NULL,
	[SalePrice] [int] NOT NULL,
	[CommissionRate] [float] NOT NULL,
	[CommissionEarned] [float] NOT NULL,
	[Profit] [float] NOT NULL,
 CONSTRAINT [PK_FactSales] PRIMARY KEY CLUSTERED 
(
	[FactSalesKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[dwh.FactSales]  WITH NOCHECK ADD  CONSTRAINT [FK_FactSales_DimCar] FOREIGN KEY([CarKey])
REFERENCES [dbo].[dwh.DimCar] ([CarKey])
GO

ALTER TABLE [dbo].[dwh.FactSales] NOCHECK CONSTRAINT [FK_FactSales_DimCar]
GO

ALTER TABLE [dbo].[dwh.FactSales]  WITH NOCHECK ADD  CONSTRAINT [FK_FactSales_DimCity] FOREIGN KEY([CityKey])
REFERENCES [dbo].[dwh.DimCity] ([CityKey])
GO

ALTER TABLE [dbo].[dwh.FactSales] NOCHECK CONSTRAINT [FK_FactSales_DimCity]
GO

ALTER TABLE [dbo].[dwh.FactSales]  WITH NOCHECK ADD  CONSTRAINT [FK_FactSales_DimDate] FOREIGN KEY([DateKey])
REFERENCES [dbo].[dwh.DimDate] ([DateKey])
GO

ALTER TABLE [dbo].[dwh.FactSales] NOCHECK CONSTRAINT [FK_FactSales_DimDate]
GO

ALTER TABLE [dbo].[dwh.FactSales]  WITH NOCHECK ADD  CONSTRAINT [FK_FactSales_DimSalesperson] FOREIGN KEY([SalespersonKey])
REFERENCES [dbo].[dwh.DimSalesperson] ([SalespersonKey])
GO

ALTER TABLE [dbo].[dwh.FactSales] NOCHECK CONSTRAINT [FK_FactSales_DimSalesperson]
GO