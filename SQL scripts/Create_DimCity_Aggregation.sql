CREATE TABLE [dbo].[dwh.DimCity]
(
    CityKey    INT           NOT NULL
               CONSTRAINT PK_DimCity PRIMARY KEY,

    CityName   NVARCHAR(300) NOT NULL,
    Country    NVARCHAR(300) NULL,
    Population INT           NULL,

    CONSTRAINT UQ_DimCity_City UNIQUE (CityName, Country)
);