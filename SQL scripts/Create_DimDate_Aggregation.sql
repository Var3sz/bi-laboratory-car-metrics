CREATE TABLE [dbo].[dwh.DimDate](
    [DateKey]    INT           NOT NULL
        CONSTRAINT PK_DimDate PRIMARY KEY,
    [FullDate]   DATE          NOT NULL UNIQUE,
    [Year]     TINYINT       NOT NULL,
    [Month]    TINYINT       NOT NULL,
    [MonthName]  NVARCHAR(20)  NOT NULL,
    [Day]      TINYINT       NOT NULL,
)