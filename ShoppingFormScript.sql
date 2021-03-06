USE [ShoppingForm]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 17.06.2021 23:17:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 17.06.2021 23:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[WorkerId] [int] NULL,
	[Count] [int] NULL,
	[Date] [datetime] NULL,
	[TotalPrice] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 17.06.2021 23:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[Quantity] [int] NOT NULL,
	[ProductionDate] [date] NULL,
	[CategoryId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Workers]    Script Date: 17.06.2021 23:17:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Workers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fullname] [nvarchar](100) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[Password] [varchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'PCs')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Phones')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'TVs')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [ProductId], [WorkerId], [Count], [Date], [TotalPrice]) VALUES (1, 10, 7, 1, CAST(N'2021-06-12 10:23:19.800' AS DateTime), CAST(1600 AS Decimal(18, 0)))
INSERT [dbo].[Orders] ([Id], [ProductId], [WorkerId], [Count], [Date], [TotalPrice]) VALUES (2, 4, 7, 1, CAST(N'2021-06-12 10:23:31.617' AS DateTime), CAST(2500 AS Decimal(18, 0)))
INSERT [dbo].[Orders] ([Id], [ProductId], [WorkerId], [Count], [Date], [TotalPrice]) VALUES (3, 7, 7, 3, CAST(N'2021-06-12 10:23:38.967' AS DateTime), CAST(2400 AS Decimal(18, 0)))
INSERT [dbo].[Orders] ([Id], [ProductId], [WorkerId], [Count], [Date], [TotalPrice]) VALUES (4, 1, 7, 2, CAST(N'2021-06-15 12:51:57.540' AS DateTime), CAST(2800 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [ProductionDate], [CategoryId]) VALUES (1, N'PC 1', CAST(1400 AS Decimal(18, 0)), 20, CAST(N'2020-03-08' AS Date), 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [ProductionDate], [CategoryId]) VALUES (2, N'PC 2', CAST(1700 AS Decimal(18, 0)), 12, CAST(N'2020-05-01' AS Date), 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [ProductionDate], [CategoryId]) VALUES (3, N'PC 3', CAST(2200 AS Decimal(18, 0)), 6, CAST(N'2021-01-04' AS Date), 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [ProductionDate], [CategoryId]) VALUES (4, N'PC 4', CAST(2500 AS Decimal(18, 0)), 4, CAST(N'2020-10-12' AS Date), 1)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [ProductionDate], [CategoryId]) VALUES (5, N'Phone 1', CAST(400 AS Decimal(18, 0)), 40, CAST(N'2020-04-04' AS Date), 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [ProductionDate], [CategoryId]) VALUES (6, N'Phone 2', CAST(700 AS Decimal(18, 0)), 32, CAST(N'2021-07-11' AS Date), 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [ProductionDate], [CategoryId]) VALUES (7, N'Phone 3', CAST(800 AS Decimal(18, 0)), 27, CAST(N'2021-06-07' AS Date), 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [ProductionDate], [CategoryId]) VALUES (8, N'Phone 4', CAST(1200 AS Decimal(18, 0)), 18, CAST(N'2021-06-09' AS Date), 2)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [ProductionDate], [CategoryId]) VALUES (9, N'TV 1', CAST(1300 AS Decimal(18, 0)), 15, CAST(N'2020-03-03' AS Date), 3)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [ProductionDate], [CategoryId]) VALUES (10, N'TV 2', CAST(1600 AS Decimal(18, 0)), 11, CAST(N'2020-02-12' AS Date), 3)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [ProductionDate], [CategoryId]) VALUES (11, N'TV 3', CAST(1800 AS Decimal(18, 0)), 8, CAST(N'2021-01-10' AS Date), 3)
INSERT [dbo].[Products] ([Id], [Name], [Price], [Quantity], [ProductionDate], [CategoryId]) VALUES (12, N'TV 4', CAST(2200 AS Decimal(18, 0)), 6, CAST(N'2021-03-08' AS Date), 3)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[Workers] ON 

INSERT [dbo].[Workers] ([Id], [Fullname], [Email], [Password]) VALUES (6, N'Ibrahim', N'ibrahim@gmail.com', N'????n???:b?????]Z?????:?l?')
INSERT [dbo].[Workers] ([Id], [Fullname], [Email], [Password]) VALUES (7, N'Emin', N'emin@gmail.com', N'123456')
INSERT [dbo].[Workers] ([Id], [Fullname], [Email], [Password]) VALUES (8, N'Worker1', N'worker1@gmail.com', N'????n???:b?????]Z?????:?l?')
SET IDENTITY_INSERT [dbo].[Workers] OFF
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([WorkerId])
REFERENCES [dbo].[Workers] ([Id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
