USE [master]
GO
/****** Object:  Database [farm]    Script Date: 04/26/2019 21:43:54 ******/
CREATE DATABASE [farm] ON  PRIMARY 
( NAME = N'farm', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\farm.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'farm_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\farm_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [farm] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [farm].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [farm] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [farm] SET ANSI_NULLS OFF
GO
ALTER DATABASE [farm] SET ANSI_PADDING OFF
GO
ALTER DATABASE [farm] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [farm] SET ARITHABORT OFF
GO
ALTER DATABASE [farm] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [farm] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [farm] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [farm] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [farm] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [farm] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [farm] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [farm] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [farm] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [farm] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [farm] SET  DISABLE_BROKER
GO
ALTER DATABASE [farm] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [farm] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [farm] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [farm] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [farm] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [farm] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [farm] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [farm] SET  READ_WRITE
GO
ALTER DATABASE [farm] SET RECOVERY SIMPLE
GO
ALTER DATABASE [farm] SET  MULTI_USER
GO
ALTER DATABASE [farm] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [farm] SET DB_CHAINING OFF
GO
USE [farm]
GO
/****** Object:  Table [dbo].[T_Seed]    Script Date: 04/26/2019 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Seed](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[seedId] [int] NOT NULL,
	[name] [nvarchar](20) NOT NULL,
	[grade] [int] NOT NULL,
	[experience] [int] NOT NULL,
	[fruitNum] [int] NOT NULL,
	[fruitPrice] [int] NOT NULL,
	[integral] [int] NOT NULL,
	[harvestNum] [int] NOT NULL,
	[type] [int] NOT NULL,
	[matureTime] [int] NOT NULL,
	[seedPrice] [int] NOT NULL,
	[land] [int] NOT NULL,
	[tip] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[T_Seed] ON
INSERT [dbo].[T_Seed] ([id], [seedId], [name], [grade], [experience], [fruitNum], [fruitPrice], [integral], [harvestNum], [type], [matureTime], [seedPrice], [land], [tip]) VALUES (4, 1, N'草莓', 5, 100, 10, 20, 20, 1, 2, 170, 10, 1, N'原产南美，中国各地及欧洲等地广为栽培。草莓营养价值高，含有多种营养物质 ，且有保健功效。')
INSERT [dbo].[T_Seed] ([id], [seedId], [name], [grade], [experience], [fruitNum], [fruitPrice], [integral], [harvestNum], [type], [matureTime], [seedPrice], [land], [tip]) VALUES (5, 13, N'葡萄', 6, 100, 10, 20, 20, 1, 2, 170, 10, 2, N'果实球形或椭圆形，直径1.5-2厘米；种子倒卵椭圆形，顶短近圆形，基部有短喙，种脐在种子背面中部呈椭圆形。')
INSERT [dbo].[T_Seed] ([id], [seedId], [name], [grade], [experience], [fruitNum], [fruitPrice], [integral], [harvestNum], [type], [matureTime], [seedPrice], [land], [tip]) VALUES (6, 14, N'西瓜', 10, 150, 8, 30, 30, 1, 3, 200, 15, 2, N'西瓜为夏季之水果，果肉味甜，能降温去暑；种子含油，可作消遣食品；果皮药用，有清热、利尿、降血压之效。')
INSERT [dbo].[T_Seed] ([id], [seedId], [name], [grade], [experience], [fruitNum], [fruitPrice], [integral], [harvestNum], [type], [matureTime], [seedPrice], [land], [tip]) VALUES (8, 30, N'星星果', 15, 300, 10, 50, 50, 1, 4, 220, 20, 3, N'结出的果实如星星一般闪亮，可以卖出很高的价钱')
INSERT [dbo].[T_Seed] ([id], [seedId], [name], [grade], [experience], [fruitNum], [fruitPrice], [integral], [harvestNum], [type], [matureTime], [seedPrice], [land], [tip]) VALUES (11, 32, N'钻石果', 20, 500, 15, 80, 80, 1, 5, 250, 30, 4, N'至高无上的植物，土豪的象征，可获得大量的经验')
INSERT [dbo].[T_Seed] ([id], [seedId], [name], [grade], [experience], [fruitNum], [fruitPrice], [integral], [harvestNum], [type], [matureTime], [seedPrice], [land], [tip]) VALUES (16, 6, N'茄子', 1, 50, 10, 10, 10, 1, 1, 140, 5, 1, N'果可供蔬食。根、茎、叶入药，为收敛剂，有利尿之效，叶也可以作麻醉剂。种子为消肿药，也用为刺激剂。')
INSERT [dbo].[T_Seed] ([id], [seedId], [name], [grade], [experience], [fruitNum], [fruitPrice], [integral], [harvestNum], [type], [matureTime], [seedPrice], [land], [tip]) VALUES (20, 933, N'白萝卜', 5, 50, 10, 10, 10, 1, 1, 140, 5, 1, N'一种常见的蔬菜，生食熟食均可，其味略带辛辣味。')
INSERT [dbo].[T_Seed] ([id], [seedId], [name], [grade], [experience], [fruitNum], [fruitPrice], [integral], [harvestNum], [type], [matureTime], [seedPrice], [land], [tip]) VALUES (15, 418, N'玉米大婶', 13, 150, 8, 30, 30, 1, 3, 200, 15, 2, N'时尚诙谐的玉米大婶，谜人的微笑')
INSERT [dbo].[T_Seed] ([id], [seedId], [name], [grade], [experience], [fruitNum], [fruitPrice], [integral], [harvestNum], [type], [matureTime], [seedPrice], [land], [tip]) VALUES (17, 7, N'番茄', 2, 50, 10, 10, 10, 1, 1, 140, 5, 1, N'番茄原产南美洲，中国南北方广泛栽培。番茄的果实营养丰富，具特殊风味。可以生食、煮食、加工番茄酱、汁或整果罐藏。')
INSERT [dbo].[T_Seed] ([id], [seedId], [name], [grade], [experience], [fruitNum], [fruitPrice], [integral], [harvestNum], [type], [matureTime], [seedPrice], [land], [tip]) VALUES (18, 8, N'豌豆', 3, 50, 10, 10, 10, 1, 1, 1, 5, 1, N'一年生攀援草本，高0.5-2米。全株绿色，光滑无毛，被粉霜。叶具小叶4-6片，托叶比小叶大，叶状，心形，下缘具细牙齿。')
INSERT [dbo].[T_Seed] ([id], [seedId], [name], [grade], [experience], [fruitNum], [fruitPrice], [integral], [harvestNum], [type], [matureTime], [seedPrice], [land], [tip]) VALUES (19, 9, N'辣椒', 4, 50, 10, 10, 10, 1, 1, 140, 5, 1, N'一年生或有限多年生植物；高40-80厘米。茎近无毛或微生柔毛，分枝稍之字形折曲。')
SET IDENTITY_INSERT [dbo].[T_Seed] OFF
/****** Object:  Table [dbo].[T_Grow]    Script Date: 04/26/2019 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Grow](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[seedId] [int] NOT NULL,
	[stage] [int] NOT NULL,
	[title] [nvarchar](10) NOT NULL,
	[growthTime] [int] NOT NULL,
	[insect] [real] NOT NULL,
	[width] [int] NOT NULL,
	[height] [int] NOT NULL,
	[offsetX] [int] NOT NULL,
	[offsetY] [int] NOT NULL,
	[state] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[T_Grow] ON
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (1, 1, 0, N'种子', 10, 1, 66, 85, 66, 216, 1)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (2, 1, 1, N'发芽', 30, 0.1, 69, 97, 64, 191, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (3, 1, 2, N'小叶子', 40, 0.2, 97, 136, 49, 174, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (4, 1, 3, N'大叶子', 60, 0.2, 135, 188, 29, 120, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (5, 1, 4, N'开花', 70, 0.2, 141, 200, 24, 98, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (6, 1, 5, N'结果', 80, 0, 140, 197, 27, 96, 3)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (7, 1, 6, N'枯草', 0, 0, 131, 191, 37, 190, 4)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (14, 13, 1, N'发芽', 20, 0.1, 90, 125, 54, 166, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (15, 13, 2, N'小叶子', 30, 0.2, 95, 120, 51, 133, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (16, 13, 3, N'大叶子', 40, 0.2, 128, 169, 46, 121, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (18, 13, 5, N'结果', 60, 0, 165, 231, 17, 89, 3)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (19, 13, 6, N'枯草', 0, 0, 128, 203, 43, 189, 4)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (20, 14, 0, N'种子', 10, 1, 64, 120, 69, 207, 1)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (22, 14, 2, N'小叶子', 30, 0.2, 105, 159, 51, 150, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (24, 14, 4, N'开花', 50, 0.2, 134, 225, 33, 142, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (25, 14, 5, N'结果', 60, 0, 162, 265, 15, 119, 3)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (28, 30, 1, N'发芽', 20, 0.2, 84, 138, 63, 185, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (30, 30, 3, N'大叶子', 40, 0.2, 107, 167, 50, 117, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (32, 30, 5, N'结果', 60, 0, 132, 201, 38, 93, 3)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (33, 30, 6, N'枯草', 0, 0, 127, 222, 45, 186, 4)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (34, 32, 0, N'种子', 10, 1, 65, 132, 66, 209, 1)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (36, 32, 2, N'小叶子', 30, 0.2, 87, 154, 58, 158, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (37, 32, 3, N'大叶子', 40, 0.2, 106, 184, 39, 145, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (39, 32, 5, N'结果', 60, 0, 130, 207, 28, 110, 3)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (42, 418, 1, N'发芽', 20, 0.2, 59, 95, 88, 164, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (44, 418, 3, N'大叶子', 40, 0.2, 90, 141, 52, 149, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (45, 418, 4, N'开花', 50, 0.2, 102, 163, 53, 98, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (47, 418, 6, N'枯草', 0, 0, 127, 174, 46, 200, 4)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (48, 6, 0, N'种子', 10, 1, 63, 123, 69, 211, 1)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (50, 6, 2, N'小叶子', 30, 0.2, 108, 183, 52, 160, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (51, 6, 3, N'大叶子', 40, 0.2, 131, 184, 36, 147, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (53, 6, 5, N'结果', 60, 0, 190, 240, -1, 108, 3)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (56, 7, 1, N'发芽', 20, 0.2, 84, 154, 72, 204, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (58, 7, 3, N'大叶子', 40, 0.2, 122, 148, 43, 144, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (59, 7, 4, N'开花', 50, 0.2, 167, 205, 26, 117, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (61, 7, 6, N'枯草', 0, 0, 132, 208, 38, 192, 4)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (62, 8, 0, N'种子', 10, 1, 64, 128, 65, 209, 1)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (64, 8, 2, N'小叶子', 30, 0.2, 98, 127, 52, 146, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (65, 8, 3, N'大叶子', 40, 0.2, 149, 183, 39, 131, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (67, 8, 5, N'结果', 60, 0, 193, 218, 23, 108, 3)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (69, 9, 0, N'种子', 10, 1, 65, 126, 62, 210, 1)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (71, 9, 2, N'小叶子', 30, 0.2, 105, 168, 40, 164, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (72, 9, 3, N'大叶子', 40, 0.2, 135, 188, 35, 127, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (74, 9, 5, N'结果', 60, 0, 157, 221, 23, 121, 3)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (77, 933, 1, N'发芽', 20, 0.2, 69, 120, 54, 186, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (78, 933, 2, N'小叶子', 30, 0.2, 79, 131, 58, 170, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (80, 933, 4, N'开花', 50, 0.2, 123, 186, 30, 93, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (82, 933, 6, N'枯草', 0, 0, 128, 167, 41, 201, 4)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (11, 13, 0, N'种子', 10, 1, 67, 115, 64, 212, 1)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (17, 13, 4, N'开花', 50, 0.2, 150, 212, 29, 108, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (21, 14, 1, N'发芽', 20, 0.2, 89, 147, 61, 168, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (23, 14, 3, N'大叶子', 40, 0.2, 123, 206, 38, 150, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (26, 14, 6, N'枯草', 0, 0, 127, 222, 45, 185, 4)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (27, 30, 0, N'种子', 10, 1, 64, 132, 69, 206, 1)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (29, 30, 2, N'小叶子', 30, 0.2, 88, 143, 58, 153, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (31, 30, 4, N'开花', 50, 0.2, 119, 182, 44, 108, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (35, 32, 1, N'发芽', 20, 0.2, 71, 137, 63, 172, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (38, 32, 4, N'开花', 50, 0.2, 125, 203, 31, 127, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (40, 32, 6, N'枯草', 0, 0, 128, 207, 41, 187, 4)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (41, 418, 0, N'种子', 10, 1, 64, 133, 67, 208, 1)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (43, 418, 2, N'小叶子', 30, 0.2, 78, 113, 59, 151, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (46, 418, 5, N'结果', 60, 0, 119, 172, 52, 90, 3)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (49, 6, 1, N'发芽', 20, 0.2, 101, 95, 52, 168, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (52, 6, 4, N'开花', 50, 0.2, 144, 199, 24, 131, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (54, 6, 6, N'枯草', 0, 0, 131, 218, 40, 186, 4)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (55, 7, 0, N'种子', 10, 1, 63, 137, 66, 209, 1)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (57, 7, 2, N'小叶子', 30, 0.2, 107, 100, 56, 163, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (60, 7, 5, N'结果', 60, 0, 187, 228, 19, 100, 3)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (63, 8, 1, N'发芽', 20, 0.2, 75, 84, 52, 172, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (66, 8, 4, N'开花', 50, 0.2, 179, 215, 27, 107, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (68, 8, 6, N'枯草', 0, 0, 134, 183, 37, 200, 4)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (70, 9, 1, N'发芽', 20, 0.2, 92, 132, 49, 180, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (73, 9, 4, N'开花', 50, 0.2, 148, 212, 27, 125, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (75, 9, 6, N'枯草', 0, 0, 130, 175, 49, 201, 4)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (76, 933, 0, N'种子', 10, 1, 65, 116, 75, 214, 1)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (79, 933, 3, N'大叶子', 40, 0.2, 108, 164, 45, 131, 2)
INSERT [dbo].[T_Grow] ([id], [seedId], [stage], [title], [growthTime], [insect], [width], [height], [offsetX], [offsetY], [state]) VALUES (81, 933, 5, N'结果', 60, 0, 183, 239, 20, 37, 3)
SET IDENTITY_INSERT [dbo].[T_Grow] OFF
/****** Object:  Table [dbo].[T_CodeType]    Script Date: 04/26/2019 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CodeType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [int] NOT NULL,
	[caption] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[T_CodeType] ON
INSERT [dbo].[T_CodeType] ([id], [code], [caption]) VALUES (1, 1, N'普通')
INSERT [dbo].[T_CodeType] ([id], [code], [caption]) VALUES (2, 2, N'高级')
INSERT [dbo].[T_CodeType] ([id], [code], [caption]) VALUES (3, 3, N'稀有')
INSERT [dbo].[T_CodeType] ([id], [code], [caption]) VALUES (4, 4, N'传说')
INSERT [dbo].[T_CodeType] ([id], [code], [caption]) VALUES (6, 5, N'史诗')
SET IDENTITY_INSERT [dbo].[T_CodeType] OFF
/****** Object:  Table [dbo].[T_CodeState]    Script Date: 04/26/2019 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CodeState](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [int] NOT NULL,
	[caption] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[T_CodeState] ON
INSERT [dbo].[T_CodeState] ([id], [code], [caption]) VALUES (1, 1, N'种子阶段')
INSERT [dbo].[T_CodeState] ([id], [code], [caption]) VALUES (2, 2, N'生长阶段')
INSERT [dbo].[T_CodeState] ([id], [code], [caption]) VALUES (3, 3, N'成熟阶段')
INSERT [dbo].[T_CodeState] ([id], [code], [caption]) VALUES (4, 4, N'枯草期')
SET IDENTITY_INSERT [dbo].[T_CodeState] OFF
/****** Object:  Table [dbo].[T_CodeLand]    Script Date: 04/26/2019 21:43:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CodeLand](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[code] [int] NOT NULL,
	[caption] [nvarchar](10) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[T_CodeLand] ON
INSERT [dbo].[T_CodeLand] ([id], [code], [caption]) VALUES (1, 1, N'黄土地')
INSERT [dbo].[T_CodeLand] ([id], [code], [caption]) VALUES (2, 2, N'黑土地')
INSERT [dbo].[T_CodeLand] ([id], [code], [caption]) VALUES (3, 3, N'红土地')
INSERT [dbo].[T_CodeLand] ([id], [code], [caption]) VALUES (4, 4, N'金土地')
SET IDENTITY_INSERT [dbo].[T_CodeLand] OFF
