CREATE TABLE [dbo].[raw.CarSales](
	[date] [nvarchar](20) NULL,
	[city] [nvarchar](1000) NULL,
	[salesperson] [nvarchar](1000) NULL,
	[customername] [nvarchar](1000) NULL,
	[carmake] [nvarchar](1000) NULL,
	[carmodel] [nvarchar](1000) NULL,
	[caryear] [int] NULL,
	[saleprice] [int] NULL,
	[commissionrate] [decimal](18, 0) NULL,
	[commisionearned] [decimal](18, 0) NULL
)