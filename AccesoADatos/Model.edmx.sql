
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 06/28/2016 22:54:07
-- Generated from EDMX file: C:\Users\Flor\Downloads\PrimerosPasosEF\AccesoADatos\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [PracticaEF];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_id_empresa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Empleado] DROP CONSTRAINT [FK_id_empresa];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Empleado]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Empleado];
GO
IF OBJECT_ID(N'[dbo].[Empresa]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Empresa];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Empleado'
CREATE TABLE [dbo].[Empleado] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(40)  NOT NULL,
    [apellido] nvarchar(40)  NOT NULL,
    [fecha_nac] datetime  NOT NULL,
    [tipo] tinyint  NOT NULL,
    [id_empresa] int  NULL
);
GO

-- Creating table 'Empresa'
CREATE TABLE [dbo].[Empresa] (
    [id] int IDENTITY(1,1) NOT NULL,
    [nombre] nvarchar(50)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'Empleado'
ALTER TABLE [dbo].[Empleado]
ADD CONSTRAINT [PK_Empleado]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'Empresa'
ALTER TABLE [dbo].[Empresa]
ADD CONSTRAINT [PK_Empresa]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [id_empresa] in table 'Empleado'
ALTER TABLE [dbo].[Empleado]
ADD CONSTRAINT [FK_id_empresa]
    FOREIGN KEY ([id_empresa])
    REFERENCES [dbo].[Empresa]
        ([id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_id_empresa'
CREATE INDEX [IX_FK_id_empresa]
ON [dbo].[Empleado]
    ([id_empresa]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------