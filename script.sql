USE [master]
GO
/****** Object:  Database [Prj301_Hotel]    Script Date: 3/23/2022 11:11:39 PM ******/
CREATE DATABASE [Prj301_Hotel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Prj301_Hotel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Prj301_Hotel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Prj301_Hotel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Prj301_Hotel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Prj301_Hotel] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Prj301_Hotel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Prj301_Hotel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET ARITHABORT OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Prj301_Hotel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Prj301_Hotel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Prj301_Hotel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Prj301_Hotel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Prj301_Hotel] SET  MULTI_USER 
GO
ALTER DATABASE [Prj301_Hotel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Prj301_Hotel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Prj301_Hotel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Prj301_Hotel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Prj301_Hotel] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Prj301_Hotel] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Prj301_Hotel] SET QUERY_STORE = OFF
GO
USE [Prj301_Hotel]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/23/2022 11:11:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](255) NULL,
	[password] [varchar](255) NULL,
	[email] [varchar](80) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking_Detail]    Script Date: 3/23/2022 11:11:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking_Detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[custID] [int] NULL,
	[roomID] [int] NULL,
	[servicesID] [int] NULL,
	[checkin] [nvarchar](50) NULL,
	[checkout] [nvarchar](50) NULL,
	[guest] [int] NULL,
	[Custormer Name] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Telephone] [nchar](10) NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Zip] [nvarchar](50) NULL,
	[total] [int] NULL,
	[Request] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room]    Script Date: 3/23/2022 11:11:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[guest] [int] NULL,
	[square] [int] NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_room] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[services]    Script Date: 3/23/2022 11:11:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[services](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[price] [money] NULL,
	[time] [nvarchar](50) NULL,
 CONSTRAINT [PK_services] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([uID], [username], [password], [email]) VALUES (1, N'JohnLorenz', N'12345678', N'johnloren@gmail.com')
INSERT [dbo].[Account] ([uID], [username], [password], [email]) VALUES (2, N'ChiLinh', N'11112222', N'chilinh@gmail.com')
INSERT [dbo].[Account] ([uID], [username], [password], [email]) VALUES (3, N'ErickChipp', N'abcd012345', N'erickchipp@gmail.com')
INSERT [dbo].[Account] ([uID], [username], [password], [email]) VALUES (4, N'CammieKacheler', N'joejoejoe', N'jeojeojeo@gmail.com')
INSERT [dbo].[Account] ([uID], [username], [password], [email]) VALUES (5, N'EmorBenz', N'@@@123@@@', N'emorbenz@gmail.com')
INSERT [dbo].[Account] ([uID], [username], [password], [email]) VALUES (6, N'abc', N'abcabcabc', N'abc@gmail.com')
INSERT [dbo].[Account] ([uID], [username], [password], [email]) VALUES (7, N'admin', N'admin', N'admin@gmail.com')
INSERT [dbo].[Account] ([uID], [username], [password], [email]) VALUES (8, N'bbbb', N'2222', N'nguyenlinhchitqpf@gmail.com')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Booking_Detail] ON 

INSERT [dbo].[Booking_Detail] ([id], [custID], [roomID], [servicesID], [checkin], [checkout], [guest], [Custormer Name], [Email], [Telephone], [Address], [City], [Country], [Zip], [total], [Request]) VALUES (2, 2, 1, 3, N'2022-03-22', N'2022-03-22', 2, N'wwwwwww', N'nguyenlinhchitqpf@gmail.com', N'0974487331', N'd', N'Ha Noi', N'e', N'11111111122222', 444, N'111')
INSERT [dbo].[Booking_Detail] ([id], [custID], [roomID], [servicesID], [checkin], [checkout], [guest], [Custormer Name], [Email], [Telephone], [Address], [City], [Country], [Zip], [total], [Request]) VALUES (3, 2, 1, 4, N'2022-03-22', N'2022-03-22', 2, N'wwwwwww', N'nguyenlinhchitqpf@gmail.com', N'0974487331', N'd', N'Ha Noi', N'e', N'11111111122222', 444, N'111')
INSERT [dbo].[Booking_Detail] ([id], [custID], [roomID], [servicesID], [checkin], [checkout], [guest], [Custormer Name], [Email], [Telephone], [Address], [City], [Country], [Zip], [total], [Request]) VALUES (4, 2, 1, 5, N'2022-03-22', N'2022-03-22', 2, N'wwwwwww', N'nguyenlinhchitqpf@gmail.com', N'0974487331', N'd', N'Ha Noi', N'e', N'11111111122222', 444, N'111')
INSERT [dbo].[Booking_Detail] ([id], [custID], [roomID], [servicesID], [checkin], [checkout], [guest], [Custormer Name], [Email], [Telephone], [Address], [City], [Country], [Zip], [total], [Request]) VALUES (5, 2, 1, 6, N'2022-03-22', N'2022-03-22', 2, N'wwwwwww', N'nguyenlinhchitqpf@gmail.com', N'0974487331', N'd', N'Ha Noi', N'e', N'11111111122222', 444, N'111')
INSERT [dbo].[Booking_Detail] ([id], [custID], [roomID], [servicesID], [checkin], [checkout], [guest], [Custormer Name], [Email], [Telephone], [Address], [City], [Country], [Zip], [total], [Request]) VALUES (6, 2, 1, 7, N'2022-03-22', N'2022-03-22', 2, N'wwwwwww', N'nguyenlinhchitqpf@gmail.com', N'0974487331', N'd', N'Ha Noi', N'e', N'11111111122222', 444, N'111')
INSERT [dbo].[Booking_Detail] ([id], [custID], [roomID], [servicesID], [checkin], [checkout], [guest], [Custormer Name], [Email], [Telephone], [Address], [City], [Country], [Zip], [total], [Request]) VALUES (7, 2, 1, 8, N'2022-03-22', N'2022-03-22', 2, N'wwwwwww', N'nguyenlinhchitqpf@gmail.com', N'0974487331', N'd', N'Ha Noi', N'e', N'11111111122222', 444, N'111')
SET IDENTITY_INSERT [dbo].[Booking_Detail] OFF
GO
SET IDENTITY_INSERT [dbo].[room] ON 

