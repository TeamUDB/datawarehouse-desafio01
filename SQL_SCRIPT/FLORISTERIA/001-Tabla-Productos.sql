/**
     Author: Victor Hugo Cornejo Calderon
     Descripción: Carga de los datos de los clientes
 */


USE FIRIOLLA;

IF EXISTS (SELECT *
           FROM sys.objects
           WHERE object_id = OBJECT_ID(N'[dbo].[Productos]')
             AND type in (N'U'))
    DROP TABLE [dbo].[Ventas];
GO

CREATE TABLE [dbo].[Ventas]
(
    [Id]               INT IDENTITY (1,1) PRIMARY KEY,
    [Sucursal]         NVARCHAR(255),
    [Nombre]           NVARCHAR(255),
    [Rosas]            INT,
    [Claveles]         INT,
    [Macetas]          INT,
    [Tierra]           INT,
    [Girasoles]        INT,
    [Hortensia]        INT,
    [Globos]           INT,
    [Tarjetas]         INT,
    [Flores_Orquidias] INT,
    [Carmesi]          INT,
    [Lirios]           INT,
    [Aurora]           INT,
    [Tulipanes]        INT,
    [Liston]           INT,
);
Go
