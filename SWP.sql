USE [master]
GO
/****** Object:  Database [SWP391_1]    Script Date: 3/24/2023 2:56:22 PM ******/
CREATE DATABASE [SWP391_1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SWP391_1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SWP391_1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SWP391_1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SWP391_1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SWP391_1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SWP391_1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SWP391_1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SWP391_1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SWP391_1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SWP391_1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SWP391_1] SET ARITHABORT OFF 
GO
ALTER DATABASE [SWP391_1] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SWP391_1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SWP391_1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SWP391_1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SWP391_1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SWP391_1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SWP391_1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SWP391_1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SWP391_1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SWP391_1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SWP391_1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SWP391_1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SWP391_1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SWP391_1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SWP391_1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SWP391_1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SWP391_1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SWP391_1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SWP391_1] SET  MULTI_USER 
GO
ALTER DATABASE [SWP391_1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SWP391_1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SWP391_1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SWP391_1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SWP391_1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SWP391_1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SWP391_1] SET QUERY_STORE = OFF
GO
USE [SWP391_1]
GO
/****** Object:  Table [dbo].[Address_Detail]    Script Date: 3/24/2023 2:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address_Detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [int] NOT NULL,
	[city] [nvarchar](1000) NULL,
	[district] [nvarchar](1000) NULL,
	[ward] [nvarchar](1000) NULL,
	[detail] [nvarchar](1000) NULL,
	[is_default] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 3/24/2023 2:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discounts]    Script Date: 3/24/2023 2:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[value] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedBacks]    Script Date: 3/24/2023 2:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBacks](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[product_id] [int] NULL,
	[firstname] [nvarchar](30) NULL,
	[lastname] [nvarchar](30) NULL,
	[email] [nvarchar](250) NULL,
	[phone_number] [nvarchar](20) NULL,
	[note] [nvarchar](1000) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[rating] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Galeries]    Script Date: 3/24/2023 2:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Galeries](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NULL,
	[thumbnail] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genders]    Script Date: 3/24/2023 2:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 3/24/2023 2:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[size_id] [int] NULL,
	[price] [int] NULL,
	[num] [int] NULL,
	[total_money_in] [int] NULL,
	[total_money_out] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/24/2023 2:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[firstname] [nvarchar](30) NULL,
	[lastname] [nvarchar](30) NULL,
	[email] [nvarchar](150) NULL,
	[phone_number] [nvarchar](20) NULL,
	[address_id] [int] NULL,
	[note] [nvarchar](1000) NULL,
	[order_date] [datetime] NULL,
	[status_id] [int] NULL,
	[total_money] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 3/24/2023 2:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[title] [nvarchar](250) NULL,
	[gender_id] [int] NULL,
	[discount_id] [int] NULL,
	[thumbnail] [nvarchar](500) NULL,
	[description] [nvarchar](1500) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 3/24/2023 2:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SizeProduct]    Script Date: 3/24/2023 2:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SizeProduct](
	[pid] [int] NOT NULL,
	[sid] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[price_in] [int] NULL,
	[price_out] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 3/24/2023 2:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NULL,
	[value] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 3/24/2023 2:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/24/2023 2:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[loginType] [int] NULL,
	[role_id] [int] NULL,
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](32) NULL,
	[email] [nvarchar](150) NULL,
	[phone_number] [nvarchar](15) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[deleted] [int] NULL,
	[avatar] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address_Detail] ON 

INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (10, 14, N'Hà Nội', N'Thạch Thất', N'Thạch Hòa', N'Thôn 3', 1)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (11, 15, N'Hà Nội', N'Thạch Thất', N'Tân Xã', N'Thôn 3', 1)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (13, 16, N'Bắc Giang', N'Tân Tiến', N'Xóm Can', N'123', 1)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (14, 17, N'Hà Nội', N'Thạch Thất', N'Tân Xã', N'Thôn 7 ', 1)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (15, 18, N'Hà Nội', N'Thạch Thất', N'Bình Yên', N'Phúc Tiến', 1)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (17, 20, N'Hà Nội', N'Thạch Thất', N'Thạch Hòa', N'Thôn 1 ', 1)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (18, 21, N'Hà Nội', N'Thạch Thất', N'Thạch Hòa', N'Thôn 1', 1)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (19, 22, N'Hà Nội', N'Thạch Thất', N'Thạch Hòa', N'Thôn 1', 1)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (20, 23, N'Hà Nội', N'Thạch Thất', N'Thạch Hòa', N'Thôn 1', 1)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (24, 17, N'Vĩnh Phúc', N'Phúc Yên', N'Xuân Hòa', N'tổ 7', 0)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (25, 14, N'Thanh Hóa', N'Nga Sơn', N'Nga Tiến ', N'Nhà Phương Linh', 0)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (26, 24, N'Hà Nội ', N'Thạch Thất', N'Tan Xa', N'', 1)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (27, 25, N'Hà Nội ', N'Thach That', N'Tan Xa', N'', 1)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (28, 14, N'Hà Nội ', N'Nga Sơn', N'Nga Tiến ', N'', 0)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (30, 19, N'Hà Nội ', N'Nga Sơn', N'Nga Tiến ', N'abc', 0)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (31, 19, N'Hà Nội ', N'Nga Sơn', N'Nga Tiến ', N'thon 3', 1)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (32, 19, N'Hà Nội ', N'Nga Sơn', N'Nga Tiến ', N'thon 3', 0)
INSERT [dbo].[Address_Detail] ([id], [uid], [city], [district], [ward], [detail], [is_default]) VALUES (33, 27, N'Hà Nội ', N'uiuiuiiuiu', N'Nga Tiến ', N'ha noi', 1)
SET IDENTITY_INSERT [dbo].[Address_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([id], [name]) VALUES (1, N'Bộ sưu tập cảm xúc')
INSERT [dbo].[Categories] ([id], [name]) VALUES (2, N'Bộ sưu tập mùa hè ')
INSERT [dbo].[Categories] ([id], [name]) VALUES (3, N'Morra x JVevermind ')
INSERT [dbo].[Categories] ([id], [name]) VALUES (4, N'Bộ sưu tập mùa thu')
INSERT [dbo].[Categories] ([id], [name]) VALUES (5, N'Bộ sưu tập mùa đông')
INSERT [dbo].[Categories] ([id], [name]) VALUES (6, N'Bộ sưu tập mùa xuân')
INSERT [dbo].[Categories] ([id], [name]) VALUES (7, N'Tinh tế và sang trọng')
INSERT [dbo].[Categories] ([id], [name]) VALUES (8, N'Nến thơm nguyên tố')
INSERT [dbo].[Categories] ([id], [name]) VALUES (10, N'Sữa tắm nước hoa')
INSERT [dbo].[Categories] ([id], [name]) VALUES (11, N'Dưỡng thể')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Discounts] ON 

INSERT [dbo].[Discounts] ([id], [value]) VALUES (1, 0)
INSERT [dbo].[Discounts] ([id], [value]) VALUES (2, 10)
INSERT [dbo].[Discounts] ([id], [value]) VALUES (3, 20)
INSERT [dbo].[Discounts] ([id], [value]) VALUES (4, 50)
SET IDENTITY_INSERT [dbo].[Discounts] OFF
GO
SET IDENTITY_INSERT [dbo].[FeedBacks] ON 

INSERT [dbo].[FeedBacks] ([id], [user_id], [product_id], [firstname], [lastname], [email], [phone_number], [note], [created_at], [updated_at], [rating]) VALUES (1, 14, 24, NULL, NULL, NULL, NULL, N'thơm lắmmmmm', CAST(N'2023-03-23T00:00:00.000' AS DateTime), NULL, 5)
INSERT [dbo].[FeedBacks] ([id], [user_id], [product_id], [firstname], [lastname], [email], [phone_number], [note], [created_at], [updated_at], [rating]) VALUES (2, 25, 24, NULL, NULL, NULL, NULL, N'chả thơm j hết', CAST(N'2023-03-24T00:00:00.000' AS DateTime), NULL, 5)
INSERT [dbo].[FeedBacks] ([id], [user_id], [product_id], [firstname], [lastname], [email], [phone_number], [note], [created_at], [updated_at], [rating]) VALUES (3, 19, 17, NULL, NULL, NULL, NULL, N'Sản phẩm của shop này quá tuyệt vời', CAST(N'2023-03-24T00:00:00.000' AS DateTime), NULL, 5)
INSERT [dbo].[FeedBacks] ([id], [user_id], [product_id], [firstname], [lastname], [email], [phone_number], [note], [created_at], [updated_at], [rating]) VALUES (4, 20, 17, NULL, NULL, NULL, NULL, N'sẽ mua ở đây suốt đời', CAST(N'2023-03-24T00:00:00.000' AS DateTime), NULL, 5)
INSERT [dbo].[FeedBacks] ([id], [user_id], [product_id], [firstname], [lastname], [email], [phone_number], [note], [created_at], [updated_at], [rating]) VALUES (5, 21, 17, NULL, NULL, NULL, NULL, N'Sản phẩm tạm chấp nhận được', CAST(N'2023-03-24T00:00:00.000' AS DateTime), NULL, 4)
INSERT [dbo].[FeedBacks] ([id], [user_id], [product_id], [firstname], [lastname], [email], [phone_number], [note], [created_at], [updated_at], [rating]) VALUES (6, 25, 17, NULL, NULL, NULL, NULL, N'hehe', CAST(N'2023-03-24T00:00:00.000' AS DateTime), NULL, 2)
INSERT [dbo].[FeedBacks] ([id], [user_id], [product_id], [firstname], [lastname], [email], [phone_number], [note], [created_at], [updated_at], [rating]) VALUES (7, 19, 17, NULL, NULL, NULL, NULL, N'Giá rẻ, tốt', CAST(N'2023-03-24T00:00:00.000' AS DateTime), NULL, 5)
INSERT [dbo].[FeedBacks] ([id], [user_id], [product_id], [firstname], [lastname], [email], [phone_number], [note], [created_at], [updated_at], [rating]) VALUES (8, 19, 17, NULL, NULL, NULL, NULL, N'oik', CAST(N'2023-03-24T00:00:00.000' AS DateTime), NULL, 4)
SET IDENTITY_INSERT [dbo].[FeedBacks] OFF
GO
SET IDENTITY_INSERT [dbo].[Galeries] ON 

INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (1, 17, N'images/Morra2AM_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (7, 17, N'images/Morra2AM_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (8, 17, N'images/Morra2AM_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (9, 17, N'images/Morra2AM_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (10, 17, N'images/Morra2AM_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (11, 18, N'images/MorraBreakfastInTheBed_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (12, 18, N'images/MorraBreakfastInTheBed_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (13, 18, N'images/MorraBreakfastInTheBed_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (14, 18, N'images/MorraBreakfastInTheBed_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (15, 18, N'images/MorraBreakfastInTheBed_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (16, 19, N'images/MorraChillWithTheBlue_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (17, 19, N'images/MorraChillWithTheBlue_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (18, 19, N'images/MorraChillWithTheBlue_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (19, 19, N'images/MorraChillWithTheBlue_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (20, 19, N'images/MorraChillWithTheBlue_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (21, 19, N'images/MorraChillWithTheBlue_6.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (22, 20, N'images/MorraHarmonyOfTheSea_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (23, 20, N'images/MorraHarmonyOfTheSea_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (24, 20, N'images/MorraHarmonyOfTheSea_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (25, 20, N'images/MorraHarmonyOfTheSea_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (26, 20, N'images/MorraHarmonyOfTheSea_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (27, 20, N'images/MorraHarmonyOfTheSea_6.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (28, 21, N'images/MorraLoveAtFirstScent_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (29, 21, N'images/MorraLoveAtFirstScent_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (30, 21, N'images/MorraLoveAtFirstScent_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (31, 21, N'images/MorraLoveAtFirstScent_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (32, 21, N'images/MorraLoveAtFirstScent_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (33, 22, N'images/MorraLemonCedarSummerCollection_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (34, 22, N'images/MorraLemonCedarSummerCollection_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (35, 22, N'images/MorraLemonCedarSummerCollection_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (36, 22, N'images/MorraLemonCedarSummerCollection_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (37, 22, N'images/MorraLemonCedarSummerCollection_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (38, 23, N'images/MorraRoseQuinceSummerCollection_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (39, 23, N'images/MorraRoseQuinceSummerCollection_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (40, 23, N'images/MorraRoseQuinceSummerCollection_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (41, 23, N'images/MorraRoseQuinceSummerCollection_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (42, 23, N'images/MorraRoseQuinceSummerCollection_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (43, 24, N'images/MorraSaffronSummerCollection_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (44, 24, N'images/MorraSaffronSummerCollection_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (45, 24, N'images/MorraSaffronSummerCollection_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (46, 25, N'images/MysticWeapon_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (47, 25, N'images/MysticWeapon_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (48, 25, N'images/MysticWeapon_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (49, 25, N'images/MysticWeapon_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (50, 25, N'images/MysticWeapon_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (51, 25, N'images/MysticWeapon_6.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (52, 26, N'images/PrivateDrug_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (53, 26, N'images/PrivateDrug_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (54, 26, N'images/PrivateDrug_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (55, 26, N'images/PrivateDrug_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (56, 26, N'images/PrivateDrug_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (57, 27, N'images/MorraBegamotVetiver15_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (58, 27, N'images/MorraBegamotVetiver15_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (59, 28, N'images/MorraCamelVanilla11_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (60, 28, N'images/MorraCamelVanilla11_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (61, 28, N'images/MorraCamelVanilla11_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (62, 28, N'images/MorraCamelVanilla11_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (63, 28, N'images/MorraCamelVanilla11_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (64, 29, N'images/MorraIris12_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (65, 29, N'images/MorraIris12_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (66, 30, N'images/MorraOceania12_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (67, 30, N'images/MorraOceania12_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (68, 31, N'images/MorraRoseCedar10_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (69, 31, N'images/MorraRoseCedar10_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (70, 31, N'images/MorraRoseCedar10_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (71, 31, N'images/MorraRoseCedar10_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (72, 31, N'images/MorraRoseCedar10_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (73, 32, N'images/MorraBlackcurrant10_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (74, 32, N'images/MorraBlackcurrant10_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (75, 32, N'images/MorraBlackcurrant10_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (76, 32, N'images/MorraBlackcurrant10_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (77, 32, N'images/MorraBlackcurrant10_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (78, 33, N'images/MorraLilybell07_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (79, 33, N'images/MorraLilybell07_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (80, 33, N'images/MorraLilybell07_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (81, 33, N'images/MorraLilybell07_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (82, 33, N'images/MorraLilybell07_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (83, 34, N'images/MorraMuskMallow13_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (84, 34, N'images/MorraMuskMallow13_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (85, 34, N'images/MorraMuskMallow13_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (86, 34, N'images/MorraMuskMallow13_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (87, 34, N'images/MorraMuskMallow13_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (88, 35, N'images/MorraOsmanthus16_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (89, 35, N'images/MorraOsmanthus16_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (90, 35, N'images/MorraOsmanthus16_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (91, 35, N'images/MorraOsmanthus16_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (92, 35, N'images/MorraOsmanthus16_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (93, 36, N'images/MorraSandalwood33_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (94, 36, N'images/MorraSandalwood33_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (95, 36, N'images/MorraSandalwood33_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (96, 36, N'images/MorraSandalwood33_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (97, 36, N'images/MorraSandalwood33_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (98, 37, N'images/MorraGardenia_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (99, 37, N'images/MorraGardenia_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (100, 37, N'images/MorraGardenia_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (101, 37, N'images/MorraGardenia_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (102, 38, N'images/MorraMandarinaAqua11ScentsofLoveCollection_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (103, 38, N'images/MorraMandarinaAqua11ScentsofLoveCollection_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (104, 38, N'images/MorraMandarinaAqua11ScentsofLoveCollection_3.jpg')
GO
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (105, 38, N'images/MorraMandarinaAqua11ScentsofLoveCollection_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (106, 38, N'images/MorraMandarinaAqua11ScentsofLoveCollection_5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (107, 39, N'images/MorraPeonyCedar18ScentsofLovecollection_1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (108, 39, N'images/MorraPeonyCedar18ScentsofLovecollection_2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (109, 39, N'images/MorraPeonyCedar18ScentsofLovecollection_3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (110, 39, N'images/MorraPeonyCedar18ScentsofLovecollection_4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (112, 40, N'images/amber1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (113, 40, N'images/amber2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (114, 40, N'images/amber3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (115, 40, N'images/amber4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (116, 40, N'images/amber5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (117, 41, N'images/baseno1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (118, 41, N'images/baseno2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (119, 41, N'images/baseno3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (120, 41, N'images/baseno4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (122, 42, N'images/lost1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (123, 42, N'images/lost2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (124, 42, N'images/lost3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (125, 42, N'images/lost4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (126, 43, N'images/hoa1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (127, 43, N'images/hoa3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (128, 44, N'images/kim1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (129, 44, N'images/kim2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (130, 44, N'images/kim3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (131, 45, N'images/moc1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (132, 45, N'images/moc2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (133, 45, N'images/moc3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (134, 46, N'images/tho1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (135, 46, N'images/tho2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (136, 46, N'images/tho3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (137, 47, N'images/thuy1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (138, 47, N'images/thuy2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (139, 47, N'images/thuy3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (140, 48, N'images/1.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (141, 48, N'images/2.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (142, 48, N'images/3.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (143, 49, N'images/4.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (144, 49, N'images/5.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (145, 49, N'images/6.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (146, 50, N'images/7.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (147, 50, N'images/8.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (148, 50, N'images/9.jpg')
INSERT [dbo].[Galeries] ([id], [product_id], [thumbnail]) VALUES (149, 43, N'images/hoa2.jpg')
SET IDENTITY_INSERT [dbo].[Galeries] OFF
GO
SET IDENTITY_INSERT [dbo].[Genders] ON 

INSERT [dbo].[Genders] ([id], [name]) VALUES (1, N'Nam')
INSERT [dbo].[Genders] ([id], [name]) VALUES (2, N'Nữ')
INSERT [dbo].[Genders] ([id], [name]) VALUES (3, N'Unisex')
SET IDENTITY_INSERT [dbo].[Genders] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Details] ON 

INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (1, 1, 24, 1, 400000, 1, 300000, 400000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (2, 2, 24, 1, 400000, 1, 300000, 400000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (3, 3, 24, 1, 400000, 1, 300000, 400000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (4, 4, 24, 1, 400000, 1, 300000, 400000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (5, 4, 18, 1, 351000, 1, 200000, 351000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (6, 5, 23, 1, 500000, 1, 200000, 500000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (7, 6, 18, 1, 351000, 1, 200000, 351000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (8, 7, 18, 1, 351000, 1, 200000, 351000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (9, 7, 27, 1, 320000, 1, 200000, 320000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (10, 8, 37, 1, 1000000, 1, 700000, 1000000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (11, 9, 27, 1, 320000, 1, 200000, 320000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (12, 10, 24, 1, 400000, 1, 300000, 400000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (13, 11, 23, 1, 500000, 3, 600000, 1500000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (14, 11, 18, 1, 351000, 3, 600000, 1053000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (15, 12, 27, 1, 320000, 1, 200000, 320000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (16, 13, 17, 1, 390000, 2, 400000, 780000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (17, 14, 17, 1, 390000, 1, 200000, 390000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (18, 15, 17, 1, 390000, 1, 200000, 390000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (19, 16, 17, 1, 390000, 1, 200000, 390000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (20, 17, 17, 1, 390000, 1, 200000, 390000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (21, 18, 27, 1, 320000, 2, 400000, 640000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (22, 19, 27, 1, 320000, 1, 200000, 320000)
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [size_id], [price], [num], [total_money_in], [total_money_out]) VALUES (23, 20, 17, 1, 390000, 1, 200000, 390000)
SET IDENTITY_INSERT [dbo].[Order_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (1, 14, N'Mai Phương', N'Linh', N'linhmphe16163922@fpt.edu.vn', N'0981418885', 10, N'', CAST(N'2023-03-23T00:00:00.000' AS DateTime), 3, 400000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (2, 14, N'Mai Phương', N'Linh', N'linhmphe16163922@fpt.edu.vn', N'0981418885', 10, N'', CAST(N'2023-03-23T00:00:00.000' AS DateTime), 3, 400000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (3, 17, N'Nguyễn Tuấn', N'Linh', N'linhnthe163817@fpt.edu.vn', N'0326983681', 14, N'', CAST(N'2023-03-23T00:00:00.000' AS DateTime), 2, 400000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (4, 14, N'Mai Phương', N'Linh', N'linhmphe16163922@fpt.edu.vn', N'0981418885', 10, N'', CAST(N'2023-03-23T00:00:00.000' AS DateTime), 3, 751000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (5, 14, N'Mai Phương', N'Linh', N'linhmphe16163922@fpt.edu.vn', N'0981418885', 10, N'', CAST(N'2023-03-23T00:00:00.000' AS DateTime), 3, 500000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (6, 14, N'Mai Phương', N'Linh', N'linhmphe16163922@fpt.edu.vn', N'0981418885', 25, N'', CAST(N'2023-03-23T00:00:00.000' AS DateTime), 4, 351000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (7, 14, N'Mai Phương', N'Linh', N'linhmphe16163922@fpt.edu.vn', N'0981418885', 25, N'', CAST(N'2023-03-23T00:00:00.000' AS DateTime), 1, 671000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (8, 14, N'Mai Phương', N'Linh', N'linhmphe16163922@fpt.edu.vn', N'0981418885', 25, N'giao hang dung han', CAST(N'2023-03-23T00:00:00.000' AS DateTime), 1, 1000000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (9, 24, N'Tuấn Linh', N'Nguyễn', N'linh123@gmail.com', N'0326983680', 26, N'', CAST(N'2023-03-24T00:00:00.000' AS DateTime), 3, 320000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (10, 25, N'Tuấn Linh', N'Nguyễn', N'linh@gmail.com', N'0326983680', 27, N'', CAST(N'2023-03-24T00:00:00.000' AS DateTime), 3, 400000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (11, 25, N'Tuấn Linh', N'Nguyễn', N'linh@gmail.com', N'0326983680', 27, N'', CAST(N'2023-03-24T00:00:00.000' AS DateTime), 1, 2553000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (12, 14, N'Mai Phương', N'Linh', N'linhmphe16163922@fpt.edu.vn', N'0981418885', 28, N'', CAST(N'2023-03-24T00:00:00.000' AS DateTime), 4, 320000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (13, 19, N'Nguyễn Văn ', N'A', N'user1@gmail.com', N'0111111111', 16, N'Giao đến cổng làng em chạy ra lấy', CAST(N'2023-03-24T00:00:00.000' AS DateTime), 3, 780000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (14, 20, N'Trần Văn ', N'B', N'user2@gmail.com', N'0222222222', 17, N'Giao trước thứ 6', CAST(N'2023-03-24T00:00:00.000' AS DateTime), 3, 390000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (15, 21, N'Nguyễn Thị ', N'C', N'user3@gmail.com', N'0333333333', 18, N'Giao hàng nhẹ tay', CAST(N'2023-03-24T00:00:00.000' AS DateTime), 3, 390000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (16, 25, N'Tuấn Linh', N'Nguyễn', N'linh@gmail.com', N'0326983680', 27, N'Mùi hương thơm ngát', CAST(N'2023-03-24T00:00:00.000' AS DateTime), 3, 390000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (17, 19, N'Nguyễn Văn ', N'A', N'user1@gmail.com', N'0111111111', 16, N'user1', CAST(N'2023-03-24T00:00:00.000' AS DateTime), 3, 390000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (18, 19, N'Nguyễn Văn ', N'A', N'user1@gmail.com', N'0111111111', 16, N'thom', CAST(N'2023-03-24T00:00:00.000' AS DateTime), 1, 640000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (19, 19, N'Nguyễn Văn ', N'A', N'user1@gmail.com', N'0111111111', 30, N'', CAST(N'2023-03-24T00:00:00.000' AS DateTime), 4, 320000)
INSERT [dbo].[Orders] ([id], [user_id], [firstname], [lastname], [email], [phone_number], [address_id], [note], [order_date], [status_id], [total_money]) VALUES (20, 19, N'Nguyễn Văn A', N'A', N'user1@gmail.com', N'0111111111', 31, N'', CAST(N'2023-03-24T00:00:00.000' AS DateTime), 3, 390000)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (17, 1, N'Nước hoa Morra 2AM', 1, 1, N'images/Morra2AM_1.jpg', N'Tầng hương đầu là những note gia vị khá mạnh.

Mùi hương nổi bật lên với note Vanilla và hương gỗ ấm áp.

Một màu hổ phách đẹp, đầy bụi bặm, ấm áp và gợi cảm.

Agarwood(Oud) mang hơi hướm của khói và một loại thuốc gây nghiện.

Mùi hương này sẽ quyện vào da bạn sau vài lần mặc, nó sẽ giống như chính mùi hương da thịt của bạn.

Những note hương thảo mộc Davana và gia vị (thuốc lá (tobaco), quế (cinnamon, nhục đậu khấu (nutmeg) là những note hương hỗ trợ cho Oud rất tốt, khiến cho mùi hương phong phú và khó đoán hơn.

Rất phù hợp cho các buổi tiệc tối, bar, hẹn hò,...', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (18, 1, N'Nước hoa Morra Breakfast In The Bed', 3, 2, N'images/MorraBreakfastInTheBed_1.jpg', N'Một bó hoa nhiều sắc màu hương thơm quyện trong hương thơm và một chút hương trái cây thanh mát.

Rất phù hợp cho quý cô duyên dáng, thanh lịch, sành điệu

Cũng phù hợp cho người phụ nữ trưởng thành nhưng muốn mặc một mùi hương trong sáng và ngây thơ (Lily of the valley & Mimosa là hai thành phần thể hiện cá tính này)

Mimosa là note hương thể hiện sắc thái ngọt nhẹ, hơi phấn và xanh.

Đây cũng là một mùi hương khơi gợi lại những ký ức thanh xuân mùa hè dưới ánh nắng lấp lánh.

Mùi hương phù hợp cho cả các buổi họp, công sở hay du lịch.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (19, 1, N'Nước hoa Morra Chill With The Blue', 2, 3, N'images/MorraChillWithTheBlue_1.jpg', N'Một mùi hương dễ mặc với sắc thái mềm mại, tươi mát, nhiều cảm xúc.

Ai cũng yêu một bó hoa huệ (tuberose) tuyệt đẹp, nhưng họ lại rất ngại mặc hương huệ bởi mùi hoa này rất sắc và mạnh. Tuy nhiên, Chill with the Blue lại rất tốt để có thể mặc mỗi ngày vì mùi hương rất mềm mại, nhẹ nhàng, một chút kem sữa (creamy & milk) được nhấn nhá bởi lactone.

Note hương Petitgrain và hương hoa cam vừa mang sắc thái của hoa lại vừa mang chút xanh, tươi mát của những mùi hương cam chanh.

Tất cả tạo nên một hợp hương rất cân bằng và không quá khó để mặc.

Mùi hương phù hợp cho hẹn hò, du lịch, các phòng tập yoga, thiền, thư giãn, và cũng có thể sử dụng cho công sở', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (20, 1, N'Nước hoa Morra Harmony Of The Sea', 3, 1, N'images/MorraHarmonyOfTheSea_1.jpg', N'Một mùi hương tươi mát và sạch sẽ với sự nổi bật của Bergamot và Seawater.

Một sự lựa chọn tuyệt vời cho thời tiết ấm, nóng hoặc mưa.

Hương dừa (Coconut) : hỗ trợ rất tốt cho các note hương trái cây ngọt ngào tạo sắc thái của vanilla và hương sữa.

Mùi hương ngọt ngào mà không bị áp đảo bởi hương gỗ mà tạo ra sự cân bằng, vừa đủ.

Một vùng biển nhiệt đới trong mùa hè nóng nực.

Mùi hương tạo cảm giác của sự sảng khoái của người vừa mới đi bơi hoặc vừa mới tắm xong.

Mùi hương rất phù hợp vào buổi sáng, du lịch hoặc đi làm đều được. Đây là mùi hương phù hợp nhất cho dòng nước hoa Unisex.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (21, 1, N'Nước hoa Morra Love At First Scent', 2, 2, N'images/MorraLoveAtFirstScent_1.jpg', N'Hương hoa tuyệt vời, đầy đặn, nữ tính, sang trọng

Mùi hương hiện đại, sang trọng, gợi cảm, giống như một nữ thần.

Tiêu hồng (Pink Pepper) : nằm ở tầng hương đầu vừa mang sắc thái cay nồng, lại vừa mang hương hoa hồng ngọt ngào dịu nhẹ. Mô tả tính cách vui tươi, táo bạo, bùng nổ.

Note hương Ozonic and Watery được thêm để hỗ trợ cho các note hương hoa thêm bừng sáng, tươi mát, tạo cảm giác yêu đời. Và cũng có thêm một chút cảm giác sạch sẽ và mềm mại của  hoa.

Đây có thể nói là một mùi hương rất quyến rũ để người đàn ông có thể nói “Yêu ngay từ mùi hương đầu tiên”

Xạ hương và Hổ Phách vừa hỗ trợ lưu hương vừa giúp cho mùi hương ấm áp hơn.

Mùi hương rất phù hợp cho các buổi tiệc tối, tiệc cưới...', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (22, 2, N'Nước Hoa Morra Lemon Cedar Summer Collection', 3, 1, N'images/MorraLemonCedarSummerCollection_1.jpg', N'Lemon Cedar được phối hợp một các tinh tế giữa các tầng hương đậm đà hương trái cây chua thanh tươi mát cùng hương hoa cỏ nồng nàn, một chút hương gỗ thoang thoảng mong manh ở nốt hương cuối để gợi về một khu vườn xanh mát, với tất cả những gì đẹp nhất của mùa hạ.  Nồng độ tinh dầu được giảm nhẹ để tạo nên cảm giác thanh thoát, giảm cảm giác nồng gắt khi dùng trong mùa hè oi ả.  ', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (23, 2, N'Nước Hoa Morra Rose Quince Summer Collection', 2, 1, N'images/MorraRoseQuinceSummerCollection_1.jpg', N'Rose quince có hương đầu chua ngọt nhẹ nhàng đi từ hương bưởi thoang thoảng và chuyển sang hương hoa nhài, hoa dạ lan hương thanh tao tinh tế, nốt cuối chuyển sang hương gỗ sang trọng và gây thư giãn một cách nhẹ nhàng. Nồng độ tinh dầu được giảm nhẹ để tạo nên cảm giác thanh thoát, giảm cảm giác nồng gắt khi dùng trong mùa hè oi ả.  ', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (24, 2, N'Nước Hoa Morra Saffron Summer Collection', 1, 3, N'images/MorraSaffronSummerCollection_1.jpg', N'Saffron có hương thơm tươi mát đầy năng lượng nhưng cũng ngọt ngào và vô cùng quyến rũ. Hương nghệ tây và quả bách xù vừa ngọt ngào vừa pha một chút cay cay, gợi nhắc đến một cocktail cho một đêm tiệc tùng bùng cháy. Hương da thuộc ở nốt giữa pha một chút hương hoa gợi nhớ đến mùi hương thân thể tự nhiên đầy quyến rũ. Hương cuối ngọt dịu dàng như một gợi ý về một cái kết đôi lứa ngọt ngào. ', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (25, 3, N'Nước hoa Mystic Weapon', 1, 1, N'images/MysticWeapon_1.jpg', N'Mùi hương Mystic Weapon là kết tinh của cả một quá trình tìm kiếm mùi hương của Morra cùng JVevermind. Chúng tôi đã cùng nhau đi tìm một nét hương đầy chất đàn ông với hương thơm mãnh liệt, mạnh mẽ nhưng vẫn giữ được sư tươi mát và sang trọng cho Mystic Weapon. Và rồi giữa vô số mùi hương, chúng tôi đã tìm thấy những cảm xúc bùng nổ đó bằng cách chọn gỗ tuyết tùng và hoắc hương cho những nốt đầu, và thêm một chút vương vấn của gỗ đàn hương hòa cùng mùi thuốc lá và xạ hương làm điểm nhấn. Lôi cuốn mà bí ẩn, mãnh liệt nhưng tinh tế là những từ để nói về Mystic Weapon. Với sự kết hợp của những nốt hương được cân nhắc kỹ lưỡng, Mystic Weapon sẽ gợi nhắc bạn rằng đây không chỉ là một lựa chọn về nước hoa, mà là lựa chọn cho cá tính và phong cách của riêng bạn. ', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (26, 3, N'Nước hoa Private Drug', 1, 1, N'images/PrivateDrug_1.jpg', N'Mùi hương Private Drug là thành phẩm tâm đắc của nhà Morra trong quá trình kết hợp cùng JVevermind. Để tạo nên mùi hương unisex đầy cuốn hút cho Private Drug, chúng tôi đã tìm đến sự nồng nàn, tươi mát của cam Bergamot và bưởi, và khi cảm giác mát ngọt đó chưa kịp qua đi thì đến phiên tông màu đầy mê hoặc của gỗ thông và vỏ sồi, và rồi ập đến ngay sau đó là sự ấm áp của xạ hương đen, chút ít đậu tonka và da thuộc. Tất cả tổng hoà lại thành một mùi hương tươi mát mà vẫn ấm áp dịu dàng, ngọt ngào mà vẫn nồng nàn cuốn hút, một mùi hương gây “nghiện” rất riêng của Private Drug.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (27, 4, N'Nước hoa Morra Begamot Vetiver 15', 2, 3, N'images/MorraBegamotVetiver15_1.jpg', N'Kết tinh từ những hương thơm nồng nàn tinh tế, Begamot-Vetiver15 được ví như một khúc nhạc dịu êm đậm chất phương Đông. Đó là sự tươi trẻ, tràn đầy sức sống, từ đó làm bật lên cá tính riêng biệt của phái đẹp.  Đừng ngần ngại mà hãy thử và đắm chìm trong mùi hương đầy ấn tượng, hấp dẫn và quyến rũ của Begamot-Vetiver15.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (28, 4, N'Nước hoa Morra Camel Vanilla 11', 2, 1, N'images/MorraCamelVanilla11_1.jpg', N'Camel – Vanilla 11 là hương nước hoa dành riêng cho những quý cô giản dị mộc mạc nhưng vẫn tôn lên vẻ thanh cao và tao nhã. Một nét mùi hương rất sang, rất lạ làm bật lên khí chất ngút trời nhưng lại rất hài hòa với thiên nhiên. Đây có lẽ là sự sáng tạo đặc biệt mà nhà chế tạo Camel – Vanilla 11 đã chiêm nghiệm nên.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (29, 4, N'Nước hoa Morra Iris 12', 2, 1, N'images/MorraIris12_1.jpg', N'Một sự khởi đầu kích thích mọi giác quan là vị chua man mát đầy khiêu khích nhưng lại được xoa nhẹ với sự dịu dàng của mùi hoa lan dạ hương và hoắc hương. Một cảm giác lạ kỳ “ vừa đấm vừa xoa” khiến bạn không muốn dừng chân tại nơi đây, mà như có một động lực nào đó đẩy bạn tiếp tục chuyến hành trình khám phá thế giới mùi hương tuyệt diệu này. Cùng với đó, hương diên vĩ với  hơi thở tinh khôi, đem lại cho bạn cảm giác thanh sạch tươi mát . Mùi hương này có sức hút đến với đối phương, khiến họ bị mê hoặc bởi sự tinh khôi đó.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (30, 4, N'Nước hoa Morra Oceania 12', 3, 2, N'images/MorraOceania12_1.jpg', N'Đúng như cái tên của mình, Oceania 12 mang hơi thở của biển sâu thổi vào từng thớ da thớ thịt người sử dụng nó. Thanh sạch và mát lạnh, phóng khoáng và tràn đầy hứng khởi nhưng lại chứa một chút sâu lắng, thăm thẳm tựa lòng biển khơi chính là những gì mà Oceania 12 tạo nên. Có thể nói Oceania 12 là tổng hòa sự kết hợp giữa hơi thở của thiên nhiên và nhịp đập trái tim của con người trong một siêu phẩm nước hoa', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (31, 4, N'Nước hoa Morra Rose Cedar 10', 2, 1, N'images/MorraRoseCedar10_1.jpg', N'Đúng như cái tên của nó, Rose – Cedar 10 với tông mùi chủ đạo lấy từ những cánh hoa hồng nồng thắm, quyến rũ như mở ra một câu chuyện tình đầy lãng mạn, bắt nguồn từ sự ngọt ngào ân ái của hương hoa hồng và kết thúc với mùi hương Cedar êm ái,ngọt ngào mà sâu lắng. Mùi hương đậm đà, đầy mê hoặc của Rose – Cedar 10 chắc chắn là một chọn lựa hoàn hảo cho một đêm tình yêu lãng mạn .', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (32, 5, N'Nước hoa Morra Blackcurrant 10', 3, 1, N'images/MorraBlackcurrant10_1.jpg', N'Blackcurrant 10 được lấy cảm hứng từ những ngày hè tươi sáng, đầy sống động với vô số ký ức ngọt ngào, gây thương nhớ mà bất kỳ ai cũng muốn gói ghém vào một góc nhỏ êm đềm của riêng mình. Morra Việt Nam đã lấy cảm hứng từ những phần ký ức mềm mại, khắc khoải đó chính là thứ đưa ta về những bình yên và được là chính ta. Ta chẳng phải đi đâu xa cả, mà nhìn vào bên trong, ta sẽ thấy bản thân nhẹ nhàng xuyên không qua từng khoảng thời gian.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (33, 5, N'Nước hoa Morra Lilybell 07', 2, 1, N'images/MorraLilybell07_1.jpg', N'Lilybell 07 được lấy cảm hứng từ một rừng hoa Lily nằm sâu trong lòng thung lũng nhưng vẫn không thể che dấu đi, xinh đẹp và lộng lẫy của mình khi màn đêm buông xuống. Ánh sáng mềm mại từ bầu trời rơi xuống từng đoá hoa e ấp tạo nên một bức tranh lung linh và đầy màu nhiệm. Lilybell 07 tạo nên một điểm nhấn khác biệt, khiến ta rung động trong chiều nắng vàng nhẹ man mác chiếu từng tia qua bờ vai.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (34, 5, N'Nước hoa Morra Musk Mallow 13', 3, 1, N'images/MorraMuskMallow13_1.jpg', N'Sự tinh khiết của Iso E Super xen lẫn hơi thở ấm áp của gỗ, vị ngọt thanh tao sang trọng của Xạ Hương kết hợp với dấu ấn của Long Diên Hương đã mở ra khu rừng với các giọt sương trong veo trên những tán cỏ buổi sáng sớm. Điểm nhấn còn lại trong Musk Mallow là Hổ Phách, Amyl Salicylate và vị ngọt dịu của Quả Lê đưa sự tinh khiết và gợi cảm của Musk Mallow lên một vùng trời ngọt ngào bí ẩn. Bạn sẽ trở nên vừa bí ẩn, nhưng mang dấu ấn vô hình dù đang ở bất kì hoàn cảnh nào cũng sẽ cho người đối diện thấy vấn vương.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (35, 5, N'Nước hoa Morra Osmanthus 16', 2, 1, N'images/MorraOsmanthus16_1.jpg', N'Chất gây nghiện có trong nước hoa nữ thơm lâu Osmanthus 16 đến từ sự trong trắng, thuần khiết được thể hiện rõ trong lớp hương đầu với mùi hương kiêu sa, thanh lịch của hoa nhài, cùng sự nồng nàn của hoa hồng nở rộ tháng năm, và làm tôn lên nét thơ ngây của hoa mộc tê. Hương vị trong trắng, thơ dại của mộc tê kết hợp với hoa huệ trắng Ấn Độ làm thành màu sắc chủ đạo của mùi hương Osmanthus 16. Đây chắc chắn là chủ điểm mùi hương mà bạn phải khám phá đến tận cùng mới có thể cảm nhận được sự chuyển biến táo bạo và sự nổi loạn ngầm bên trong của một cô gái tỏa ra năng lượng bí ẩn.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (36, 5, N'Nước hoa Morra Sandalwood 33', 1, 1, N'images/MorraSandalwood33_1.jpg', N'Một mùi hương sâu ấm, cổ điển được Morra Việt Nam chế tác riêng cho những tâm hồn đầy bí ẩn và độc đáo. Hương thơm kinh điển này chắc hẳn sẽ chiếm lĩnh tâm trí bất kỳ ai từ lần đầu tiên chạm qua nó. Xuyên suốt các tầng hương, mùi vị mà ta cảm nhận được mạnh mẽ nhất chính là từ Sandalwood- Gỗ đàn hương với sắc vị hơi gắt và cay nhẹ. Note hương gỗ đặc biệt này dường như chiếm ưu thế từ đầu đến cuối nhưng đâu đó ta vẫn có thể cảm nhận được chút trầm nhẹ, mê man của da thuộc, các loại gia vị cùng hương hoa man mát, ngòn ngọt của Iris và violet. Một mùi hương hội tụ mọi yếu tố đủ để khiến bạn khao khát biến nó thành hương thơm đặc trưng của riêng mình.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (37, 6, N'Nước hoa Morra Gardenia', 2, 1, N'images/MorraGardenia_1.jpg', N'Lấy cảm hứng từ khu vườn quả mọng đầy nắng nước hoa tự điều chế Morra đã cho ra đời mùi hương Gardenia ngọt ngào trong veo nhưng chứa đựng sức mạnh mãnh liệt như thanh xuân tươi trẻ. Tầng hương đầu nhẹ nhàng bởi sự hoà quyện của cam đỏ và quả quýt hồng; mùi hương trở nên mạnh mẽ ở hương giữa với mật ong, hoa sơn chi, hoa nhài, hoa cam và quả đào; kết thúc bằng sự dịu dàng ở tầng hương cuối bởi cây hoắc hương, sáp tổ ong, caramel, cam thảo tạo nên một Gardenia đầy cuốn hút. Đây sẽ một mùi hương có thể làm chiều lòng tất cả những cô nàng khó tính nhất.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (38, 6, N'Nước Hoa Morra Mandarina Aqua 11 Scents of Love Collection', 2, 1, N'images/MorraMandarinaAqua11ScentsofLoveCollection_1.jpg', N'Mandarina Aqua 11 là mùi hương của niềm vui và sự hạnh phúc tròn đầy. Như một tình yêu đang chín, Mandarina Aqua 11 khiến người phụ nữ sử dụng nó trở nên rạng ngời, ngọt ngào và thành thục như một đoá hoa nở rộ. Cảm xúc mà Mandarina Aqua 11 mang lại cũng là cảm xúc của yêu và thương, hy vọng và chờ đợi, ngỡ ngàng và hạnh phúc.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (39, 6, N'Nước Hoa Morra Peony Cedar 18 Scents of Love collection', 2, 1, N'images/MorraPeonyCedar18ScentsofLovecollection_1.jpg', N'Peony Cedar 18 là mùi hương Morra dành cho thanh xuân của bạn. Tươi mát như tuổi trẻ, ngọt ngào như hy vọng và rực rỡ như tương lai phía trước. Đắm mình trong hương thơm của Peony Cedar 18, bạn sẽ được các giác quan dẫn dắt vào một hành trình đầy say đắm, hành trình của tình yêu vừa chớm đầy mơ mộng.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (40, 7, N'Nước hoa Amber Oud 09', 3, 2, N'images/amber1.jpg', N'Amber – Oud 09 có mùi hương khởi đầu rất đặc biệt với làn hương ấm cúng nhưng lạ lẫm của hổ phách khô, tiếp theo sau là hương thơm của các loại gia vị mạnh, ve vuốt nịnh mũi, một chút cay nhẹ của gừng, trầm ấm nhưng rất đỗi ngọt ngào, như hình ảnh của những con người tuy tuổi đời còn trẻ nhưng luôn suy tư, khắc khoải về cuộc sống, những cá tính trầm mặc nhưng lại chứa đựng cả một trời tâm tư.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (41, 7, N'Nước hoa Base No8', 2, 2, N'images/baseno1.jpg', N'Base No.8 - Hương hoa nữ tính
 Được tạo nên từ những nốt hương hoa thuần tuý, Base No.8 mang nét nữ tính nhẹ nhàng, song khiến đối phương bị chinh phục ngay từ lần đầu chạm mặt. 
Dấu hương âu yếm trên da, thơm thoảng hương hoa trắng và húng quế. Càng về sau, hương hoa nhài cùng diên vĩ càng trong veo. Cuối cùng, chạm nhẹ ở hậu vị là xạ hương và vanilla khiến hương thơm thêm phần hài hoà. 
Có lẽ vì đặc tính nhẹ nhàng, Base No.8 không chỉ dành cho những cô nàng nữ tính, mà còn có khả năng kết hợp với những mùi hương khác để tạo nên dấu hương đậm chất riêng. 
Morra chờ bạn!', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (42, 7, N'Nước Hoa Lost Cherry 22', 3, 2, N'images/lost1.jpg', N'Hương thơm của Lost Cherry 22 gợi lên hình ảnh của của một buổi đêm lãng mạn và say đắm. Sự phức tạp và hỗn độn có chủ đích trong các tầng hương cũng là một nét đặc biệt của Lost Cherry 22. Mùi thuốc lá thoảng nhẹ, thoang thoảng thôi, không gắt mũi nhưng vẫn giữ một chút gay gắt và gai góc, rồi cảm giác đó được làm mềm đi với vị ngọt ngào kì lạ của mật ong, như sự hoà quyện của nam và nữ. Rồi hương chuyển chậm tầng hương thứ hai, mùi hương ấm nóng, nồng nàn và ngọt ngào của trái cây xen lẫn chút cay nhẹ và một chút hương hoa, mùi hương cứ quấn quít kéo dài như mong mỏi về một đêm mặn nồng không bao giờ tàn. Rồi đến nốt hương cuối dịu dàng, êm ái của vani và hạnh nhân như một cái kết thoả mãn và tròn vẹn.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (43, 8, N'Nến Elements Mệnh Hỏa - Fresh Linen', 3, 1, N'images/hoa1.jpg', N'Nến Elements Mệnh Hỏa - Fresh Linen

Mệnh Hỏa trong ngũ hành tương sinh đại diện cho lửa và sự sống. Vậy nên những người mệnh Hỏa thường rất nhiệt huyết và giàu lòng quả cảm. Họ có tính cách hướng ngoại, nhiệt tình và mạnh mẽ.

Morra xin gửi đến bạn - người mang mệnh Hỏa - hương nến Fresh Linen tượng trưng cho tính cách của người mệnh Hỏa với sự ngọt thanh từ hương hoa lài, đan thắt thêm chút hổ phách ấm áp khó phai ở tầng hương cuối.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (44, 8, N'Nến Elements Mệnh Kim - Prime', 3, 1, N'images/kim1.jpg', N'Nến Elements mệnh Kim - Prime
Mệnh Kim đại diện cho kim khí trong đất trời, được nuôi dưỡng từ thiên nhiên, đất và đá. Bởi vậy nên người mệnh Kim thường mang giá trị tiềm ẩn và nội lực vững chắc. Đồng thời, họ cũng có tính cách quảng giao, luôn kiên định và dễ dàng thích nghi với sự thay đổi.
Morra xin gửi đến bạn - người mang mệnh Kim - hương nến Prime ấn tượng bởi hương phấn ngọt ngào cùng sự lưu luyến khó phai, như ấn tượng của bất kỳ ai đã một lần gặp gỡ và nhớ về bạn.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (45, 8, N'Nến Elements Mệnh Thổ - Christmas Spice', 3, 1, N'images/moc1.jpg', N'Nến Elements Mệnh Mộc - Orange Sandalwood

Trong ngũ hành, Mộc chính là tên gọi dùng để chỉ những loài cây cỏ sống trên mặt đất. Mộc là biểu tượng của mùa xuân, cũng là biểu hiện cho sự sáng tạo, nuôi dưỡng và nảy nở. Người mệnh Mộc thường có tính cách tốt bụng và tinh tế.

Morra xin gửi đến bạn - người mang mệnh Mộc - hương nến Orange Sandalwood với sự kết hợp từ cam và đàn hương tạo nên hương vị ấm áp quen thuộc cùng dấu ấn ngọt ngào đầy lôi cuốn, như tính cách của người mệnh Mộc.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (46, 8, N'Nến Elements Mệnh Thổ - Christmas Spice', 3, 1, N'images/tho1.jpg', N'Nến Elements Mệnh Thổ - Christmas Spice

Thổ là đất, là cội nguồn nuôi dưỡng, là tượng trưng cho sự an lành và may mắn. Người mang mệnh Thổ thường rất ôn hòa, ngập tràn yêu thương và lý trí.

Morra xin gửi đến bạn - người mang mệnh Thổ - hương nến Christmas Spice từ đậu tonka và quả dại quyện vào nhau, tạo nên cảm giác nồng ấm mà không kém phần tinh tế, như cảm giác người mệnh Thổ mang đến khi gần kề.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (47, 8, N'Nến Elements Mệnh Thuỷ - Fougere Marine', 3, 1, N'images/thuy1.jpg', N'Nến Elements mệnh Thuỷ - Fougere Marine
Thủy trong tiếng Hán Việt nghĩa là nước, là dòng sông con suối, là cơn mưa mát lạnh trong lành. Thủy còn tượng trưng cho nguồn sống lan tỏa nuôi dưỡng vạn vật. Vậy nên người mệnh Thủy thường rất biết cách lắng nghe và đồng cảm, họ khéo léo và dễ thích nghi với môi trường mới.

Morra xin gửi đến bạn - người mang mệnh Thủy - hương nến Fougere Marine là sự kết hợp tài tình của lavender, hương biển và hoắc hương giúp tạo nên cảm giác tươi mát và thu hút đặc trưng như người mệnh Thủy.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (48, 10, N'Sữa tắm Lumin Harmony Of The Sea', 3, 1, N'images/1.jpg', N'Harmony Of The Sea mang đậm vị biển cả cùng trái chín và hương gỗ đậm đà. 
Note hương chủ đạo: Một mùi hương tươi mát và sạch sẽ với sự nổi bật của Bergamot và Seawater.
Hương dừa (Coconut) : hỗ trợ rất tốt cho các note hương trái cây ngọt ngào tạo sắc thái của vanilla và hương sữa.
Mùi hương ngọt ngào mà không bị áp đảo bởi hương gỗ mà tạo ra sự cân bằng, vừa đủ.', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (49, 10, N'Sữa tắm Lumin Lemon Cedar', 3, 1, N'images/4.jpg', N'Lemon Cedar là sự tươi mát từ hương cam chanh và quả mọng.
Notes hương chủ đạo: 
Hương đầu: Chi cam chanh, kim quất, chanh vàng, bưởi 
Hương giữa: hoa tím, hương trái cây, quả lý chua đen, quả đào, quả táo xanh 
Hương cuối: gỗ tuyết tùng, xạ hương trắng ', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (50, 10, N'Sữa tắm Lumin Rose Quince', 3, 1, N'images/7.jpg', N'Rose Quince mang lại cảm giác nhẹ nhàng, lưu luyến từ hương hoa cỏ. 
Notes hương chủ đạo: 
Hương đầu: bưởi, mộc qua
Hương giữa: hoa nhài, lan dạ hương.
Hương cuối: xạ hương, hoa diên vĩ, gỗ tuyết tùng, hổ phách', NULL, NULL)
INSERT [dbo].[Products] ([id], [category_id], [title], [gender_id], [discount_id], [thumbnail], [description], [created_at], [updated_at]) VALUES (51, 1, N'Nước hoa ', 2, 1, N'images/Nước hoa 67670631.jpg', N'<p><strong>Thơm lắm thử đi nghiện đấy</strong></p>
', CAST(N'2023-03-24T14:50:45.150' AS DateTime), CAST(N'2023-03-24T14:50:45.150' AS DateTime))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([id], [name]) VALUES (1, N'admin')
INSERT [dbo].[Roles] ([id], [name]) VALUES (2, N'người dùng')
INSERT [dbo].[Roles] ([id], [name]) VALUES (3, N'nhân viên duyệt đơn')
INSERT [dbo].[Roles] ([id], [name]) VALUES (4, N'quản lí kho')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (17, 1, 52, 200000, 390000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (17, 2, 0, 600000, 1790000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (17, 3, 100, 1500000, 1500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (18, 1, 84, 200000, 390000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (18, 2, 100, 800000, 1790000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (18, 3, 100, 1600000, 2690000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (19, 1, 68, 200000, 400000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (19, 2, 100, 700000, 1690000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (19, 3, 95, 1600000, 2000000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (20, 1, 98, 300000, 500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (20, 2, 100, 800000, 1400000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (20, 3, 100, 1600000, 2000000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (21, 1, 94, 200000, 400000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (21, 2, 100, 600000, 900000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (21, 3, 100, 1000000, 1500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (22, 1, 96, 350000, 500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (22, 2, 100, 700000, 1200000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (22, 3, 100, 1500000, 1900000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (23, 1, 94, 200000, 500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (23, 2, 100, 600000, 900000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (23, 3, 100, 1000000, 1500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (24, 1, 95, 300000, 500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (24, 2, 100, 500000, 700000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (24, 3, 97, 900000, 1400000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (25, 1, 85, 300000, 450000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (25, 2, 100, 500000, 700000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (25, 3, 100, 1200000, 1800000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (26, 1, 98, 250000, 400000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (26, 2, 100, 450000, 700000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (26, 3, 100, 1300000, 2000000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (27, 1, 88, 200000, 400000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (27, 2, 100, 700000, 1200000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (27, 3, 100, 1500000, 2200000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (28, 1, 96, 300000, 500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (28, 2, 100, 600000, 900000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (28, 3, 100, 1400000, 1900000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (29, 1, 94, 350000, 500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (29, 2, 100, 500000, 700000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (29, 3, 100, 1000000, 1500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (30, 1, 100, 300000, 400000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (30, 2, 100, 500000, 800000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (30, 3, 100, 900000, 1500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (31, 1, 100, 200000, 400000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (31, 2, 100, 400000, 700000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (31, 3, 100, 1200000, 1600000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (32, 1, 98, 300000, 500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (32, 2, 100, 400000, 750000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (32, 3, 100, 700000, 1300000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (33, 1, 97, 300000, 500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (33, 2, 100, 400000, 600000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (33, 3, 100, 1000000, 1500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (34, 1, 100, 300000, 600000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (34, 2, 100, 700000, 1000000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (34, 3, 100, 1200000, 1600000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (35, 1, 100, 400000, 600000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (35, 2, 100, 800000, 1500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (35, 3, 100, 1600000, 2000000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (36, 1, 100, 500000, 800000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (36, 2, 100, 800000, 1200000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (36, 3, 100, 1400000, 2000000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (37, 1, 99, 700000, 1000000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (37, 2, 100, 900000, 1500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (37, 3, 100, 1300000, 1700000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (38, 1, 99, 500000, 800000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (38, 2, 100, 800000, 1000000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (38, 3, 100, 1000000, 1500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (39, 1, 100, 600000, 900000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (39, 2, 100, 1000000, 1500000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (39, 3, 100, 1400000, 1900000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (40, 1, 100, 150000, 300000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (40, 2, 100, 800000, 1700000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (40, 3, 100, 1400000, 2700000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (41, 1, 100, 150000, 300000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (41, 2, 100, 800000, 1700000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (41, 3, 100, 1400000, 2700000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (42, 1, 100, 150000, 300000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (42, 2, 100, 800000, 1700000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (42, 3, 100, 1400000, 2700000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (43, 3, 100, 250000, 560000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (44, 3, 100, 250000, 560000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (45, 3, 100, 250000, 560000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (46, 3, 100, 250000, 560000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (47, 3, 100, 250000, 560000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (48, 4, 100, 130000, 260000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (49, 4, 100, 130000, 260000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (50, 4, 100, 130000, 260000)
INSERT [dbo].[SizeProduct] ([pid], [sid], [quantity], [price_in], [price_out]) VALUES (51, 2, 0, 123, 500)
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([id], [name], [value]) VALUES (1, N' 10ml', 10)
INSERT [dbo].[Sizes] ([id], [name], [value]) VALUES (2, N'50ml', 50)
INSERT [dbo].[Sizes] ([id], [name], [value]) VALUES (3, N'100ml', 100)
INSERT [dbo].[Sizes] ([id], [name], [value]) VALUES (4, N'300ml', 300)
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([id], [name]) VALUES (1, N'Chờ xác nhận')
INSERT [dbo].[Status] ([id], [name]) VALUES (2, N'Đang giao')
INSERT [dbo].[Status] ([id], [name]) VALUES (3, N'Đã giao')
INSERT [dbo].[Status] ([id], [name]) VALUES (4, N'Đã hủy')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [created_at], [updated_at], [deleted], [avatar]) VALUES (14, 1, 1, N'Mai Phương', N'Linh', N'linhmp', N'000000', N'linhmphe16163922@fpt.edu.vn', N'0981418885', CAST(N'2023-03-21T15:24:24.110' AS DateTime), NULL, 0, N'avatar/avatar1431500688.jpg')
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [created_at], [updated_at], [deleted], [avatar]) VALUES (15, 1, 3, N'Bùi Quang', N'Trường', N'truongbq', N'000000', N'truongbqhe163896@fpt.edu.vn', N'0395931502', CAST(N'2023-03-21T15:24:24.110' AS DateTime), NULL, 0, N'https://external-preview.redd.it/GtWk1TOoo4FH33gsYtUIBmzGV1sqMC2emkZWbgXZ2SY.jpg?auto=webp&s=2c05720de178165f09b3504497a09fea10b73c31')
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [created_at], [updated_at], [deleted], [avatar]) VALUES (16, 1, 3, N'Mai Ngọc ', N'Giang', N'giangmn', N'000000', N'giangmnhe163863', N'0971205376', CAST(N'2023-03-21T15:24:24.110' AS DateTime), NULL, 0, N'avatar/avatar1627125751.jpg')
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [created_at], [updated_at], [deleted], [avatar]) VALUES (17, 1, 4, N'Nguyễn Tuấn', N'Linh', N'linhnt', N'000000', N'linhnthe163817@fpt.edu.vn', N'0326983681', CAST(N'2023-03-21T15:24:24.110' AS DateTime), NULL, 0, N'https://i.pinimg.com/originals/50/f0/c3/50f0c3351809f62d2d8d3fe255a72fa5.jpg')
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [created_at], [updated_at], [deleted], [avatar]) VALUES (18, 1, 4, N'Cấn Duy', N'Khánh', N'khanhcd', N'000000', N'khanhcdhe161501@fpt.edu.vn', N'0979039318', CAST(N'2023-03-21T15:24:24.110' AS DateTime), NULL, 0, N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgAeOw2fPMmDBOfbWgl0DTz_9bNSj0e9X_q9Rhtu0JfkzQR65T4A24GMpQAhMechJK-M&usqp=CAU')
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [created_at], [updated_at], [deleted], [avatar]) VALUES (19, 1, 2, N'Nguyễn Văn A', N'A', N'user1 ', N'000000', N'user1@gmail.com', N'0111111111', CAST(N'2023-03-21T15:24:24.110' AS DateTime), NULL, 0, N'avatar/avatar1939691716.jpg')
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [created_at], [updated_at], [deleted], [avatar]) VALUES (20, 1, 2, N'Trần Văn ', N'B', N'user2', N'123456', N'user2@gmail.com', N'0222222222', CAST(N'2023-03-21T15:24:24.110' AS DateTime), NULL, 1, N'avatar/avatar2066565117.jpg')
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [created_at], [updated_at], [deleted], [avatar]) VALUES (21, 1, 2, N'Nguyễn Thị ', N'C', N'user3', N'123456', N'user3@gmail.com', N'0333333333', CAST(N'2023-03-21T15:24:24.110' AS DateTime), NULL, 0, N'avatar/avatar2138366303.jpg')
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [created_at], [updated_at], [deleted], [avatar]) VALUES (22, 1, 2, N'Lê Thị ', N'D', N'user4', N'123456', N'user4@gmail.com', N'0444444444', CAST(N'2023-03-21T15:24:24.110' AS DateTime), NULL, 1, N'https://edu.hoteljob.vn/uploads/images/20-07-10-11/FPT.jpg')
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [created_at], [updated_at], [deleted], [avatar]) VALUES (23, 1, 2, N'Trần Văn', N'E', N'user5', N'123456', N'user5@gmail.com', N'0555555555', CAST(N'2023-03-21T15:24:24.110' AS DateTime), NULL, 1, N'https://edu.hoteljob.vn/uploads/images/20-07-10-11/FPT.jpg')
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [created_at], [updated_at], [deleted], [avatar]) VALUES (24, 1, 1, N'Tuấn Linh', N'Nguyễn', N'tuanlinh', N'000000', N'linh123@gmail.com', N'0326983680', CAST(N'2023-03-24T00:00:00.000' AS DateTime), NULL, 0, N'avatar/avatar2484777706.jpg')
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [created_at], [updated_at], [deleted], [avatar]) VALUES (25, 1, 2, N'Tuấn Linh', N'Nguyễn', N'linhtuan', N'000000', N'linh@gmail.com', N'0326983680', CAST(N'2023-03-24T00:00:00.000' AS DateTime), NULL, 0, N'avatar/defaultavatar.jpg')
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [created_at], [updated_at], [deleted], [avatar]) VALUES (26, 2, 1, NULL, NULL, NULL, NULL, N'tuanlinhnguyen3092@gmail.com', NULL, CAST(N'2023-03-24T00:00:00.000' AS DateTime), NULL, NULL, NULL)
INSERT [dbo].[Users] ([id], [loginType], [role_id], [firstname], [lastname], [username], [password], [email], [phone_number], [created_at], [updated_at], [deleted], [avatar]) VALUES (27, 1, 2, NULL, NULL, N'user123', N'123456', N'user123@gmail.com', NULL, CAST(N'2023-03-24T00:00:00.000' AS DateTime), NULL, 0, N'avatar/defaultavatar.jpg')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Address_Detail]  WITH CHECK ADD  CONSTRAINT [fk_uid_id] FOREIGN KEY([uid])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Address_Detail] CHECK CONSTRAINT [fk_uid_id]
GO
ALTER TABLE [dbo].[FeedBacks]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[FeedBacks]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetails_Size] FOREIGN KEY([size_id])
REFERENCES [dbo].[Sizes] ([id])
GO
ALTER TABLE [dbo].[Order_Details] CHECK CONSTRAINT [FK_OrderDetails_Size]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([status_id])
REFERENCES [dbo].[Status] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([discount_id])
REFERENCES [dbo].[Discounts] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([gender_id])
REFERENCES [dbo].[Genders] ([id])
GO
ALTER TABLE [dbo].[SizeProduct]  WITH CHECK ADD  CONSTRAINT [fk_id_sid] FOREIGN KEY([sid])
REFERENCES [dbo].[Sizes] ([id])
GO
ALTER TABLE [dbo].[SizeProduct] CHECK CONSTRAINT [fk_id_sid]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([id])
GO
USE [master]
GO
ALTER DATABASE [SWP391_1] SET  READ_WRITE 
GO
