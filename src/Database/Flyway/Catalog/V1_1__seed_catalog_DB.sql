INSERT [dbo].[CatalogBrands] ([Id], [Brand]) VALUES (1, N'Azure')
GO
INSERT [dbo].[CatalogBrands] ([Id], [Brand]) VALUES (2, N'.NET')
GO
INSERT [dbo].[CatalogBrands] ([Id], [Brand]) VALUES (3, N'Visual Studio')
GO
INSERT [dbo].[CatalogBrands] ([Id], [Brand]) VALUES (4, N'SQL Server')
GO
INSERT [dbo].[CatalogBrands] ([Id], [Brand]) VALUES (5, N'Other')
GO
INSERT [dbo].[CatalogTypes] ([Id], [Type]) VALUES (1, N'Mug')
GO
INSERT [dbo].[CatalogTypes] ([Id], [Type]) VALUES (2, N'T-Shirt')
GO
INSERT [dbo].[CatalogTypes] ([Id], [Type]) VALUES (3, N'Sheet')
GO
INSERT [dbo].[CatalogTypes] ([Id], [Type]) VALUES (4, N'USB Memory Stick')
GO
INSERT [dbo].[Catalog] ([Id], [Name], [Description], [Price], [PictureUri], [CatalogTypeId], [CatalogBrandId]) VALUES (1, N'.NET Bot Black Sweatshirt', N'.NET Bot Black Sweatshirt', CAST(19.50 AS Decimal(18, 2)), N'http://catalogbaseurltobereplaced/images/products/1.png', 2, 2)
GO
INSERT [dbo].[Catalog] ([Id], [Name], [Description], [Price], [PictureUri], [CatalogTypeId], [CatalogBrandId]) VALUES (2, N'.NET Black & White Mug', N'.NET Black & White Mug', CAST(8.50 AS Decimal(18, 2)), N'http://catalogbaseurltobereplaced/images/products/2.png', 1, 2)
GO
INSERT [dbo].[Catalog] ([Id], [Name], [Description], [Price], [PictureUri], [CatalogTypeId], [CatalogBrandId]) VALUES (3, N'Prism White T-Shirt', N'Prism White T-Shirt', CAST(12.00 AS Decimal(18, 2)), N'http://catalogbaseurltobereplaced/images/products/3.png', 2, 5)
GO
INSERT [dbo].[Catalog] ([Id], [Name], [Description], [Price], [PictureUri], [CatalogTypeId], [CatalogBrandId]) VALUES (4, N'.NET Foundation Sweatshirt', N'.NET Foundation Sweatshirt', CAST(12.00 AS Decimal(18, 2)), N'http://catalogbaseurltobereplaced/images/products/4.png', 2, 2)
GO
INSERT [dbo].[Catalog] ([Id], [Name], [Description], [Price], [PictureUri], [CatalogTypeId], [CatalogBrandId]) VALUES (5, N'Roslyn Red Sheet', N'Roslyn Red Sheet', CAST(8.50 AS Decimal(18, 2)), N'http://catalogbaseurltobereplaced/images/products/5.png', 3, 5)
GO
INSERT [dbo].[Catalog] ([Id], [Name], [Description], [Price], [PictureUri], [CatalogTypeId], [CatalogBrandId]) VALUES (6, N'.NET Blue Sweatshirt', N'.NET Blue Sweatshirt', CAST(12.00 AS Decimal(18, 2)), N'http://catalogbaseurltobereplaced/images/products/6.png', 2, 2)
GO
INSERT [dbo].[Catalog] ([Id], [Name], [Description], [Price], [PictureUri], [CatalogTypeId], [CatalogBrandId]) VALUES (7, N'Roslyn Red T-Shirt', N'Roslyn Red T-Shirt', CAST(12.00 AS Decimal(18, 2)), N'http://catalogbaseurltobereplaced/images/products/7.png', 2, 5)
GO
INSERT [dbo].[Catalog] ([Id], [Name], [Description], [Price], [PictureUri], [CatalogTypeId], [CatalogBrandId]) VALUES (8, N'Kudu Purple Sweatshirt', N'Kudu Purple Sweatshirt', CAST(8.50 AS Decimal(18, 2)), N'http://catalogbaseurltobereplaced/images/products/8.png', 2, 5)
GO
INSERT [dbo].[Catalog] ([Id], [Name], [Description], [Price], [PictureUri], [CatalogTypeId], [CatalogBrandId]) VALUES (9, N'Cup<T> White Mug', N'Cup<T> White Mug', CAST(12.00 AS Decimal(18, 2)), N'http://catalogbaseurltobereplaced/images/products/9.png', 1, 5)
GO
INSERT [dbo].[Catalog] ([Id], [Name], [Description], [Price], [PictureUri], [CatalogTypeId], [CatalogBrandId]) VALUES (10, N'.NET Foundation Sheet', N'.NET Foundation Sheet', CAST(12.00 AS Decimal(18, 2)), N'http://catalogbaseurltobereplaced/images/products/10.png', 3, 2)
GO
INSERT [dbo].[Catalog] ([Id], [Name], [Description], [Price], [PictureUri], [CatalogTypeId], [CatalogBrandId]) VALUES (11, N'Cup<T> Sheet', N'Cup<T> Sheet', CAST(8.50 AS Decimal(18, 2)), N'http://catalogbaseurltobereplaced/images/products/11.png', 3, 2)
GO
INSERT [dbo].[Catalog] ([Id], [Name], [Description], [Price], [PictureUri], [CatalogTypeId], [CatalogBrandId]) VALUES (12, N'Prism White TShirt', N'Prism White TShirt', CAST(12.00 AS Decimal(18, 2)), N'http://catalogbaseurltobereplaced/images/products/12.png', 2, 5)
GO
