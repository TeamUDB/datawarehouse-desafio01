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
    [Sexo]            INT,
    [Ingresos]        DECIMAL(10, 2),
    [PromedioVisitas] DECIMAL(5, 2),
    [Edad]            INT,
    [Sauna]           BIT,
    [Masaje]          BIT,
    [Hidro]           BIT,
    [Yoga]            BIT
);
Go
