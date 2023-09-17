/**
     Author: Victor Hugo Cornejo Calderon
     Descripción: Carga de los datos de los clientes
 */


USE SPA_DIEGO;

IF EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DatosClientes]') AND type in (N'U'))
DROP TABLE [dbo].[DatosClientes];
GO

CREATE TABLE [dbo].[DatosClientes]
(
    [Id]              INT IDENTITY (1,1) PRIMARY KEY,
    [Sucursal]        NVARCHAR(255),
    [Nombre]          NVARCHAR(255),
    [Sexo]            NCHAR(1),
    [Ingresos]        DECIMAL(10, 2),
    [PromedioVisitas] INT,
    [Edad]            INT,
    [Sauna]           INT,
    [Masaje]          INT,
    [Hidro]           INT,
    [Yoga]            INT
);
Go


select min(Ingresos), max(Ingresos) from dbo.DatosClientes
where PromedioVisitas <= 4;

select min(Ingresos), max(Ingresos) from dbo.DatosClientes
where PromedioVisitas > 4;


TRUNCATE TABLE dbo.DatosClientes;
