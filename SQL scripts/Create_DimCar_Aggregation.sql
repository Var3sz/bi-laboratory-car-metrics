CREATE TABLE [dbo].[dwh.DimCar]
(
    CarKey     INT           NOT NULL
               CONSTRAINT PK_DimCar PRIMARY KEY,

    CarMake    NVARCHAR(200)  NOT NULL,
    CarModel   NVARCHAR(200)  NOT NULL,
    CarYear    INT      NOT NULL,

    CONSTRAINT UQ_DimCar_ModelYear UNIQUE (CarMake, CarModel, CarYear)
);