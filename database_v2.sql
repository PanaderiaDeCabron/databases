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
/****** Object:  Table [dbo].[Categorias]    Script Date: 29/04/2021 10:58:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[id_Categoria] [int] NOT NULL,
	[NombreCat] [varchar](50) NULL,
	[DescripcionCat] [varchar](150) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[id_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 29/04/2021 10:58:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ID_Producto] [int] IDENTITY(1,1) NOT NULL,
	[id_Categoria] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[ImagenProd] [varchar](max) NULL,
	[Stock] [int] NULL,
	[Precio] [int] NULL,
	
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[ID_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 29/04/2021 10:58:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[ID_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[IdTipo] [int] NOT NULL,
	[NombreUsr] [varchar](50) NULL,
	[PassUsr] [varchar](50) NULL,
	[ImagenUsr] [varchar](50) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[ID_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoUsuario]    Script Date: 29/04/2021 10:58:40 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoUsuario](
	[IdTipo] [int] NOT NULL,
	[Tipo] [varchar](50) NULL,
 CONSTRAINT [PK_TipoUsuario] PRIMARY KEY CLUSTERED 
(
	[IdTipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[ID_Compra] [int] IDENTITY(1,1) NOT NULL,
	[ID_Usuario] [int] NOT NULL,
	[ID_Producto] [int] NOT NULL,
	[Cantidad] [int] NULL,
	[FechaCom] [datetime] NOT NULL,
	[Estado] [varchar](50) NULL,
	[Total] [int] NULL,
 CONSTRAINT [PK_Productos2] PRIMARY KEY CLUSTERED 
(
	[ID_Compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO

INSERT [dbo].[Categorias] ([id_Categoria], [NombreCat]) VALUES (1, N'Consumibles')
INSERT [dbo].[Categorias] ([id_Categoria], [NombreCat]) VALUES (2, N'Aparatos')
INSERT [dbo].[Categorias] ([id_Categoria], [NombreCat]) VALUES (3, N'Decoración')
INSERT [dbo].[Categorias] ([id_Categoria], [NombreCat]) VALUES (4, N'Varios')
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (1, N'Cuernito', 20, N'/', 15, 1)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (2, N'Dona', 20, N'', 15, 1)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (3, N'Empanada', 20, N'', 15, 1)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (4, N'Mantecada', 20, N'/', 15, 1)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (5, N'Negrito', 20, N'', 15, 1)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (6, N'Espejo', 20, N'', 15, 1)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (7, N'Oreja', 20, N'/', 15, 1)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (8, N'Picon', 20, N'', 15, 1)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (9, N'Galleta', 20, N'', 15, 1)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (10, N'Barquillo', 20, N'/', 15, 1)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (11, N'Campechana', 20, N'', 15, 1)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (12, N'Concha', 20, N'', 15, 1)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (13, N'Puerquito', 20, N'/', 15, 1)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (14, N'Sema', 77, N'', 20, 1)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (15, N'Empanada', 20, N'', 15, 1)

INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (16, N'Batidora', 50, N'/', 15, 2)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (17, N'Mezcladora', 35, N'', 15, 2)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (18, N'Volteadora',  53, N'', 15, 2)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (19, N'Calentadora', 22, N'/', 15, 2)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (20, N'Enfriadora', 77, N'', 15, 2)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (21, N'Envolvedora', 13, N'', 15, 2)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (22, N'Aplastadora', 22, N'/', 15, 2)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (23, N'Ponchadora', 77, N'', 15, 2)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (24, N'Infladora', 13, N'', 15, 2)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (25, N'HornitoMicro', 22, N'/', 15, 2)

INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (26, N'Serpentinas', 10, N'/', 15, 2)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (27, N'Globo', 40, N'', 15, 2)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (28, N'Cortinas', 20, N'', 15, 2)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (29, N'Foco Led', 20, N'/', 15, 2)

INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (30, N'Aplastadora', 22, N'/', 15, 2)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (31, N'Ponchadora', 77, N'', 15, 2)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (32, N'Infladora', 13, N'', 15, 2)
INSERT [dbo].[Productos] ([ID_Producto], [Nombre], [Stock], [ImagenProd], [Precio], [id_Categoria]) VALUES (33, N'HornitoMicro', 22, N'/', 15, 2)
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([ID_Usuario], [NombreUsr], [PassUsr], [IdTipo]) VALUES (1, N'Rodrigo', N'password123', 1)
INSERT [dbo].[Usuario] ([ID_Usuario], [NombreUsr], [PassUsr], [IdTipo]) VALUES (2, N'Oscar', N'password123', 1)
INSERT [dbo].[Usuario] ([ID_Usuario], [NombreUsr], [PassUsr], [IdTipo]) VALUES (3, N'Antonio', N'password123', 2)
INSERT [dbo].[Usuario] ([ID_Usuario], [NombreUsr], [PassUsr], [IdTipo]) VALUES (5, N'Dalí', N'password123', 2)
INSERT [dbo].[Usuario] ([ID_Usuario], [NombreUsr], [PassUsr], [IdTipo]) VALUES (4, N'Melissa', N'password123', 3)
INSERT [dbo].[Usuario] ([ID_Usuario], [NombreUsr], [PassUsr], [IdTipo]) VALUES (6, N'Alejandro', N'password123', 3)
INSERT [dbo].[Usuario] ([ID_Usuario], [NombreUsr], [PassUsr], [IdTipo]) VALUES (7, N'Jose', N'password123', 3)
INSERT [dbo].[Usuario] ([ID_Usuario], [NombreUsr], [PassUsr], [IdTipo]) VALUES (8, N'Pepe', N'password123', 3)
INSERT [dbo].[Usuario] ([ID_Usuario], [NombreUsr], [PassUsr], [IdTipo]) VALUES (9, N'Tony', N'password123', 3)
INSERT [dbo].[Usuario] ([ID_Usuario], [NombreUsr], [PassUsr], [IdTipo]) VALUES (10, N'Eduardo', N'password123', 3)
INSERT [dbo].[Usuario] ([ID_Usuario], [NombreUsr], [PassUsr], [IdTipo]) VALUES (11, N'Isaac', N'password123', 3)
INSERT [dbo].[Usuario] ([ID_Usuario], [NombreUsr], [PassUsr], [IdTipo]) VALUES (12, N'Carlos', N'password123', 3)
INSERT [dbo].[Usuario] ([ID_Usuario], [NombreUsr], [PassUsr], [IdTipo]) VALUES (13, N'Julio', N'password123', 3)
INSERT [dbo].[Usuario] ([ID_Usuario], [NombreUsr], [PassUsr], [IdTipo]) VALUES (14, N'Leonardo', N'password123', 3)
INSERT [dbo].[Usuario] ([ID_Usuario], [NombreUsr], [PassUsr], [IdTipo]) VALUES (15, N'Saul', N'password123', 3)
INSERT [dbo].[Usuario] ([ID_Usuario], [NombreUsr], [PassUsr], [IdTipo]) VALUES (16, N'Luna', N'password123', 3)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
INSERT [dbo].[TipoUsuario] ([IdTipo], [Tipo]) VALUES (1, N'Admin')
INSERT [dbo].[TipoUsuario] ([IdTipo], [Tipo]) VALUES (2, N'Storer')
INSERT [dbo].[TipoUsuario] ([IdTipo], [Tipo]) VALUES (3, N'Client')
GO

ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos2_Categorias] FOREIGN KEY([id_Categoria])
REFERENCES [dbo].[Categorias] ([id_Categoria])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos2_Categorias]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_TipoUsuario] FOREIGN KEY([IdTipo])
REFERENCES [dbo].[TipoUsuario] ([IdTipo])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_TipoUsuario]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_UserId] FOREIGN KEY([ID_Usuario])
REFERENCES [dbo].[Usuario] ([ID_Usuario])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Usuario_UserId]
GO
ALTER TABLE [dbo].[Compra]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductId] FOREIGN KEY([ID_Producto])
REFERENCES [dbo].[Productos] ([ID_Producto])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Product_ProductId]
GO

USE [master]
GO
ALTER DATABASE [PanDeCabron] SET  READ_WRITE 
GO
