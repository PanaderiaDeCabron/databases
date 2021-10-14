USE [master]
GO
/****** Object:  Database [PanDeCabron]    Script Date: 29/04/2021 10:58:40 p. m. ******/
CREATE DATABASE [PanDeCabron]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PanDeCabron', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PanDeCabron.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PanDeCabron_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PanDeCabron_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PanDeCabron] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PanDeCabron].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PanDeCabron] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PanDeCabron] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PanDeCabron] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PanDeCabron] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PanDeCabron] SET ARITHABORT OFF 
GO
ALTER DATABASE [PanDeCabron] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PanDeCabron] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PanDeCabron] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PanDeCabron] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PanDeCabron] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PanDeCabron] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PanDeCabron] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PanDeCabron] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PanDeCabron] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PanDeCabron] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PanDeCabron] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PanDeCabron] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PanDeCabron] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PanDeCabron] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PanDeCabron] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PanDeCabron] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PanDeCabron] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PanDeCabron] SET RECOVERY FULL 
GO
ALTER DATABASE [PanDeCabron] SET  MULTI_USER 
GO
ALTER DATABASE [PanDeCabron] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PanDeCabron] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PanDeCabron] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PanDeCabron] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PanDeCabron] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PanDeCabron] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'PanDeCabron', N'ON'
GO
ALTER DATABASE [PanDeCabron] SET QUERY_STORE = OFF
GO
USE [PanDeCabron]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 29/04/2021 10:58:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[idCategory] [int] NOT NULL,
	[nameCategory] [varchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[idCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 29/04/2021 10:58:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[idProduct] [int] IDENTITY(1,1) NOT NULL,
	[nameProduct] [varchar](50) NULL,
	[stockProduct] [int] NULL,
	[imgProduct] [varchar](max) NULL,
	[priceProduct] [int] NULL,
	[idCategory] [int] NOT NULL,
 CONSTRAINT [PK_Products2] PRIMARY KEY CLUSTERED 
(
	[idProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 29/04/2021 10:58:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[idUser] [int] IDENTITY(1,1) NOT NULL,
	[nameUser] [varchar](50) NULL,
	[passUser] [varchar](50) NULL,
	[idUserType] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTypes]    Script Date: 29/04/2021 10:58:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTypes](
	[idUserType] [int] NOT NULL,
	[nameUserType] [varchar](50) NULL,
 CONSTRAINT [PK_UserTypes] PRIMARY KEY CLUSTERED 
(
	[idUserType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Sells](
	[idSell] [int] IDENTITY(1,1) NOT NULL,
	[sellDate] [datetime] NOT NULL,
	[nameProduct] [varchar](50) NULL,
	[idCategory] [int] NOT NULL,
	[idUser] [int] IDENTITY(1,1) NOT NULL,
	[nameUser] [varchar](50) NULL,
	[stockProduct] [int] NULL,
	[priceProduct] [int] NULL,
 CONSTRAINT [PK_Products2] PRIMARY KEY CLUSTERED 
(
	[idSell] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Categories] ([idCategory], [nameCategory]) VALUES (1, N'Consumibles')
INSERT [dbo].[Categories] ([idCategory], [nameCategory]) VALUES (2, N'Aparatos')
INSERT [dbo].[Categories] ([idCategory], [nameCategory]) VALUES (3, N'Decoración')
INSERT [dbo].[Categories] ([idCategory], [nameCategory]) VALUES (4, N'Varios')
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (1, N'Cuernito', 20, N'/', 15, 1)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (2, N'Dona', 20, N'', 15, 1)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (3, N'Empanada', 20, N'', 15, 1)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (4, N'Mantecada', 20, N'/', 15, 1)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (5, N'Negrito', 20, N'', 15, 1)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (6, N'Espejo', 20, N'', 15, 1)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (7, N'Oreja', 20, N'/', 15, 1)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (8, N'Picon', 20, N'', 15, 1)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (9, N'Galleta', 20, N'', 15, 1)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (10, N'Barquillo', 20, N'/', 15, 1)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (11, N'Campechana', 20, N'', 15, 1)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (12, N'Concha', 20, N'', 15, 1)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (13, N'Puerquito', 20, N'/', 15, 1)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (14, N'Sema', 77, N'', 20, 1)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (15, N'Empanada', 20, N'', 15, 1)

INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (16, N'Batidora', 50, N'/', 15, 2)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (17, N'Mezcladora', 35, N'', 15, 2)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (18, N'Volteadora', , 53'', 15, 2)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (19, N'Calentadora', 22, N'/', 15, 2)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (20, N'Enfriadora', 77, N'', 15, 2)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (21, N'Envolvedora', 13, N'', 15, 2)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (22, N'Aplastadora', 22, N'/', 15, 2)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (23, N'Ponchadora', 77, N'', 15, 2)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (24, N'Infladora', 13, N'', 15, 2)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (25, N'HornitoMicro', 22, N'/', 15, 2)

INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (26, N'Serpentinas', 10, N'/', 15, 2)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (27, N'Globo', 40 N'', 15, 2)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (28, N'Cortinas', 20, N'', 15, 2)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (29, N'Foco Led', 20, N'/', 15, 2)

INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (30, N'Aplastadora', 22, N'/', 15, 2)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (31, N'Ponchadora', 77, N'', 15, 2)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (32, N'Infladora', 13, N'', 15, 2)
INSERT [dbo].[Products] ([idProduct], [nameProduct], [stockProduct], [imgProduct], [priceProduct], [idCategory]) VALUES (33, N'HornitoMicro', 22, N'/', 15, 2)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([idUser], [nameUser], [passUser], [idUserType]) VALUES (1, N'Rodrigo', N'password123', 1)
INSERT [dbo].[Users] ([idUser], [nameUser], [passUser], [idUserType]) VALUES (2, N'Oscar', N'password123', 1)

INSERT [dbo].[Users] ([idUser], [nameUser], [passUser], [idUserType]) VALUES (3, N'Antonio', N'password123', 2)
INSERT [dbo].[Users] ([idUser], [nameUser], [passUser], [idUserType]) VALUES (5, N'Dalí', N'password123', 2)

INSERT [dbo].[Users] ([idUser], [nameUser], [passUser], [idUserType]) VALUES (4, N'Melissa', N'password123', 3)
INSERT [dbo].[Users] ([idUser], [nameUser], [passUser], [idUserType]) VALUES (6, N'Alejandro', N'password123', 3)
INSERT [dbo].[Users] ([idUser], [nameUser], [passUser], [idUserType]) VALUES (7, N'Jose', N'password123', 3)
INSERT [dbo].[Users] ([idUser], [nameUser], [passUser], [idUserType]) VALUES (8, N'Pepe', N'password123', 3)
INSERT [dbo].[Users] ([idUser], [nameUser], [passUser], [idUserType]) VALUES (9, N'Tony', N'password123', 3)
INSERT [dbo].[Users] ([idUser], [nameUser], [passUser], [idUserType]) VALUES (10, N'Eduardo', N'password123', 3)
INSERT [dbo].[Users] ([idUser], [nameUser], [passUser], [idUserType]) VALUES (11, N'Isaac', N'password123', 3)
INSERT [dbo].[Users] ([idUser], [nameUser], [passUser], [idUserType]) VALUES (12, N'Carlos', N'password123', 3)
INSERT [dbo].[Users] ([idUser], [nameUser], [passUser], [idUserType]) VALUES (13, N'Julio', N'password123', 3)
INSERT [dbo].[Users] ([idUser], [nameUser], [passUser], [idUserType]) VALUES (14, N'Leonardo', N'password123', 3)
INSERT [dbo].[Users] ([idUser], [nameUser], [passUser], [idUserType]) VALUES (15, N'Saul', N'password123', 3)
INSERT [dbo].[Users] ([idUser], [nameUser], [passUser], [idUserType]) VALUES (16, N'Luna', N'password123', 3)
GO
INSERT [dbo].[UserTypes] ([idUserType], [nameUserType]) VALUES (1, N'Admin')
INSERT [dbo].[UserTypes] ([idUserType], [nameUserType]) VALUES (2, N'Storer')
INSERT [dbo].[UserTypes] ([idUserType], [nameUserType]) VALUES (3, N'Client')
GO

ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products2_Categories] FOREIGN KEY([idCategory])
REFERENCES [dbo].[Categories] ([idCategory])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products2_Categories]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserTypes] FOREIGN KEY([idUserType])
REFERENCES [dbo].[UserTypes] ([idUserType])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserTypes]
GO
ALTER TABLE [dbo].[Sells]  WITH CHECK ADD  CONSTRAINT [FK_Users_UserId] FOREIGN KEY([idUser])
REFERENCES [dbo].[Users] ([idUser])
GO
ALTER TABLE [dbo].[Sells] CHECK CONSTRAINT [FK_Users_UserId]
GO
ALTER TABLE [dbo].[Sells]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductId] FOREIGN KEY([idUser])
REFERENCES [dbo].[Products] ([idProduct])
GO
ALTER TABLE [dbo].[Sells] CHECK CONSTRAINT [FK_Product_ProductId]
GO

USE [master]
GO
ALTER DATABASE [PanDeCabron] SET  READ_WRITE 
GO
