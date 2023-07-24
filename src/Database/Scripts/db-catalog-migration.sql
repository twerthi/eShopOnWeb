IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;
GO

BEGIN TRANSACTION;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201202111507_InitialModel')
BEGIN
    CREATE SEQUENCE [catalog_brand_hilo] START WITH 1 INCREMENT BY 10 NO MINVALUE NO MAXVALUE NO CYCLE;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201202111507_InitialModel')
BEGIN
    CREATE SEQUENCE [catalog_hilo] START WITH 1 INCREMENT BY 10 NO MINVALUE NO MAXVALUE NO CYCLE;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201202111507_InitialModel')
BEGIN
    CREATE SEQUENCE [catalog_type_hilo] START WITH 1 INCREMENT BY 10 NO MINVALUE NO MAXVALUE NO CYCLE;
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201202111507_InitialModel')
BEGIN
    CREATE TABLE [Baskets] (
        [Id] int NOT NULL IDENTITY,
        [BuyerId] nvarchar(40) NOT NULL,
        CONSTRAINT [PK_Baskets] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201202111507_InitialModel')
BEGIN
    CREATE TABLE [CatalogBrands] (
        [Id] int NOT NULL,
        [Brand] nvarchar(100) NOT NULL,
        CONSTRAINT [PK_CatalogBrands] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201202111507_InitialModel')
BEGIN
    CREATE TABLE [CatalogTypes] (
        [Id] int NOT NULL,
        [Type] nvarchar(100) NOT NULL,
        CONSTRAINT [PK_CatalogTypes] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201202111507_InitialModel')
BEGIN
    CREATE TABLE [Orders] (
        [Id] int NOT NULL IDENTITY,
        [BuyerId] nvarchar(max) NULL,
        [OrderDate] datetimeoffset NOT NULL,
        [ShipToAddress_Street] nvarchar(180) NULL,
        [ShipToAddress_City] nvarchar(100) NULL,
        [ShipToAddress_State] nvarchar(60) NULL,
        [ShipToAddress_Country] nvarchar(90) NULL,
        [ShipToAddress_ZipCode] nvarchar(18) NULL,
        CONSTRAINT [PK_Orders] PRIMARY KEY ([Id])
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201202111507_InitialModel')
BEGIN
    CREATE TABLE [BasketItems] (
        [Id] int NOT NULL IDENTITY,
        [UnitPrice] decimal(18,2) NOT NULL,
        [Quantity] int NOT NULL,
        [CatalogItemId] int NOT NULL,
        [BasketId] int NOT NULL,
        CONSTRAINT [PK_BasketItems] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_BasketItems_Baskets_BasketId] FOREIGN KEY ([BasketId]) REFERENCES [Baskets] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201202111507_InitialModel')
BEGIN
    CREATE TABLE [Catalog] (
        [Id] int NOT NULL,
        [Name] nvarchar(50) NOT NULL,
        [Description] nvarchar(max) NULL,
        [Price] decimal(18,2) NOT NULL,
        [PictureUri] nvarchar(max) NULL,
        [CatalogTypeId] int NOT NULL,
        [CatalogBrandId] int NOT NULL,
        CONSTRAINT [PK_Catalog] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_Catalog_CatalogBrands_CatalogBrandId] FOREIGN KEY ([CatalogBrandId]) REFERENCES [CatalogBrands] ([Id]) ON DELETE CASCADE,
        CONSTRAINT [FK_Catalog_CatalogTypes_CatalogTypeId] FOREIGN KEY ([CatalogTypeId]) REFERENCES [CatalogTypes] ([Id]) ON DELETE CASCADE
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201202111507_InitialModel')
BEGIN
    CREATE TABLE [OrderItems] (
        [Id] int NOT NULL IDENTITY,
        [ItemOrdered_CatalogItemId] int NULL,
        [ItemOrdered_ProductName] nvarchar(50) NULL,
        [ItemOrdered_PictureUri] nvarchar(max) NULL,
        [UnitPrice] decimal(18,2) NOT NULL,
        [Units] int NOT NULL,
        [OrderId] int NULL,
        CONSTRAINT [PK_OrderItems] PRIMARY KEY ([Id]),
        CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY ([OrderId]) REFERENCES [Orders] ([Id]) ON DELETE NO ACTION
    );
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201202111507_InitialModel')
BEGIN
    CREATE INDEX [IX_BasketItems_BasketId] ON [BasketItems] ([BasketId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201202111507_InitialModel')
BEGIN
    CREATE INDEX [IX_Catalog_CatalogBrandId] ON [Catalog] ([CatalogBrandId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201202111507_InitialModel')
BEGIN
    CREATE INDEX [IX_Catalog_CatalogTypeId] ON [Catalog] ([CatalogTypeId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201202111507_InitialModel')
BEGIN
    CREATE INDEX [IX_OrderItems_OrderId] ON [OrderItems] ([OrderId]);
END;
GO

IF NOT EXISTS(SELECT * FROM [__EFMigrationsHistory] WHERE [MigrationId] = N'20201202111507_InitialModel')
BEGIN
    INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
    VALUES (N'20201202111507_InitialModel', N'5.0.0');
END;
GO

COMMIT;
GO

