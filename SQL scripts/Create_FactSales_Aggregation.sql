USE CarMetrics;
GO

CREATE TABLE dwh.FactSales
(
    FactSalesKey     INT IDENTITY(1,1) NOT NULL 
                       CONSTRAINT PK_FactSales PRIMARY KEY,

    DateKey          INT NOT NULL
                       CONSTRAINT FK_FactSales_DimDate
                           FOREIGN KEY (DateKey)
                           REFERENCES dwh.DimDate(DateKey),

    CityKey          INT NOT NULL
                       CONSTRAINT FK_FactSales_DimCity
                           FOREIGN KEY (CityKey)
                           REFERENCES dwh.DimCity(CityKey),

    SalespersonKey   INT NOT NULL
                       CONSTRAINT FK_FactSales_DimSalesperson
                           FOREIGN KEY (SalespersonKey)
                           REFERENCES dwh.DimSalesperson(SalespersonKey),

    CarKey           INT NOT NULL
                       CONSTRAINT FK_FactSales_DimCar
                           FOREIGN KEY (CarKey)
                           REFERENCES dwh.DimCar(CarKey),

    SalePrice        INT NOT NULL,
    CommissionRate   FLOAT NOT NULL,
    CommissionEarned FLOAT NOT NULL,
    Profit           FLOAT NOT NULL,
);
GO