INSERT [dbo].[room] ([id], [name], [image], [price], [guest], [square], [description]) VALUES (1, N'Superior Soble Room', N'images/room1.jpg', 100.0000, 2, 110, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.')
INSERT [dbo].[room] ([id], [name], [image], [price], [guest], [square], [description]) VALUES (2, N'Luxury Room', N'images/room4.jpg', 160.0000, 4, 100, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.')
INSERT [dbo].[room] ([id], [name], [image], [price], [guest], [square], [description]) VALUES (3, N'Standard Room', N'images/room7.jpg', 110.0000, 3, 70, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.')
INSERT [dbo].[room] ([id], [name], [image], [price], [guest], [square], [description]) VALUES (4, N'Tripper Room', N'images/room5.jpg', 120.0000, 2, 80, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.')
INSERT [dbo].[room] ([id], [name], [image], [price], [guest], [square], [description]) VALUES (5, N'Apartment', N'images/room3.jpg', 130.0000, 5, 120, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.')
INSERT [dbo].[room] ([id], [name], [image], [price], [guest], [square], [description]) VALUES (14, N'Classic Room', N'images/rooma.jpg', 110.0000, 3, 90, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.')
INSERT [dbo].[room] ([id], [name], [image], [price], [guest], [square], [description]) VALUES (15, N'Studio Suite', N'images/roomb.jpg', 150.0000, 4, 100, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.')
INSERT [dbo].[room] ([id], [name], [image], [price], [guest], [square], [description]) VALUES (16, N'Deluxe Room', N'images/roomc.jpg', 100.0000, 3, 120, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.')
INSERT [dbo].[room] ([id], [name], [image], [price], [guest], [square], [description]) VALUES (17, N'King Room', N'images/room8.jpg', 150.0000, 2, 130, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.')
INSERT [dbo].[room] ([id], [name], [image], [price], [guest], [square], [description]) VALUES (18, N'Single Room', N'images/room9.jpg', 100.0000, 2, 110, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.')
INSERT [dbo].[room] ([id], [name], [image], [price], [guest], [square], [description]) VALUES (19, N'Cabana Room', N'images/room2.jpg', 90.0000, 3, 90, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.')
INSERT [dbo].[room] ([id], [name], [image], [price], [guest], [square], [description]) VALUES (20, N'President Room', N'images/room6.jpg', 200.0000, 1, 160, N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vel molestie nisl. Duis ac mi leo.')
SET IDENTITY_INSERT [dbo].[room] OFF
GO
SET IDENTITY_INSERT [dbo].[services] ON 

INSERT [dbo].[services] ([id], [name], [price], [time]) VALUES (1, N'Buffet', 50.0000, N'/Guest/Time')
INSERT [dbo].[services] ([id], [name], [price], [time]) VALUES (3, N'Launry', 10.0000, N'/Guest/Night')
INSERT [dbo].[services] ([id], [name], [price], [time]) VALUES (4, N'Car Rental', 30.0000, N'/Guest/Night')
INSERT [dbo].[services] ([id], [name], [price], [time]) VALUES (5, N'Breakfast', 10.0000, N'/Guest/Time')
INSERT [dbo].[services] ([id], [name], [price], [time]) VALUES (6, N'Sea View', 10.0000, N'/Guest/Night')
INSERT [dbo].[services] ([id], [name], [price], [time]) VALUES (7, N'Satellite TV', 50.0000, N'/Guest/Trip')
INSERT [dbo].[services] ([id], [name], [price], [time]) VALUES (8, N'Wifi', 12.0000, N'/Guest/Night')
SET IDENTITY_INSERT [dbo].[services] OFF
GO
ALTER TABLE [dbo].[Booking_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Detail_Account] FOREIGN KEY([custID])
REFERENCES [dbo].[Account] ([uID])
GO
ALTER TABLE [dbo].[Booking_Detail] CHECK CONSTRAINT [FK_Booking_Detail_Account]
GO
ALTER TABLE [dbo].[Booking_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Detail_room] FOREIGN KEY([roomID])
REFERENCES [dbo].[room] ([id])
GO
ALTER TABLE [dbo].[Booking_Detail] CHECK CONSTRAINT [FK_Booking_Detail_room]
GO
ALTER TABLE [dbo].[Booking_Detail]  WITH CHECK ADD  CONSTRAINT [FK_Booking_Detail_services] FOREIGN KEY([servicesID])
REFERENCES [dbo].[services] ([id])
GO
ALTER TABLE [dbo].[Booking_Detail] CHECK CONSTRAINT [FK_Booking_Detail_services]
GO
USE [master]
GO
ALTER DATABASE [Prj301_Hotel] SET  READ_WRITE 
GO
