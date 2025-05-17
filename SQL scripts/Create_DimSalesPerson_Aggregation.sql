CREATE TABLE [dbo].[dwh.DimSalesperson](
	[SalespersonKey]    INT           NOT NULL
        CONSTRAINT PK_DimSalesperson PRIMARY KEY,
	[SalespersonName] NVARCHAR(500) NOT NULL,
)
