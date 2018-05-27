USE [master]
GO
/****** Object:  Database [Cosmetic]    Script Date: 4/18/2018 11:10:37 PM ******/
CREATE DATABASE [Cosmetic]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cosmetic', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Cosmetic.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Cosmetic_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Cosmetic_log.ldf' , SIZE = 784KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Cosmetic] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cosmetic].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cosmetic] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cosmetic] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cosmetic] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cosmetic] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cosmetic] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cosmetic] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Cosmetic] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Cosmetic] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cosmetic] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cosmetic] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cosmetic] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cosmetic] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cosmetic] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cosmetic] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cosmetic] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cosmetic] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Cosmetic] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cosmetic] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cosmetic] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cosmetic] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cosmetic] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cosmetic] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cosmetic] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cosmetic] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cosmetic] SET  MULTI_USER 
GO
ALTER DATABASE [Cosmetic] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cosmetic] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cosmetic] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cosmetic] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Cosmetic]
GO
/****** Object:  Table [dbo].[address_customer]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[address_customer](
	[address_customer_id] [int] IDENTITY(1,1) NOT NULL,
	[provincial_id] [int] NOT NULL,
	[address] [nvarchar](255) NOT NULL,
	[post_code] [nvarchar](50) NOT NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[address_customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bill_details]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bill_details](
	[bill_detail_id] [bigint] NOT NULL,
	[bill_id] [bigint] NULL,
	[product_id] [bigint] NULL,
	[quantity] [int] NOT NULL,
	[total_price] [float] NOT NULL,
	[created] [datetime] NOT NULL,
	[modified] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bill_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[bills]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[bills](
	[bill_id] [bigint] NOT NULL,
	[bill_code] [varchar](30) NOT NULL,
	[transaction_id] [int] NULL,
	[user_id] [int] NULL,
	[ship_place] [varchar](255) NOT NULL,
	[user_comment] [varchar](3000) NULL,
	[total_price] [float] NOT NULL,
	[bill_status] [int] NOT NULL,
	[deleted] [datetime] NULL,
	[created] [datetime] NOT NULL,
	[modified] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[bill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categories]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[category_id] [int] NOT NULL,
	[category_name] [nvarchar](255) NOT NULL,
	[description] [nvarchar](255) NOT NULL,
	[parent_id] [int] NULL,
	[priority] [tinyint] NOT NULL,
	[deleted] [datetime] NOT NULL DEFAULT (getdate()),
	[created] [datetime] NOT NULL DEFAULT (getdate()),
	[modified] [datetime] NOT NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[color]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color](
	[color_id] [int] IDENTITY(1,1) NOT NULL,
	[color_name] [nvarchar](100) NULL,
	[status] [bit] NULL,
	[natation] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[comments]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[comment_id] [bigint] NOT NULL,
	[product_id] [bigint] NOT NULL,
	[user_id] [int] NOT NULL,
	[content] [text] NOT NULL,
	[status] [tinyint] NOT NULL,
	[created] [datetime] NOT NULL,
	[modified] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[menus]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[menus](
	[menu_id] [int] NOT NULL,
	[menu_name] [varchar](255) NOT NULL,
	[deleted] [datetime] NULL DEFAULT (NULL),
	[created] [datetime] NOT NULL,
	[modified] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[news]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[new_id] [bigint] NOT NULL,
	[menu_id] [int] NOT NULL,
	[news_title] [text] NOT NULL,
	[news_detail] [text] NOT NULL,
	[created] [datetime] NOT NULL,
	[modified] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[new_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[ProductId] [int] NULL,
	[ProductName] [nvarchar](100) NULL,
	[Amount] [float] NULL,
	[Price] [float] NULL,
	[Quantity] [int] NULL,
	[Status] [int] NULL,
	[Note] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderName] [nvarchar](100) NULL,
	[OrderNumber] [varchar](50) NULL,
	[Phone] [varchar](15) NULL,
	[Email] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[TotalAmount] [float] NULL,
	[PaymentDate] [date] NULL,
	[CreatedDate] [date] NULL,
	[Status] [int] NULL,
	[PaymentMethod] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[product_color]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_color](
	[product_color_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [bigint] NULL,
	[color_id] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_color_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[product_size]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_size](
	[product_size_id] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [bigint] NULL,
	[size_id] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[products]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[product_id] [bigint] NOT NULL,
	[product_code] [nvarchar](30) NOT NULL,
	[product_from] [nvarchar](255) NOT NULL,
	[product_name] [nvarchar](255) NOT NULL,
	[description] [ntext] NOT NULL,
	[description_detail] [ntext] NOT NULL,
	[menu_id] [int] NOT NULL,
	[category_id] [int] NULL,
	[image_link] [nvarchar](255) NULL,
	[price] [float] NOT NULL DEFAULT ((0)),
	[in_stock] [int] NOT NULL DEFAULT ((0)),
	[flag_sale] [tinyint] NOT NULL DEFAULT ((0)),
	[price_sale] [float] NULL DEFAULT (NULL),
	[creater] [int] NOT NULL,
	[editer] [int] NULL,
	[deleted] [datetime] NULL DEFAULT (NULL),
	[created] [datetime] NOT NULL DEFAULT (getdate()),
	[modified] [datetime] NOT NULL DEFAULT (getdate()),
	[product_status] [tinyint] NOT NULL DEFAULT ((1)),
	[discount] [int] NOT NULL DEFAULT ((0)),
	[reviews] [int] NULL DEFAULT ((0)),
	[provider_id] [int] NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[products_images]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products_images](
	[products_image_id] [bigint] NOT NULL,
	[product_id] [bigint] NOT NULL,
	[url] [nvarchar](255) NOT NULL,
	[deleted] [datetime] NULL DEFAULT (NULL),
	[created] [datetime] NOT NULL DEFAULT (getdate()),
	[modified] [datetime] NOT NULL DEFAULT (getdate()),
	[status] [tinyint] NOT NULL DEFAULT ((1)),
	[color_id] [int] NULL,
	[size_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[products_image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[provider]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[provider](
	[provider_id] [int] IDENTITY(1,1) NOT NULL,
	[provider_name] [nvarchar](100) NULL,
	[address] [nvarchar](100) NULL,
	[email] [nvarchar](100) NULL,
	[phone] [varchar](15) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[provider_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[roles]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[roles](
	[role_id] [int] NOT NULL,
	[role_name] [varchar](255) NOT NULL,
	[deleted] [datetime] NULL,
	[created] [datetime] NOT NULL,
	[modified] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[size]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[size](
	[size_id] [int] IDENTITY(1,1) NOT NULL,
	[size_name] [nvarchar](100) NULL,
	[descriptions] [nvarchar](100) NULL,
	[status] [bit] NULL,
	[natation] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[size_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[transactions]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[transactions](
	[transaction_id] [int] NOT NULL,
	[transaction_code] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[transaction_status] [int] NOT NULL,
	[total_amount] [float] NOT NULL,
	[payment_gate] [varchar](255) NOT NULL,
	[payment_info] [varchar](255) NOT NULL,
	[transaction_content] [text] NOT NULL,
	[security_code] [varchar](255) NULL,
	[created] [datetime] NOT NULL,
	[modified] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[transaction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_infos]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user_infos](
	[user_info_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[full_name] [varchar](255) NOT NULL,
	[tel] [varchar](255) NOT NULL,
	[user_mail] [varchar](255) NOT NULL,
	[birth_year] [varchar](255) NOT NULL,
	[address] [varchar](255) NOT NULL,
	[deleted] [datetime] NULL,
	[created] [datetime] NOT NULL,
	[modified] [datetime] NOT NULL,
	[bank_account_number] [varchar](255) NOT NULL,
	[bank_account_name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_info_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user_roles]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_roles](
	[role_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[created] [datetime] NOT NULL,
	[modified] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User1]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User1](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[PassWord] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[Addres] [nvarchar](100) NULL,
	[Phone] [varchar](15) NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_User1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[users]    Script Date: 4/18/2018 11:10:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] NOT NULL,
	[user_name] [varchar](255) NOT NULL,
	[pass_word] [varchar](255) NOT NULL,
	[role_id] [int] NOT NULL,
	[status] [int] NOT NULL,
	[name] [varchar](255) NULL,
	[created] [datetime] NOT NULL,
	[modified] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[address_customer] ON 

INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (1, 1, N'czxfsdzg', N'23553', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (2, 17, N'afsfaf', N'23123', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (3, 63, N'fsdgsdg', N'35235', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (4, 2, N'vxcsc', N'4234', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (5, 1, N'fsdgfsdg', N'23123', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (6, 18, N'adfadsg', N'34235', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (7, 1, N'fsafas', N'23123', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (8, 14, N'gdxgdg', N'534634', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (9, 15, N'fasgdzg', N'4235235', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (10, 18, N'fgdfdf', N'3464', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (11, 18, N'aptech', N'123456', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (12, 5, N'aptech-bac giang', N'0240', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (13, 5, N'aptech-bac giang', N'0240', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (14, 12, N'fsdzgzsd', N'25235', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (15, 15, N'sfsdf', N'324234', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (16, 15, N'ffsz', N'343', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (17, 17, N'sfasf', N'adas', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (18, 8, N'DVXGX', N'4235', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (19, 15, N'ádgsdgsdg', N'2646', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (20, 17, N'', N'', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (21, 17, N'', N'', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (22, 18, N'trhdghfg', N'', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (23, 14, N'', N'', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (24, 16, N'fsdfsd', N'54353', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (25, 13, N'', N'', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (26, 24, N'', N'', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (27, 24, N'', N'', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (28, 16, N'rfsfsad', N'42352', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (29, 24, N'ửtfdstgesd', N'3464', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (30, 15, N'gdhgfjgj', N'643674', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (31, 16, N'fdfdhdfh', N'6464', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (32, 15, N'sfgdgf', N'436457', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (33, 16, N'fzfdzs', N'63464', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (34, 12, N'fzgdfh', N'656745', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (35, 13, N'fsdgsg', N'346346', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (36, 17, N'dsgdfhnc', N'523453', 1)
INSERT [dbo].[address_customer] ([address_customer_id], [provincial_id], [address], [post_code], [status]) VALUES (37, 15, N'fvxgf', N'634645', 1)
SET IDENTITY_INSERT [dbo].[address_customer] OFF
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (1, N'Men', N'Quần áo nam', 0, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (2, N'Women', N'Quần áo nữ', 0, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (3, N'Map children', N'Quần áo trẻ em', 0, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (4, N'Men''s shoes', N'Giầy dép của nam', 0, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (5, N'Women''s shoes', N'Giầy dép của nữ', 0, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (6, N'Accessories', N'Phụ kiện thời trang', 0, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (7, N'Bags', N'Túi xách, túi thời trang', 0, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (8, N'Watches', N'Đồng hồ đeo tay nam nữ', 0, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (9, N'Make up', N'Mỹ phẩm', 0, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (10, N'QUẦN NAM', N'Quần của nam', 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (11, N'ÁO NAM', N'Áo của nam', 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (12, N'ÁO KHOÁC NAM', N'Áo khoác của nam', 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (13, N'ÁO NỮ', N'Áo của nữ', 2, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (14, N'QUẦN NỮ', N'Quần của nữ', 2, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (15, N'VÁY', N'Sản phẩm váy nữ', 2, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (16, N'QUẦN ÁO BÉ TRAI', N'Quần áo bé trai', 3, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (17, N'QUẦN ÁO BÉ GÁI', N'Quần áo bé gái', 3, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (18, N'GIẦY DA', N'Giầy da nam', 4, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (19, N'GIẦY VẢI', N'Giầy vải nam', 4, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (20, N'DÉP', N'Dép của nam', 4, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (21, N'SANDAL', N'Dép sandal của nam', 4, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (22, N'GIẦY CAO GÓT', N'Giầy cao gót của nữ', 5, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (23, N'GIẦY BÚT BÊ', N'Giầy bút bê của nữ', 5, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (24, N'Dép đế xuông', N'Dép của nữ', 5, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (25, N'TRANG SỨC', N'Trang sức', 6, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (26, N'KÍNH MẮT', N'Kính mắt', 6, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (27, N'KHĂN CHOÀNG', N'Khăn choàng', 6, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (28, N'ĐỒ LÓT NAM', N'Đồ lót nam', 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (29, N'SẢN PHẨM KHUYẾN MÃI', N'Sản phẩm khuyến mãi', 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (30, N'ĐỒ LÓT NỮ', N'Đồ lót nữ', 2, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (31, N'HÀNG GIẢM GIÁ', N'Hàng giảm giá', 2, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (32, N'GIẦY LƯỜI', N'Giầy lười', 4, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (33, N'QUẦN ÁO TRẺ SƠ SINH', N'Quần áo trẻ sơ sinh', 3, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (34, N'ĐỒ CHƠI', N'Đồ chơi', 3, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (35, N'Cà vạt', N'Cà vạt', 6, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (36, N'Áo vest', N'Áo vest', 12, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (37, N'Áo khoác có mũ', N'Áo khoác có mũ', 12, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (38, N'Áo sơ mi', N'Áo sơ mi nữ', 13, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (39, N'Áo thun', N'Áo thun nữ', 13, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (40, N'Áo tay ngắn', N'Áo nữ tay ngắn', 13, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (41, N'Quần jean nữ', N'Quần jean nữ', 14, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (42, N'Quần sort nữ', N'Quần sort nữ', 14, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (43, N'Quần tây nữ', N'Quàn tây nữ', 14, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (44, N'Túi cầm tay', N'', 7, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (45, N'Ví nữ', N'', 7, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (46, N'Ví nam', N'', 7, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (47, N'Sản phẩm hot', N'', 3, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (48, N'Giầy mọi nữ', N'', 5, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (49, N'Dép nữ', N'', 5, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (50, N'Balo', N'', 7, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (51, N'Túi đeo chéo', N'ggg', 7, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (52, N'Dây nịt', N'Dây nịt', 6, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (53, N'fdsfs', N'dfs bb', 3, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (54, N'fd fgtg', N'ss dg', 11, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (55, N'df fggg', N'ff fff', 12, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (56, N'dghh ff', N'dd fff fff', 0, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (57, N'aaaaa', N'bbbb bbbb', 0, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (58, N'dfsdf nam', N'ghhh', 0, 0, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
INSERT [dbo].[categories] ([category_id], [category_name], [description], [parent_id], [priority], [deleted], [created], [modified]) VALUES (59, N'Danh muc', N'sfasfgsd ddd', 0, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[color] ON 

INSERT [dbo].[color] ([color_id], [color_name], [status], [natation]) VALUES (1, N'Red', 1, N'red')
INSERT [dbo].[color] ([color_id], [color_name], [status], [natation]) VALUES (2, N'Blue', 1, N'blue')
INSERT [dbo].[color] ([color_id], [color_name], [status], [natation]) VALUES (3, N'Black', 1, N'black')
INSERT [dbo].[color] ([color_id], [color_name], [status], [natation]) VALUES (4, N'White', 1, N'white')
INSERT [dbo].[color] ([color_id], [color_name], [status], [natation]) VALUES (5, N'Pink', 1, N'pink')
INSERT [dbo].[color] ([color_id], [color_name], [status], [natation]) VALUES (6, N'Yellow', 1, N'yellow')
INSERT [dbo].[color] ([color_id], [color_name], [status], [natation]) VALUES (7, N'Green', 1, N'green')
INSERT [dbo].[color] ([color_id], [color_name], [status], [natation]) VALUES (8, N'Purple', 1, N'purple')
INSERT [dbo].[color] ([color_id], [color_name], [status], [natation]) VALUES (9, N'Grey', 1, N'grey')
INSERT [dbo].[color] ([color_id], [color_name], [status], [natation]) VALUES (10, N'Orange', 1, N'orange')
INSERT [dbo].[color] ([color_id], [color_name], [status], [natation]) VALUES (11, N'Brown', 1, N'brown')
SET IDENTITY_INSERT [dbo].[color] OFF
INSERT [dbo].[menus] ([menu_id], [menu_name], [deleted], [created], [modified]) VALUES (1, N'A', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-02 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (1, 25, 2, N'Áo', 219, 219, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (2, 26, 2, N'Áo', 438, 219, 2, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (3, 27, 2, N'Áo', 438, 219, 2, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (4, 28, 2, N'Áo', 657, 219, 3, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (5, 29, 2, N'Áo', 438, 219, 2, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (6, 30, 3, N'Áo', 99, 99, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (7, 31, 2, N'Áo', 438, 219, 2, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (8, 32, 3, N'Áo', 99, 99, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (9, 33, 3, N'Áo', 99, 99, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (10, 33, 2, N'Áo', 219, 219, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (11, 34, 3, N'Áo', 99, 99, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (12, 34, 2, N'Áo', 438, 219, 2, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (13, 35, 3, N'Áo', 99, 99, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (14, 36, 3, N'Áo', 99, 99, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (15, 36, 2, N'Áo', 219, 219, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (16, 37, 4, N'Áo', 240, 120, 2, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (17, 38, 5, N'Áo', 399, 399, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (18, 38, 1, N'Áo', 388, 388, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (19, 39, 2, N'Áo', 219, 219, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (20, 40, 2, N'Áo', 219, 219, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (21, 41, 2, N'Áo', 219, 219, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (22, 42, 3, N'Áo', 99, 99, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (23, 42, 2, N'Áo', 219, 219, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (24, 43, 2, N'Áo', 219, 219, 1, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (25, 43, 4, N'Áo', 240, 120, 2, 1, NULL)
INSERT [dbo].[OrderDetail] ([OrderDetailId], [OrderId], [ProductId], [ProductName], [Amount], [Price], [Quantity], [Status], [Note]) VALUES (26, 44, 4, N'Áo', 120, 120, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (1, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 508, NULL, CAST(N'2018-04-07' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (2, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 120, NULL, CAST(N'2018-04-07' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (3, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 219, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (4, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 438, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (5, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 438, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (6, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 657, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (7, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 438, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (8, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 99, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (9, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 438, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (10, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 99, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (11, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 318, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (12, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 537, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (13, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 99, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (14, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 318, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (15, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 240, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (16, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 787, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (17, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 219, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (18, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 219, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (19, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 219, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (20, N'abcd', N'abcd', N'876543', N'phuc@gmail.com', N'abcdd', 318, NULL, CAST(N'2018-04-09' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (21, N'1234', N'1234', N'65432', N'nguyenthituyenlcs1995@gmail.com', N'qqq', 459, NULL, CAST(N'2018-04-10' AS Date), 0, NULL)
INSERT [dbo].[Orders] ([OrderId], [OrderName], [OrderNumber], [Phone], [Email], [Address], [TotalAmount], [PaymentDate], [CreatedDate], [Status], [PaymentMethod]) VALUES (22, N'1234', N'1234', N'7654', N'nguyenthituyenlcs1995@gmail.com', N'23444', 120, NULL, CAST(N'2018-04-10' AS Date), 0, NULL)
SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[product_color] ON 

INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (1, 1, 1, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (2, 1, 2, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (3, 1, 3, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (4, 2, 2, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (5, 2, 3, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (6, 2, 5, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (7, 3, 7, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (8, 1, 6, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (9, 4, 1, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (10, 5, 4, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (11, 6, 4, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (12, 7, 5, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (13, 8, 6, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (14, 9, 7, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (15, 10, 8, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (16, 11, 8, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (17, 12, 9, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (18, 13, 9, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (19, 14, 10, 1)
INSERT [dbo].[product_color] ([product_color_id], [product_id], [color_id], [status]) VALUES (20, 15, 10, 1)
SET IDENTITY_INSERT [dbo].[product_color] OFF
SET IDENTITY_INSERT [dbo].[product_size] ON 

INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [status]) VALUES (1, 1, 1, 1)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [status]) VALUES (2, 2, 1, 1)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [status]) VALUES (3, 3, 1, 1)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [status]) VALUES (4, 4, 2, 1)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [status]) VALUES (5, 5, 2, 1)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [status]) VALUES (6, 6, 3, 1)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [status]) VALUES (7, 7, 3, 1)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [status]) VALUES (8, 8, 4, 1)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [status]) VALUES (9, 9, 4, 1)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [status]) VALUES (10, 10, 5, 1)
INSERT [dbo].[product_size] ([product_size_id], [product_id], [size_id], [status]) VALUES (11, 11, 5, 1)
SET IDENTITY_INSERT [dbo].[product_size] OFF
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (1, N'111763', N'Viet Nam', N'Leather Bag', N'Túi xách', N'', 1, 7, N'shop_item_1.jpg', 388, 2, 1, 159, 2, 2, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 42, 1)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (2, N'111764', N'Viet Nam', N'Elegant Dress', N'Áo nữ', N'', 1, 2, N'shop_item_2.jpg', 219, 2, 1, 0, 2, 2, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 41, 2)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (3, N'111765', N'Viet Nam', N'Mint Dress', N'Áo nữ', N'', 1, 2, N'shop_item_3.jpg', 99, 0, 1, 0, 2, 2, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 28, 3)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (4, N'111766', N'Viet Nam', N'Leather Shoes', N'Giầy nữ', N'', 1, 5, N'shop_item_4.jpg', 120, 2, 1, 0, 2, 2, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 25, 4)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (5, N'111767', N'Viet Nam', N'Business Suit', N'Vest nam', N'', 1, 1, N'shop_item_5.jpg', 399, 2, 1, 0, 2, 2, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 27, 5)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (6, N'111768', N'Viet Nam', N'Classic Watch', N'Đồng hồ', N'', 1, 8, N'shop_item_6.jpg', 119, 2, 1, 0, 2, 2, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 22, 6)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (7, N'111769', N'Viet Nam', N'Summer Shorts', N'Áo nữ', N'', 1, 2, N'shop_item_7.jpg', 1379, 2, 1, 0, 2, 2, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 21, 7)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (8, N'111770', N'Viet Nam', N'Autumn Coat', N'Vest nam', N'', 1, 1, N'shop_item_8.jpg', 350, 2, 1, 150, 2, 2, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 29, 8)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (9, N'111771', N'Viet Nam', N'White Shirt', N'Áo dài nam', N'', 1, 1, N'shop_item_9.jpg', 120, 2, 1, 0, 2, 2, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 20, 9)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (10, N'111772', N'Viet Nam', N'Street Hoodie', N'Áo nam', N'', 1, 1, N'shop_item_10.jpg', 179, 2, 1, 0, 2, 2, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 13, 1)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (11, N'111773', N'Viet Nam', N'Leather Belt', N'Dây lưng', N'', 1, 6, N'shop_item_11.jpg', 315, 2, 1, 0, 2, 2, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 4, 2)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (12, N'111774', N'Viet Nam', N'Coat With Scarf', N'Áo nam', N'', 1, 1, N'shop_item_12.jpg', 180, 2, 1, 0, 2, 2, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 13, 3)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (13, N'111775', N'Viet Nam', N'Quần Jean rạch gối bó', N'Quần Denim của Asos đem đến sự tự tin và sành điệu với gam màu hồng hiện đại, xu hướng màu mới dành cho những tín đồ thời trang. Đăc điểm: - Vải Denim kéo giản - Di chuyển, hoạt động thoải mái - Co giãn với kích thước cơ thể -...', N'Quần Denim của Asos đem đến sự tự tin và sành điệu với gam màu hồng hiện đại, xu hướng màu mới dành cho những tín đồ thời trang.

Đăc điểm:

- Vải Denim kéo giản

- Di chuyển, hoạt động thoải mái

- Co giãn với kích thước cơ thể

- Cắt chặt chẽ với cơ thể

- Có thể sử dụng máy giặt để giặt

- 91% Cotton, 7% Polyester, 2% elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Có nhiều màu sắc để lựa chọn

- Xuất xứ: Nhập khẩu

', 1, 1, N'image4xxl-8.jpg', 800000, 0, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 2, 2)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (14, N'111776', N'Viet Nam', N'Quần short bò', N'Quần short bò xanh của Asos đem đến sự tự tin và sành điệu với gam màu xanh năng động, xu hướng màu dành cho những tín đồ thời trang. Đăc điểm: - Vải Denim kéo giản - Có dây kéo thắt lưng - Có túi chức năng - Thoải mái cho...', N'Quần short bò xanh của Asos đem đến sự tự tin và sành điệu với gam màu xanh năng động, xu hướng màu dành cho những tín đồ thời trang.

Đăc điểm:

- Vải Denim kéo giản

- Có dây kéo thắt lưng

- Có túi chức năng

- Thoải mái cho bạn vận động

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 100% Cotton

- Phù hợp với thân hình có kích thước nhỏ hơn 185cm

- Màu xanh nhạt

- Xuất xứ: Nhập khẩu', 1, 1, N'image1xxl-1-3e2ac7ae-9be1-42c3-a715-bb170691b9aa.jpg', 900000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 1, 8)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (15, N'111777', N'Viet Nam', N'Quần short Chno màu trắng', N'Quần short Chino của Asos đem đến sự tự tin và sành điệu với gam màu trắng hiện đại. Đăc điểm: - Vải Denim kéo giản - Có túi nghiêng đựng - Thoải mái cho bạn vận động - Co giãn với kích thước cơ thể - Có thể sử dụng...', N'Quần short Chino của Asos đem đến sự tự tin và sành điệu với gam màu trắng hiện đại.

Đăc điểm:

- Vải Denim kéo giản

- Có túi nghiêng đựng

- Thoải mái cho bạn vận động

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 1, N'quan4.jpg', 930000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 2, 8)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (16, N'111778', N'Viet Nam', N'Quần dàn gi Asos', N'Quần dàn gi của Asos đem đến sự tự tin và mạnh mẽ trong bộ đò lính, phù hợp với những người muốn thay đổi phong cách. Đăc điểm: - Vải Denim kéo giản - Có túi đựng - Thoải mái cho bạn vận động - Co giãn với kích thước...', N'Quần dàn gi của Asos đem đến sự tự tin và mạnh mẽ trong bộ đò lính, phù hợp với những người muốn thay đổi phong cách.

Đăc điểm:

- Vải Denim kéo giản

- Có túi đựng 

- Thoải mái cho bạn vận động

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 185cm

- Xuất xứ: Nhập khẩu

', 1, 1, N'quan10.jpg', 900000, 1, 1, 850000, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 8)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (17, N'111779', N'Viet Nam', N'Quần kaki mỏng Asos', N'Quần Denim của Asos đem đến sự tự tin và sành điệu với gam màu hồng hiện đại, xu hướng màu mới dành cho những tín đồ thời trang. Đăc điểm: - Vải Denim kéo giản - Có túi đựng - Thoải mái cho bạn vận động - Co giãn với...', N'Quần Denim của Asos đem đến sự tự tin và sành điệu với gam màu hồng hiện đại, xu hướng màu mới dành cho những tín đồ thời trang.

Đăc điểm:

- Vải Denim kéo giản

- Có túi đựng 

- Thoải mái cho bạn vận động

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 185cm

- Nhiều loại màu cho bạn lựa chọn

- Xuất xứ: Nhập khẩu', 1, 1, N'quan3.jpg', 750000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 1)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (18, N'111780', N'Viet Nam', N'Quần Denim mỏng màu hường', N'Quần Denim của Asos đem đến sự tự tin và sành điệu với gam màu hồng hiện đại, xu hướng màu mới dành cho những tín đồ thời trang. Đăc điểm: - Chất vải mềm mại, dễ thấm mồ hôi - Có túi đựng - Thoải mái cho bạn vận động ...', N'Quần Denim của Asos đem đến sự tự tin và sành điệu với gam màu hồng hiện đại, xu hướng màu mới dành cho những tín đồ thời trang.

Đăc điểm:

- Chất vải mềm mại, dễ thấm mồ hôi

- Có túi đựng 

- Thoải mái cho bạn vận động

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 100% Cotton

- Phù hợp với thân hình có kích thước nhỏ hơn 185cm

- Màu hường

- Xuất xứ: Nhập khẩu', 1, 1, N'image1xxl-3.jpg', 850000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 8)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (19, N'111781', N'Viet Nam', N'Áo Denim Asos', N'Áo Denim Asos của Asos đem đến cá tính và tự tin. Đăc điểm: - Chất vải Denim - Có cúc áo - Có túi ngực - Đúng với kích thước - Có thể sử dụng máy giặt để giặt - 100% Cotton - Màu xanh - Xuất...', N'Áo Denim Asos của Asos đem đến cá tính và tự tin.

Đăc điểm:

- Chất vải Denim

- Có cúc áo

- Có túi ngực

- Đúng với kích thước

- Có thể sử dụng máy giặt để giặt

- 100% Cotton

- Màu xanh

- Xuất xứ: Nhập khẩu

', 1, 2, N'aonu24.jpg', 950000, 1, 1, 800000, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 8)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (20, N'111782', N'Viet Nam', N'Áo voan cộc tay cao cổ', N'Áo voan cộc tay cao cổ Asos của Asos đem đến sự thoải mái và tự tin. Đăc điểm: - Chất vải voan mỏng nhẹ - Áo cao cổ - Đúng với kích thước - Có thể sử dụng máy giặt để giặt - 100% Polyester - Màu đen ...', N'Áo voan cộc tay cao cổ Asos của Asos đem đến sự thoải mái và tự tin.

Đăc điểm:

- Chất vải voan mỏng nhẹ

- Áo cao cổ

- Đúng với kích thước

- Có thể sử dụng máy giặt để giặt

- 100% Polyester

- Màu đen

- Xuất xứ: Nhập khẩu', 1, 2, N'aonu21.jpg', 110000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 9)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (21, N'111783', N'Viet Nam', N'Áo xếp li Collar & Ruffle', N'Áo xếp li Collar & Ruffle của Asos đem đến sự thoải mái và tự tin với màu hồng nữ tính. Đăc điểm: - Vải voan mỏng nhẹ - Viền cổ áo với cà vạt - Dài đến túi quần - Đúng với kích thước - Có thể sử dụng máy...', N'Áo xếp li Collar & Ruffle của Asos đem đến sự thoải mái và tự tin với màu hồng nữ tính.

Đăc điểm:

- Vải voan mỏng nhẹ

- Viền cổ áo với cà vạt

- Dài đến túi quần

- Đúng với kích thước

- Có thể sử dụng máy giặt để giặt

- 100% Polyester

- Màu hồng

- Xuất xứ: Nhập khẩu

', 1, 2, N'aonu15.jpg', 900000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 1, 8)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (22, N'111784', N'Viet Nam', N'Áo voan cộc tay Asos', N'Áo hoa trà Asos của Asos đem đến sự thoải mái và tự tin. Đăc điểm: - Chất vải mỏng nhẹ - Áo dài tới túi quần - Đúng với kích thước - Có thể sử dụng máy giặt để giặt - 100% Polyester - Màu vàng - Xuất...', N'Áo hoa trà Asos của Asos đem đến sự thoải mái và tự tin.

Đăc điểm:

- Chất vải mỏng nhẹ

- Áo dài tới túi quần

- Đúng với kích thước

- Có thể sử dụng máy giặt để giặt

- 100% Polyester

- Màu vàng

- Xuất xứ: Nhập khẩu

', 1, 2, N'aonu11.jpg', 800000, 0, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 6)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (23, N'111785', N'Viet Nam', N'Áo hoa trà Asos', N'Áo hoa trà Asos của Asos đem đến sự thoải mái và tự tin. Đăc điểm: - Chất vải mỏng nhẹ - Họa tiết hoa trà in - Cổ khoét chữ V - Đúng với kích thước - Có thể sử dụng máy giặt để giặt - 100% Viscose ...', N'Áo hoa trà Asos của Asos đem đến sự thoải mái và tự tin.

Đăc điểm:

- Chất vải mỏng nhẹ

- Họa tiết hoa trà in

- Cổ khoét chữ V

- Đúng với kích thước

- Có thể sử dụng máy giặt để giặt

- 100% Viscose

- 2 màu lựa chọn

- Xuất xứ: Nhập khẩu', 1, 2, N'aonu4.jpg', 700000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 6)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (24, N'111786', N'Viet Nam', N'Quần jean bóng', N'Quần jean bóng đem đến sự nổi bật và tự tin. Đăc điểm: - Chất vải jean bóng - Có túi - Sử dụng khuy - Đúng với kích thước - Có thể sử dụng máy giặt để giặt - 80% Cotton, 17% Nylon, 3% elastane - Màu...', N'Quần jean bóng đem đến sự nổi bật và tự tin.

Đăc điểm:

- Chất vải jean bóng

-  Có túi

- Sử dụng khuy

- Đúng với kích thước

- Có thể sử dụng máy giặt để giặt

- 80% Cotton, 17% Nylon, 3% elastane

- Màu xám

- Xuất xứ: Nhập khẩu

', 1, 2, N'quannu19.jpg', 100000, 1, 1, 900000, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 3)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (25, N'111787', N'Viet Nam', N'Quần cạp cao Rivington', N'Quần cạp cao Rivington đem đến sự quyến rũ và tự tin. Quần dành cho những bạn nữ tự tin vào vóc dáng của mình Đăc điểm: - Chất vải nhẹ mịn - Hai túi để đảo ngược - Sử dụng khuy - Đúng với kích thước - Có thể...', N'Quần cạp cao Rivington đem đến sự quyến rũ và tự tin. Quần dành cho những bạn nữ tự tin vào vóc dáng của mình

Đăc điểm:

- Chất vải nhẹ mịn

-  Hai túi để đảo ngược

- Sử dụng khuy

- Đúng với kích thước

- Có thể sử dụng máy giặt để giặt

- 66% Cotton, 30% Polyester, 4% elastane

- Màu trắng

- Xuất xứ: Nhập khẩu

', 1, 2, N'quannu12.jpg', 900000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 6)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (26, N'111788', N'Viet Nam', N'Áo thun Nike cổ tròn', N'Áo thun Nike xanh đem đến sự thoải mái và mát mẻ với gam màu lạnh và dễ dàng kết hợp với các phụ kiện khác nhau. - Áo vải mềm mại, thấm mồ hôi - Cổ tròn - Tay áo Raglan - Logo Nike in - Áo co giãn phù hợp với...', N'Áo thun Nike xanh đem đến sự thoải mái và mát mẻ với gam màu lạnh và dễ dàng kết hợp với các phụ kiện khác nhau.

- Áo vải mềm mại, thấm mồ hôi

- Cổ tròn 

- Tay áo Raglan

- Logo Nike in

- Áo co giãn phù hợp với cơ thể

- Có thể sử dụng máy giặt để giặt áo

- Phù hợp với người có chiều cao bình thường đén 188cm

- Màu xanh bắt mắt

- Xuất xứ: Nhập khẩu

', 1, 1, N'image4xxl-1.jpg', 800000, 1, 1, 650000, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 2)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (27, N'111789', N'Viet Nam', N'Áo sơ mi nam dài tay VŨ TUẤN sọc 2 màu 2802 SID62524', N'Áo sơ mi nam dài tay VŨ TUẤN sọc 2 màu 2802: Chất liệu cotton thấm hút độ ẩm cao, mát mẻ cho chàng tự tin di chuyển hay hoạt động, thích hợp trong mọi thời tiết. Thiết kế đơn giản cho phái mạnh thoải mái diện khi đi làm, đi chơi hay đi dự tiệc', N'Áo sơ mi nam dài tay VŨ TUẤN sọc 2 màu 2802 được thiết kế đơn giản cho phái mạnh thoải mái diện khi đi làm, đi chơi hay đi dự tiệc
Thiết kế cổ bẻ, tay dài cùng form dáng vừa vặn cho bạn thêm thanh lịch, chỉn chu khi kết hợp với các món đồ khác
Họa tiết sọc dọc đều đặn, tinh tế tạo sự nổi bật cho người mặc khi diện sản phẩm, thêm thu hút, phong cách
Chất liệu cotton thấm hút độ ẩm cao, mát mẻ cho chàng tự tin di chuyển hay hoạt động, thích hợp trong mọi thời tiết
Có thể dễ dàng kết hợp với quần tây, kaki hay bụi bặm và phá cách hơn với quần jean hay short trẻ trung... rất phù hợp', 1, 1, N'ao_so_mi_nam_dai_tay_vu_tuan_soc_2_mau_2802_f3ca.jpg', 500000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 1)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (28, N'111790', N'Viet Nam', N'Áo thun nam cổ tròn Benplay đơn giản SID61205', N'Áo thun nam cổ tròn Benplay đơn giản: Chất liệu thun mềm mại, co giãn, thấm hút mồ hôi tốt. Thiết kế kiểu dáng đơn giản, thời trang, phối logo Benplay bên ngực trái mang tới sự nam tính, mạnh mẽ cho bạn', N'Áo thun nam cổ tròn Benplay đơn giản thiết kế với kiểu dáng đơn giản, thời trang mang lại cho bạn trai sự nam tính, trẻ trung.
Phối logo Benplay bên ngực trái thể hiện đẳng cấp và nam tính của người mặc sản phẩm.
Màu xanh đen nam tính và đơn giản dễ dàng kết hợp với nhiều loại trang phục khác
Chất liệu thun mềm mại, co giãn, thấm hút mồ hôi tốt cho bạn luôn thoải mái khi mặc.
Có thể phối cùng nhiều trang phục khác nhau như quần jean, quần short, giày thể thao, sandal..', 1, 1, N'ao_thun_nam_co_tron_benplay_don_gian_6357.jpg', 210000, 1, 1, 200000, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 2)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (29, N'111791', N'Viet Nam', N'Áo sơ mi nam ngắn tay họa tiết lá TIX SID63602', N'Áo sơ mi nam ngắn tay họa tiết lá TIX: Chất liệu cotton thấm hút mồ hôi tốt, thông thoáng giúp người mặc tự tin trong các hoạt động. Thiết kế cổ bẻ, tay ngắn cùng họa tiết bắt mắt mang đến vẻ ngoài năng động, nổi bật cho phái mạnh khi diện', N'Áo sơ mi nam ngắn tay họa tiết lá TIX với thiết kế tinh tế, mang đến vẻ ngoài năng động, nổi bật cho phái mạnh khi diện
Kiểu dáng cổ điển cổ bẻ, tay ngắn cá tính, thích hợp diện trong thời tiết mùa hè nóng bức này
Nhấn nhá họa tiết lá đầy mới lạ và nổi bật  tạo cảm giác tươi mát và đầy thời trang cho các anh chàng khi diện
Đường chỉ may tỉ mỉ cùng nút áo phía trước chắc chắn cho phái nam thoải mái diện, tự tin thể hiện phong cách
Màu xanh đầy mới lạ, tươi mát dễ dàng kết hợp với nhiều loại trang phục khác nhau
Chất liệu cotton thấm hút mồ hôi tốt, mang đến cảm giác mát mẻ, thông thoáng giúp người mặc tự tin hoạt động
Sản phẩm có thể mix cùng quần jean, quần tây hay quần short nhằm tạo phong cách riêng, ấn tượng', 1, 1, N'ao_so_mi_nam_ngan_tay_hoa_tiet_la_tix_6d05.jpg', 380000, 1, 1, 360000, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 3)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (30, N'111792', N'Viet Nam', N'Áo sơ mi nam tay ngắn phối sọc thời trang SID63700', N'Áo sơ mi nam tay ngắn phối sọc thời trang: Chất liệu cotton thông thoáng, khả năng hút ẩm cao cho chàng luôn cảm thấy thoải mái và dễ chịu khi mặc, bất kể màu nào trong năm. Thiết kế tay ngắn năng động mang đến vẻ ngoài phong cách, cá tính cho phái mạnh', N'Áo sơ mi nam tay ngắn phối sọc thời trang với thiết kế tay ngắn năng động mang đến vẻ ngoài phong cách, cá tính cho phái mạnh
Áo thiết kế phối sọc cùng màu tinh tế, tạo ấn tượng nổi bật cho sản phẩm, mang đến vẻ ngoài chỉn chu, cho chàng thêm phong cách
Có nhiều màu sắc cho bạn nam thoải mái lựa chọn, tự tin thể hiện gu thời trang riêng, dễ dàng mix cùng các item khác nhau
Áo có nút gài phía trước chắc chắn cùng đường chỉ may tỉ mỉ cho phái nam dễ dàng mặc vào hay thay ra tiện dụng
Chất liệu cotton thông thoáng, khả năng hút ẩm cao cho chàng luôn cảm thấy thoải mái và dễ chịu khi mặc, bất kể màu nào trong năm
Có thể dễ dàng kết hợp với quần tây, kaki hay bụi bặm và phá cách hơn với quần jean hay short trẻ trung', 1, 1, N'ao_so_mi_nam_tay_ngan_phoi_soc_thoi_trang_683e.jpg', 200000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 4)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (31, N'111793', N'Viet Nam', N'Áo thun nam cổ tròn ECO JEAN NUNADYE SID63729', N'Áo thun nam cổ tròn ECO JEAN NUNADYE: Chất liệu vải cotton thấm hút mồ hôi cực nhanh, đem lại sự thoáng mát, cho nam giới thêm tự tin, thỏa sức vận động. Thiết kế cổ tròn, tay ngắn, thể hiện sự mạnh mẽ đẳng cấp của phái mạnh', N'Áo thun nam cổ tròn ECO JEAN NUNADYE với thiết kế cổ tròn, tay ngắn, thể hiện sự mạnh mẽ đẳng cấp của phái mạnh
Họa tiết mới lạ độc đáo thể hiện sự năng động, mạnh mẽ, một phong cách thời trang trẻ trung và hiện đại
Màu xanh dương và xanh ngọc trẻ trung, đơn giản dễ dàng kết hợp với nhiều trang phục khác nhau, thay đổi phong cách
Chất liệu vải cotton thấm hút mồ hôi cực nhanh, đem lại sự thoáng mát, cho nam giới thêm tự tin, thỏa sức vận động
Kết hợp cùng các item như giày thể thao, túi đeo chéo, quần jeans để tạo phong cách trẻ trung, năng động, hay quần kaki để trông thật lịch lãm', 1, 1, N'ao_thun_nam_co_tron_eco_jean_nunadye_396d.jpg', 300000, 0, 1, 220000, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 2, 4)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (32, N'111794', N'Viet Nam', N'Áo sơ mi sọc ngang', N'Quần short bò xanh của Asos đem đến sự tự tin và sành điệu với gam màu xanh năng động, xu hướng màu dành cho những tín đồ thời trang. Đăc điểm: - Vải Denim kéo giản - Có dây kéo thắt lưng - Có túi chức năng - Thoải mái cho...', N'Quần short bò xanh của Asos đem đến sự tự tin và sành điệu với gam màu xanh năng động, xu hướng màu dành cho những tín đồ thời trang.

Đăc điểm:

- Vải Denim kéo giản

- Có dây kéo thắt lưng

- Có túi chức năng

- Thoải mái cho bạn vận động

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 100% Cotton

- Phù hợp với thân hình có kích thước nhỏ hơn 185cm

- Màu xanh nhạt

- Xuất xứ: Nhập khẩu', 1, 3, N'treem10.jpg', 220000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 1, 3)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (33, N'111795', N'Viet Nam', N'Áo T-shirt ngắn tay trẻ em Asos', N'Quần short bò xanh của Asos đem đến sự tự tin và sành điệu với gam màu xanh năng động, xu hướng màu dành cho những tín đồ thời trang. Đăc điểm: - Vải Denim kéo giản - Có dây kéo thắt lưng - Có túi chức năng - Thoải mái cho...', N'Quần short bò xanh của Asos đem đến sự tự tin và sành điệu với gam màu xanh năng động, xu hướng màu dành cho những tín đồ thời trang.

Đăc điểm:

- Vải Denim kéo giản

- Có dây kéo thắt lưng

- Có túi chức năng

- Thoải mái cho bạn vận động

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 100% Cotton

- Phù hợp với thân hình có kích thước nhỏ hơn 185cm

- Màu xanh nhạt

- Xuất xứ: Nhập khẩu', 1, 3, N'treem8.jpg', 210000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 6)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (34, N'111796', N'Viet Nam', N'Áo T-shirt viền caro', N'Quần short bò xanh của Asos đem đến sự tự tin và sành điệu với gam màu xanh năng động, xu hướng màu dành cho những tín đồ thời trang. Đăc điểm: - Vải Denim kéo giản - Có dây kéo thắt lưng - Có túi chức năng - Thoải mái cho...', N'Quần short bò xanh của Asos đem đến sự tự tin và sành điệu với gam màu xanh năng động, xu hướng màu dành cho những tín đồ thời trang.

Đăc điểm:

- Vải Denim kéo giản

- Có dây kéo thắt lưng

- Có túi chức năng

- Thoải mái cho bạn vận động

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 100% Cotton

- Phù hợp với thân hình có kích thước nhỏ hơn 185cm

- Màu xanh nhạt

- Xuất xứ: Nhập khẩu', 1, 3, N'treem6.jpg', 440000, 1, 1, 400000, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 3)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (35, N'111797', N'Viet Nam', N'Áo ba lỗ sọc ngang', N'Quần short bò xanh của Asos đem đến sự tự tin và sành điệu với gam màu xanh năng động, xu hướng màu dành cho những tín đồ thời trang. Đăc điểm: - Vải Denim kéo giản - Có dây kéo thắt lưng - Có túi chức năng - Thoải mái cho...', N'Quần short bò xanh của Asos đem đến sự tự tin và sành điệu với gam màu xanh năng động, xu hướng màu dành cho những tín đồ thời trang.

Đăc điểm:

- Vải Denim kéo giản

- Có dây kéo thắt lưng

- Có túi chức năng

- Thoải mái cho bạn vận động

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 100% Cotton

- Phù hợp với thân hình có kích thước nhỏ hơn 185cm

- Màu xanh nhạt

- Xuất xứ: Nhập khẩu

', 1, 3, N'treem4.jpg', 300000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 5)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (36, N'111798', N'Viet Nam', N'Áo T-shirt in hoa lá', N'Quần short bò xanh của Asos đem đến sự tự tin và sành điệu với gam màu xanh năng động, xu hướng màu dành cho những tín đồ thời trang. Đăc điểm: - Vải Denim kéo giản - Có dây kéo thắt lưng - Có túi chức năng - Thoải mái cho...', N'Quần short bò xanh của Asos đem đến sự tự tin và sành điệu với gam màu xanh năng động, xu hướng màu dành cho những tín đồ thời trang.

Đăc điểm:

- Vải Denim kéo giản

- Có dây kéo thắt lưng

- Có túi chức năng

- Thoải mái cho bạn vận động

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 100% Cotton

- Phù hợp với thân hình có kích thước nhỏ hơn 185cm

- Màu xanh nhạt

- Xuất xứ: Nhập khẩu

', 1, 3, N'treem1.jpg', 360000, 1, 1, 350000, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 5)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (37, N'111799', N'Viet Nam', N'Áo sơ mi trẻ em', N'Quần short bò xanh của Asos đem đến sự tự tin và sành điệu với gam màu xanh năng động, xu hướng màu dành cho những tín đồ thời trang. Đăc điểm: - Vải Denim kéo giản - Có dây kéo thắt lưng - Có túi chức năng - Thoải mái cho...', N'Quần short bò xanh của Asos đem đến sự tự tin và sành điệu với gam màu xanh năng động, xu hướng màu dành cho những tín đồ thời trang.

Đăc điểm:

- Vải Denim kéo giản

- Có dây kéo thắt lưng

- Có túi chức năng

- Thoải mái cho bạn vận động

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 100% Cotton

- Phù hợp với thân hình có kích thước nhỏ hơn 185cm

- Màu xanh nhạt

- Xuất xứ: Nhập khẩu

', 1, 3, N'2015-children-s-clothing-child-shirt-boys-shirt-white-long-sleeve-shirt.jpg', 340000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 6)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (38, N'111810', N'Viet Nam', N'Giày cao gót mũi nhọn', N'Quần short bò xanh của Asos đem đến sự tự tin và sành điệu với gam màu xanh năng động, xu hướng màu dành cho những tín đồ thời trang. Đăc điểm: - Vải Denim kéo giản - Có dây kéo thắt lưng - Có túi chức năng - Thoải mái cho...', N'Quần short bò xanh của Asos đem đến sự tự tin và sành điệu với gam màu xanh năng động, xu hướng màu dành cho những tín đồ thời trang.

Đăc điểm:

- Vải Denim kéo giản

- Có dây kéo thắt lưng

- Có túi chức năng

- Thoải mái cho bạn vận động

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 100% Cotton

- Phù hợp với thân hình có kích thước nhỏ hơn 185cm

- Màu xanh nhạt

- Xuất xứ: Nhập khẩu

', 1, 5, N'caogot16.jpg', 540000, 1, 1, 500000, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 1, 5)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (39, N'111811', N'Viet Nam', N'Giày cao gót đính đá mủi hở', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 5, N'caogot15.jpg', 470000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 2)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (40, N'111812', N'Viet Nam', N'Giày cao gót đính đá', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 5, N'caogot12.jpg', 55000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 5)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (41, N'111813', N'Viet Nam', N'Giày cao gót in họa tiết', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 5, N'caogot7.jpg', 700000, 0, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 2)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (42, N'111814', N'Viet Nam', N'Giày cao gót dây buộc Asos', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 5, N'caogot4.jpg', 500000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 6)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (43, N'111815', N'Viet Nam', N'Giày cao gót có ren', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 5, N'caogot1.jpg', 400000, 1, 1, 380000, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 4)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (44, N'111816', N'Viet Nam', N'Giày da lộn CS Fashion', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 4, N'giaynam16.jpg', 800000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 4)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (45, N'111817', N'Viet Nam', N' Giáy da lộn Zilandi Giáy da lộn Zilandi
Giáy da lộn Zilandi', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 4, N'giaynam15.jpg', 700000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 7)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (46, N'111818', N'Viet Nam', N'Giày tây dây cột Glado', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 4, N'giaynam12.jpg', 600000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 9)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (47, N'111819', N'Viet Nam', N'Giáy da mềm Asos', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 4, N'giaynam8.jpg', 800000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 3)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (48, N'111820', N'Viet Nam', N'Giày nhung đỏ Asos', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 4, N'giaynam4.jpg', 600000, 1, 1, 450000, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 5, 5)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (49, N'111821', N'Viet Nam', N'Giày da nâu Asos', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 4, N'giaynam2.jpg', 650000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 1)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (50, N'111822', N'Viet Nam', N'Túi xách vải đen thời trang', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 7, N'tuixach18.jpg', 500000, 1, 1, 350000, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 2, 4)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (51, N'111823', N'Viet Nam', N'
Nhẫn 7 sắc cầu vồng', N'Nhẫn 7 sắc cầu vồng
', N'Nhẫn 7 sắc cầu vồng', 1, 9, N'phukien18.jpg', 33000000, 0, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 2)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (52, N'111824', N'Viet Nam', N'Nhẫn đầu lâu', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 9, N'phukien15.jpg', 4000000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 5)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (53, N'111825', N'Viet Nam', N'Dây chuyền đầu trâu', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 6, N'phukien12.jpg', 950000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 1)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (54, N'111826', N'Viet Nam', N'Dây chuyền mặt mỏ neo Asos', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 6, N'phukien9.jpg', 850000, 1, 1, 700000, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 5)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (55, N'111827', N'Viet Nam', N'Vòng chân Asos', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 6, N'phukien6.jpg', 700000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 2)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (56, N'111828', N'Viet Nam', N'Vòng tay Asos', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 9, N'phukien3.jpg', 650000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 2)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (57, N'111829', N'Viet Nam', N'Túi vải xách tay thời trang', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 7, N'tuixach15.jpg', 700000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 1)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (58, N'111830', N'Viet Nam', N'Túi xách du lịch da cao cấp', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 7, N'tuixach12.jpg', 700000, 1, 1, 550000, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 4)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (59, N'111831', N'Viet Nam', N'Áo T-shirt nam với hoa hồng in', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách Đăc điểm: - Áo mỏng nhẹ - Khuy tới tẩn cổ áo - Có túi ngực - Co giãn với kích thước cơ...', N'Áo T-shirt nam với hoa hồng in của Asos đem đến sự tự tin và mới lạ dành cho những tín đồ thời trang muốn thay đổi phong cách

Đăc điểm:

- Áo mỏng nhẹ

- Khuy tới tẩn cổ áo

- Có túi ngực

- Co giãn với kích thước cơ thể

- Có thể sử dụng máy giặt để giặt

- 98% Cotton, 2% Elastane

- Phù hợp với thân hình có kích thước nhỏ hơn 178cm

- Màu trắng

- Xuất xứ: Nhập khẩu', 1, 1, N'image4xxl-5.jpg', 750000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 6)
INSERT [dbo].[products] ([product_id], [product_code], [product_from], [product_name], [description], [description_detail], [menu_id], [category_id], [image_link], [price], [in_stock], [flag_sale], [price_sale], [creater], [editer], [deleted], [created], [modified], [product_status], [discount], [reviews], [provider_id]) VALUES (60, N'111832', N'Viet Nam', N'Áo khoác đen in logo Nike', N'Áo khoác đen in logo Nike đem đến sự năng động và sành điệu với gam màu đen huyền bí sẽ giúp bạn tự tin khi ra đường vào mỗi ngày Đăc điểm: - Chất liệu vải mềm mại - Có dây kéo - Có mũ trùm đầu - Logo in...', N'Áo khoác đen in logo Nike  đem đến sự năng động và sành điệu với gam màu đen huyền bí sẽ giúp bạn tự tin khi ra đường vào mỗi ngày

Đăc điểm:

- Chất liệu vải mềm mại

- Có dây kéo

- Có mũ trùm đầu

- Logo in

- Có túi đựng

- Có thể sử dụng máy giặt để giặt

- 78% Cotton, 22% Polyester

- Phù hợp với thân hình có kích thước nhỏ hơn 188cm

- Màu đen

- Xuất xứ: Nhập khẩu', 1, 1, N'aokhoac16.jpg', 550000, 1, 1, 0, 1, 1, CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 0, 0, 5)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (1, 8, N'item_thumb_1.jpg', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (2, 8, N'item_thumb_2.jpg', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 2, 2)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (3, 8, N'item_thumb_3.jpg', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 3, 3)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (4, 8, N'item_thumb_4.jpg', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 4, 4)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (5, 1, N'shop_item_1.jpg', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 5, 5)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (6, 2, N'shop_item_2.jpg', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 6, 1)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (7, 3, N'shop_item_3.jpg', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 7, 2)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (8, 4, N'shop_item_4.jpg', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 8, 3)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (9, 5, N'shop_item_5.jpg', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 9, 4)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (10, 6, N'shop_item_6.jpg', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 10, 5)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (11, 7, N'shop_item_7.jpg', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (12, 9, N'shop_item_9.jpg', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 2, 2)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (13, 10, N'shop_item_10.jpg', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 3, 3)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (14, 11, N'shop_item_11.jpg', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 4, 4)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (15, 12, N'shop_item_12.jpg', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-03 00:00:00.000' AS DateTime), CAST(N'2000-02-04 00:00:00.000' AS DateTime), 1, 5, 5)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (16, 14, N'image1xxl-1-3e2ac7ae-9be1-42c3-a715-bb170691b9aa.jpg', CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-02 00:00:00.000' AS DateTime), CAST(N'2000-12-02 00:00:00.000' AS DateTime), 1, 6, 1)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (17, 14, N'image2xxl-4d9b959a-d93c-499d-8af0-6dd43213d212.jpg', NULL, CAST(N'2018-03-26 22:03:14.923' AS DateTime), CAST(N'2018-03-26 22:03:14.923' AS DateTime), 1, 7, 2)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (18, 14, N'image4xxl-65038dcc-4ebd-47ce-926f-0a6b76d7f09f.jpg', NULL, CAST(N'2018-03-26 22:04:04.243' AS DateTime), CAST(N'2018-03-26 22:04:04.243' AS DateTime), 1, 8, 3)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (19, 14, N'image1xxl-68298f67-067e-4690-a22a-8fed852b6499.jpg', NULL, CAST(N'2018-03-26 22:04:24.903' AS DateTime), CAST(N'2018-03-26 22:04:24.903' AS DateTime), 1, 9, 4)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (20, 13, N'image4xxl-8.jpg', NULL, CAST(N'2018-03-26 22:04:45.787' AS DateTime), CAST(N'2018-03-26 22:04:45.787' AS DateTime), 1, 10, 5)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (21, 13, N'image4xxl-7.jpg', NULL, CAST(N'2018-03-26 22:05:08.633' AS DateTime), CAST(N'2018-03-26 22:05:08.633' AS DateTime), 1, 1, 1)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (22, 13, N'image2xxl-7.jpg', NULL, CAST(N'2018-03-26 22:05:32.653' AS DateTime), CAST(N'2018-03-26 22:05:32.653' AS DateTime), 1, 2, 2)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (23, 13, N'image1xxl-6.jpg', NULL, CAST(N'2018-03-26 22:05:47.463' AS DateTime), CAST(N'2018-03-26 22:05:47.463' AS DateTime), 1, 3, 3)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (24, 15, N'quan4.jpg', NULL, CAST(N'2018-03-26 22:06:09.090' AS DateTime), CAST(N'2018-03-26 22:06:09.090' AS DateTime), 1, 4, 4)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (25, 15, N'quan7.jpg', NULL, CAST(N'2018-03-26 22:06:27.707' AS DateTime), CAST(N'2018-03-26 22:06:27.707' AS DateTime), 1, 5, 5)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (26, 15, N'quan6.jpg', NULL, CAST(N'2018-03-26 22:06:45.223' AS DateTime), CAST(N'2018-03-26 22:06:45.223' AS DateTime), 1, 6, 1)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (27, 15, N'quan5.jpg', NULL, CAST(N'2018-03-26 22:07:04.003' AS DateTime), CAST(N'2018-03-26 22:07:04.003' AS DateTime), 1, 7, 2)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (28, 16, N'quan10.jpg', NULL, CAST(N'2018-03-26 22:07:33.547' AS DateTime), CAST(N'2018-03-26 22:07:33.547' AS DateTime), 1, 8, 3)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (29, 16, N'quan9.jpg', NULL, CAST(N'2018-03-26 22:07:48.283' AS DateTime), CAST(N'2018-03-26 22:07:48.283' AS DateTime), 1, 9, 4)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (30, 16, N'quan8.jpg', NULL, CAST(N'2018-03-26 22:08:00.027' AS DateTime), CAST(N'2018-03-26 22:08:00.027' AS DateTime), 1, 10, 5)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (31, 17, N'quan3.jpg', NULL, CAST(N'2018-03-26 22:08:14.927' AS DateTime), CAST(N'2018-03-26 22:08:14.927' AS DateTime), 1, 1, 1)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (32, 17, N'quan2.jpg', NULL, CAST(N'2018-03-26 22:08:32.967' AS DateTime), CAST(N'2018-03-26 22:08:32.967' AS DateTime), 1, 2, 2)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (33, 17, N'quan1.jpg', NULL, CAST(N'2018-03-26 22:08:48.003' AS DateTime), CAST(N'2018-03-26 22:08:48.003' AS DateTime), 1, 3, 3)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (34, 18, N'image1xxl-3.jpg', NULL, CAST(N'2018-03-26 22:09:06.007' AS DateTime), CAST(N'2018-03-26 22:09:06.007' AS DateTime), 1, 4, 4)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (35, 18, N'image3xxl-3.jpg', NULL, CAST(N'2018-03-26 22:09:25.797' AS DateTime), CAST(N'2018-03-26 22:09:25.797' AS DateTime), 1, 5, 5)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (36, 18, N'image4xxl-3.jpg', NULL, CAST(N'2018-03-26 22:09:45.900' AS DateTime), CAST(N'2018-03-26 22:09:45.900' AS DateTime), 1, 6, 1)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (37, 18, N'image2xxl-3.jpg', NULL, CAST(N'2018-03-26 22:10:10.530' AS DateTime), CAST(N'2018-03-26 22:10:10.530' AS DateTime), 1, 7, 2)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (38, 19, N'aonu24.jpg', NULL, CAST(N'2018-03-26 22:10:31.673' AS DateTime), CAST(N'2018-03-26 22:10:31.673' AS DateTime), 1, 8, 3)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (39, 19, N'aonu23.jpg', NULL, CAST(N'2018-03-26 22:10:47.243' AS DateTime), CAST(N'2018-03-26 22:10:47.243' AS DateTime), 1, 9, 4)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (40, 19, N'aonu22.jpg', NULL, CAST(N'2018-03-26 22:11:11.333' AS DateTime), CAST(N'2018-03-26 22:11:11.333' AS DateTime), 1, 10, 5)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (41, 20, N'aonu21.jpg', NULL, CAST(N'2018-03-26 22:22:30.547' AS DateTime), CAST(N'2018-03-26 22:22:30.547' AS DateTime), 1, 1, 1)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (42, 20, N'aonu20.jpg', NULL, CAST(N'2018-03-26 22:22:50.170' AS DateTime), CAST(N'2018-03-26 22:22:50.170' AS DateTime), 1, 2, 2)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (43, 20, N'image2xxl-3005b340-9c34-41b3-94c7-a69a9ff3dbca.jpg', NULL, CAST(N'2018-03-26 22:23:05.743' AS DateTime), CAST(N'2018-03-26 22:23:05.743' AS DateTime), 1, 3, 3)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (44, 20, N'aonu19.jpg', NULL, CAST(N'2018-03-26 22:23:31.803' AS DateTime), CAST(N'2018-03-26 22:23:31.803' AS DateTime), 1, 4, 4)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (45, 21, N'aonu15.jpg', NULL, CAST(N'2018-03-26 22:24:11.883' AS DateTime), CAST(N'2018-03-26 22:24:11.883' AS DateTime), 1, 5, 5)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (46, 21, N'aonu14.jpg', NULL, CAST(N'2018-03-26 22:24:26.977' AS DateTime), CAST(N'2018-03-26 22:24:26.977' AS DateTime), 1, 6, 1)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (47, 21, N'aonu13.jpg', NULL, CAST(N'2018-03-26 22:24:45.940' AS DateTime), CAST(N'2018-03-26 22:24:45.940' AS DateTime), 1, 7, 2)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (48, 21, N'aonu12.jpg', NULL, CAST(N'2018-03-26 22:25:02.177' AS DateTime), CAST(N'2018-03-26 22:25:02.177' AS DateTime), 1, 8, 3)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (49, 22, N'aonu11.jpg', NULL, CAST(N'2018-03-26 22:25:17.593' AS DateTime), CAST(N'2018-03-26 22:25:17.593' AS DateTime), 1, 9, 4)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (50, 22, N'aonu8.jpg', NULL, CAST(N'2018-03-26 22:25:32.093' AS DateTime), CAST(N'2018-03-26 22:25:32.093' AS DateTime), 1, 10, 5)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (51, 22, N'aonu10.jpg', NULL, CAST(N'2018-03-26 22:26:04.687' AS DateTime), CAST(N'2018-03-26 22:26:04.687' AS DateTime), 1, 1, 1)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (52, 22, N'image1xxl-25d4d081-699d-49ad-b05c-0535ab4f3b6b.jpg', NULL, CAST(N'2018-03-26 22:26:28.200' AS DateTime), CAST(N'2018-03-26 22:26:28.200' AS DateTime), 1, 2, 2)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (53, 23, N'aonu5.jpg', NULL, CAST(N'2018-03-26 22:26:51.970' AS DateTime), CAST(N'2018-03-26 22:26:51.970' AS DateTime), 1, 3, 3)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (54, 23, N'aonu4.jpg', NULL, CAST(N'2018-03-26 22:27:10.120' AS DateTime), CAST(N'2018-03-26 22:27:10.120' AS DateTime), 1, 4, 4)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (55, 23, N'aonu3.jpg', NULL, CAST(N'2018-03-26 22:27:30.617' AS DateTime), CAST(N'2018-03-26 22:27:30.617' AS DateTime), 1, 5, 5)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (56, 23, N'aonu2.jpg', NULL, CAST(N'2018-03-26 22:28:06.170' AS DateTime), CAST(N'2018-03-26 22:28:06.170' AS DateTime), 1, 6, 1)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (57, 24, N'quannu19.jpg', NULL, CAST(N'2018-03-26 22:28:22.233' AS DateTime), CAST(N'2018-03-26 22:28:22.233' AS DateTime), 1, 7, 2)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (58, 24, N'quannu18.jpg', NULL, CAST(N'2018-03-26 22:29:05.613' AS DateTime), CAST(N'2018-03-26 22:29:05.613' AS DateTime), 1, 8, 3)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (59, 24, N'quannu17.jpg', NULL, CAST(N'2018-03-26 22:29:24.860' AS DateTime), CAST(N'2018-03-26 22:29:24.860' AS DateTime), 1, 9, 4)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (60, 24, N'quannu16.jpg', NULL, CAST(N'2018-03-26 22:29:41.440' AS DateTime), CAST(N'2018-03-26 22:29:41.440' AS DateTime), 1, 10, 5)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (61, 25, N'quannu12.jpg', NULL, CAST(N'2018-03-26 22:30:03.680' AS DateTime), CAST(N'2018-03-26 22:30:03.680' AS DateTime), 1, 1, 1)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (62, 25, N'quannu11.jpg', NULL, CAST(N'2018-03-26 22:30:17.243' AS DateTime), CAST(N'2018-03-26 22:30:17.243' AS DateTime), 1, 2, 2)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (63, 25, N'quannu10.jpg', NULL, CAST(N'2018-03-26 22:30:33.100' AS DateTime), CAST(N'2018-03-26 22:30:33.100' AS DateTime), 1, 3, 3)
INSERT [dbo].[products_images] ([products_image_id], [product_id], [url], [deleted], [created], [modified], [status], [color_id], [size_id]) VALUES (64, 25, N'quannu9.jpg', NULL, CAST(N'2018-03-26 22:30:51.733' AS DateTime), CAST(N'2018-03-26 22:30:51.733' AS DateTime), 1, 4, 4)
SET IDENTITY_INSERT [dbo].[provider] ON 

INSERT [dbo].[provider] ([provider_id], [provider_name], [address], [email], [phone], [status]) VALUES (1, N'Adiddas', N'Hà Nội', N'adiddas@gmail.com', N'0423456786', 1)
INSERT [dbo].[provider] ([provider_id], [provider_name], [address], [email], [phone], [status]) VALUES (2, N'Lego', N'Hà Nội', N'lego@gmail.com', N'0487656987', 1)
INSERT [dbo].[provider] ([provider_id], [provider_name], [address], [email], [phone], [status]) VALUES (3, N'Nike', N'Hà Nội', N'nike@gmail.com', N'0487645632', 1)
INSERT [dbo].[provider] ([provider_id], [provider_name], [address], [email], [phone], [status]) VALUES (4, N'Tommy', N'Hồ Chí Minh', N'tommy@gmail.com', N'0867854321', 1)
INSERT [dbo].[provider] ([provider_id], [provider_name], [address], [email], [phone], [status]) VALUES (5, N'CS Fashion', N'Hồ Chí Minh', N'fashion@gmail.com', N'0845678398', 1)
INSERT [dbo].[provider] ([provider_id], [provider_name], [address], [email], [phone], [status]) VALUES (6, N'Religion', N'Hồ Chí Minh', N'religion@gmail.com', N'0856743965', 1)
INSERT [dbo].[provider] ([provider_id], [provider_name], [address], [email], [phone], [status]) VALUES (7, N'Nestle', N'Hà Nội', N'nestle@gmail.com', N'0435673198', 1)
INSERT [dbo].[provider] ([provider_id], [provider_name], [address], [email], [phone], [status]) VALUES (8, N'Asos', N'Hồ Chí Minh', N'asos@gmail.com', N'0856789345', 1)
INSERT [dbo].[provider] ([provider_id], [provider_name], [address], [email], [phone], [status]) VALUES (9, N'Nem', N'Hà Nội', N'nem@gmail.com', N'0498754612', 1)
SET IDENTITY_INSERT [dbo].[provider] OFF
SET IDENTITY_INSERT [dbo].[size] ON 

INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (1, N'S', NULL, 1, N'small')
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (2, N'M', NULL, 1, N'medium')
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (3, N'L', NULL, 1, N'large')
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (4, N'XL', NULL, 1, N'xlarge')
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (5, N'XXL', NULL, 1, N'xxlarge')
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (6, N'26', NULL, 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (7, N'27', NULL, 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (8, N'28', NULL, 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (9, N'29', NULL, 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (10, N'30', NULL, 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (11, N'31', NULL, 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (12, N'32', NULL, 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (13, N'33', NULL, 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (14, N'34', NULL, 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (15, N'1', N'Dưới 5 Kg', 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (16, N'2', N'Dưới 6 kg', 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (17, N'3', N'8-10 kg', 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (18, N'4', N'11-13 kg', 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (19, N'5', N'14-16 kg', 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (20, N'6', N'17-19 kg', 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (21, N'7', N'20-22 kg', 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (22, N'8', N'22-25 kg', 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (23, N'9', N'25-27 kg', 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (24, N'10', N'27-30 kg', 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (25, N'11', N'30-33 kg', 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (26, N'12', N'34-37 kg', 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (27, N'13', N'37 -40 kg', 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (28, N'14', N'40-43 kg', 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (29, N'15', N'43-46 kg', 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (30, N'16', N'46-50 kg', 1, NULL)
INSERT [dbo].[size] ([size_id], [size_name], [descriptions], [status], [natation]) VALUES (31, N'bbb', N'hhh', 0, NULL)
SET IDENTITY_INSERT [dbo].[size] OFF
SET IDENTITY_INSERT [dbo].[User1] ON 

INSERT [dbo].[User1] ([UserId], [UserName], [PassWord], [Email], [Addres], [Phone], [Status]) VALUES (1, N'abcd', N'1234', N'phuc@gmail.com', N'abcdd', N'876543', 1)
INSERT [dbo].[User1] ([UserId], [UserName], [PassWord], [Email], [Addres], [Phone], [Status]) VALUES (2, N'1234', N'1234', NULL, NULL, NULL, 1)
INSERT [dbo].[User1] ([UserId], [UserName], [PassWord], [Email], [Addres], [Phone], [Status]) VALUES (3, N'nguyenthituyenlcseifofrofw', N'1234', NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[User1] OFF
/****** Object:  Index [UQ_color_product_id]    Script Date: 4/18/2018 11:10:38 PM ******/
ALTER TABLE [dbo].[product_color] ADD  CONSTRAINT [UQ_color_product_id] UNIQUE NONCLUSTERED 
(
	[color_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ_size_product_id]    Script Date: 4/18/2018 11:10:38 PM ******/
ALTER TABLE [dbo].[product_size] ADD  CONSTRAINT [UQ_size_product_id] UNIQUE NONCLUSTERED 
(
	[size_id] ASC,
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[bill_details] ADD  DEFAULT ((0)) FOR [quantity]
GO
ALTER TABLE [dbo].[bill_details] ADD  DEFAULT ((0)) FOR [total_price]
GO
ALTER TABLE [dbo].[bills] ADD  DEFAULT ((0)) FOR [total_price]
GO
ALTER TABLE [dbo].[bills] ADD  DEFAULT (NULL) FOR [deleted]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[roles] ADD  DEFAULT (NULL) FOR [deleted]
GO
ALTER TABLE [dbo].[user_infos] ADD  DEFAULT (NULL) FOR [deleted]
GO
ALTER TABLE [dbo].[bill_details]  WITH CHECK ADD FOREIGN KEY([bill_id])
REFERENCES [dbo].[bills] ([bill_id])
GO
ALTER TABLE [dbo].[bill_details]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[bills]  WITH CHECK ADD FOREIGN KEY([transaction_id])
REFERENCES [dbo].[transactions] ([transaction_id])
GO
ALTER TABLE [dbo].[bills]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[news]  WITH CHECK ADD FOREIGN KEY([menu_id])
REFERENCES [dbo].[menus] ([menu_id])
GO
ALTER TABLE [dbo].[product_color]  WITH CHECK ADD FOREIGN KEY([color_id])
REFERENCES [dbo].[color] ([color_id])
GO
ALTER TABLE [dbo].[product_color]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[product_size]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[product_size]  WITH CHECK ADD FOREIGN KEY([size_id])
REFERENCES [dbo].[size] ([size_id])
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[categories] ([category_id])
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD FOREIGN KEY([menu_id])
REFERENCES [dbo].[menus] ([menu_id])
GO
ALTER TABLE [dbo].[products_images]  WITH CHECK ADD FOREIGN KEY([color_id])
REFERENCES [dbo].[color] ([color_id])
GO
ALTER TABLE [dbo].[products_images]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[products] ([product_id])
GO
ALTER TABLE [dbo].[products_images]  WITH CHECK ADD FOREIGN KEY([size_id])
REFERENCES [dbo].[size] ([size_id])
GO
ALTER TABLE [dbo].[transactions]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[user_infos]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[user_roles]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([role_id])
GO
ALTER TABLE [dbo].[user_roles]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[roles] ([role_id])
GO
USE [master]
GO
ALTER DATABASE [Cosmetic] SET  READ_WRITE 
GO
