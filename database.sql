/*  Creacion de la Primera Base de datos PanDeCabron     */
USE [master]
GO
CREATE DATABASE [PanDeCabron]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PanDeCabron', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PanDeCabron.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Beelectronics_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\PanDeCabron_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
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
/*   Creacion Tabla Categorias: Table [dbo].[Categorias]   */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[Id_Categoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCat] [varchar](50) NULL,
	[DescripcionCat] [varchar](50) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[Id_Categoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Creacion Tabla Productos: Table [dbo].[Productos]   */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ID_Producto] [int] IDENTITY(1,1) NOT NULL,
	[IdCategoria] [int] NOT NULL,
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
/*  Creacion Tabla Usuario: Table [dbo].[Usuario]  */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[ID_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[IdTipo] [int] NOT NULL,
	[NombreUsr] [varchar](50) NULL,
	[PassUsr] [varchar](50) NULL,
	[ImagenUsr] [varchar](max) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[ID_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Creacion Tabla TipoUsuario: Table [dbo].[Usuario] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoUsuario](
	[ID_Tipo] [int] IDENTITY(1,1) NOT NULL,
	[Tipo] [varchar](50) NULL,
 CONSTRAINT [PK_TipoUsuario] PRIMARY KEY CLUSTERED 
(
	[ID_Tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/* Creacion Tabla Compra: Table [dbo].[Compra] */
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compra](
	[ID_Compra] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NOT NULL,
	[idProducto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[FechaCom] [date] NULL,
	[Estado] [varchar](50) NULL,
	[Total] [int] NULL,
CONSTRAINT [PK_Compra] PRIMARY KEY CLUSTERED
(
	[ID_Compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

/* INSERT DATOS CATEGORIAS*/
GO
INSERT [dbo].[Categorias] ([Id_Categoria], [NombreCat], [DescripcionCat]) VALUES (1, N'Panes', N'Alimentos de la panaderia, consumibles')
INSERT [dbo].[Categorias] ([Id_Categoria], [NombreCat], [DescripcionCat]) VALUES (2, N'Aparatos', N'Aparatos utilizados para la reposteria')
INSERT [dbo].[Categorias] ([Id_Categoria], [NombreCat], [DescripcionCat]) VALUES (3, N'Decoracion', N'Decoracion aplicada para la reposteria')
INSERT [dbo].[Categorias] ([Id_Categoria], [NombreCat], [DescripcionCat]) VALUES (4, N'Varios', N'Productos varios utilizados para la panaderia')

/* INSERT DATOS PRODUCTOS */
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 
/*                                                                                                        ID_PRODUCTO idCategoria Nombre Imagen, Stock Precio  */
INSERT [dbo].[Productos] ([ID_Producto], [IdCategoria], [Nombre], [ImagenProd], [Stock], [Precio]) VALUES (1, 1, N'Cuernito', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg', 30, 10)
INSERT [dbo].[Productos] ([ID_Producto], [IdCategoria], [Nombre], [ImagenProd], [Stock], [Precio]) VALUES (2, 1, N'Dona', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg', 15, 15)
INSERT [dbo].[Productos] ([ID_Producto], [IdCategoria], [Nombre], [ImagenProd], [Stock], [Precio]) VALUES (3, 1, N'Empanada', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg', 20, 10)
INSERT [dbo].[Productos] ([ID_Producto], [IdCategoria], [Nombre], [ImagenProd], [Stock], [Precio]) VALUES (4, 1, N'Nino Envuelto', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg', 40, 20)
INSERT [dbo].[Productos] ([ID_Producto], [IdCategoria], [Nombre], [ImagenProd], [Stock], [Precio]) VALUES (5, 2, N'Mezcladora', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg', 5, 4000)
INSERT [dbo].[Productos] ([ID_Producto], [IdCategoria], [Nombre], [ImagenProd], [Stock], [Precio]) VALUES (6, 2, N'Laminadora de Masa', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg', 10, 7000)
INSERT [dbo].[Productos] ([ID_Producto], [IdCategoria], [Nombre], [ImagenProd], [Stock], [Precio]) VALUES (7, 2, N'Amasadora', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg', 10, 2000)
INSERT [dbo].[Productos] ([ID_Producto], [IdCategoria], [Nombre], [ImagenProd], [Stock], [Precio]) VALUES (8, 2, N'Maquina Chocolatera', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg', 20, 5000)
INSERT [dbo].[Productos] ([ID_Producto], [IdCategoria], [Nombre], [ImagenProd], [Stock], [Precio]) VALUES (9, 3, N'Plato del Rayo McQueen', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg', 30, 500)
INSERT [dbo].[Productos] ([ID_Producto], [IdCategoria], [Nombre], [ImagenProd], [Stock], [Precio]) VALUES (10, 3, N'Velas de cum', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg', 50, 3)
INSERT [dbo].[Productos] ([ID_Producto], [IdCategoria], [Nombre], [ImagenProd], [Stock], [Precio]) VALUES (11, 3, N'Tenedores de colores', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg', 50, 6)
INSERT [dbo].[Productos] ([ID_Producto], [IdCategoria], [Nombre], [ImagenProd], [Stock], [Precio]) VALUES (12, 3, N'Globos', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg', 20, 50)
INSERT [dbo].[Productos] ([ID_Producto], [IdCategoria], [Nombre], [ImagenProd], [Stock], [Precio]) VALUES (13, 4, N'Rodillo', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg', 5, 200)
INSERT [dbo].[Productos] ([ID_Producto], [IdCategoria], [Nombre], [ImagenProd], [Stock], [Precio]) VALUES (14, 4, N'Molde', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg', 100, 20)
INSERT [dbo].[Productos] ([ID_Producto], [IdCategoria], [Nombre], [ImagenProd], [Stock], [Precio]) VALUES (15, 4, N'Duyas', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg', 40, 15)
INSERT [dbo].[Productos] ([ID_Producto], [IdCategoria], [Nombre], [ImagenProd], [Stock], [Precio]) VALUES (16, 4, N'Espatula', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg', 25, 80)

SET IDENTITY_INSERT [dbo].[Productos] OFF

/* INSERT DATOS USUARIOS */
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 

/* 2 ADMINISTRADORES*/
INSERT [dbo].[Usuario] ([ID_Usuario], [IdTipo], [NombreUsr], [PassUsr], [ImagenUsr]) VALUES (1, 1, N'Rodrigo', N'Pan123', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg')
INSERT [dbo].[Usuario] ([ID_Usuario], [IdTipo], [NombreUsr], [PassUsr], [ImagenUsr]) VALUES (2, 1, N'Oscar', N'Pan123', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg')
/* 5 Almacenistas  */
INSERT [dbo].[Usuario] ([ID_Usuario], [IdTipo], [NombreUsr], [PassUsr], [ImagenUsr]) VALUES (3, 2, N'Antonio', N'Pan123', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg')
INSERT [dbo].[Usuario] ([ID_Usuario], [IdTipo], [NombreUsr], [PassUsr], [ImagenUsr]) VALUES (4, 2, N'Dali', N'Pan123', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg')
INSERT [dbo].[Usuario] ([ID_Usuario], [IdTipo], [NombreUsr], [PassUsr], [ImagenUsr]) VALUES (5, 2, N'Alejandro', N'Pan123', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg')
INSERT [dbo].[Usuario] ([ID_Usuario], [IdTipo], [NombreUsr], [PassUsr], [ImagenUsr]) VALUES (6, 2, N'Jose', N'Pan123', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg')
INSERT [dbo].[Usuario] ([ID_Usuario], [IdTipo], [NombreUsr], [PassUsr], [ImagenUsr]) VALUES (7, 2, N'Pepe', N'Pan123', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg')

/* 8 Clientes */ 
INSERT [dbo].[Usuario] ([ID_Usuario], [IdTipo], [NombreUsr], [PassUsr], [ImagenUsr]) VALUES (8, 3, N'Tony', N'Pan123', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg')
INSERT [dbo].[Usuario] ([ID_Usuario], [IdTipo], [NombreUsr], [PassUsr], [ImagenUsr]) VALUES (9, 3, N'Eduardo', N'Pan123', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg')
INSERT [dbo].[Usuario] ([ID_Usuario], [IdTipo], [NombreUsr], [PassUsr], [ImagenUsr]) VALUES (10, 3, N'Isaac', N'Pan123', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg')
INSERT [dbo].[Usuario] ([ID_Usuario], [IdTipo], [NombreUsr], [PassUsr], [ImagenUsr]) VALUES (11, 3, N'Carlos', N'Pan123', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg')
INSERT [dbo].[Usuario] ([ID_Usuario], [IdTipo], [NombreUsr], [PassUsr], [ImagenUsr]) VALUES (12, 3, N'Julio', N'Pan123', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg')
INSERT [dbo].[Usuario] ([ID_Usuario], [IdTipo], [NombreUsr], [PassUsr], [ImagenUsr]) VALUES (13, 3, N'Leonardo', N'Pan123', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg')
INSERT [dbo].[Usuario] ([ID_Usuario], [IdTipo], [NombreUsr], [PassUsr], [ImagenUsr]) VALUES (14, 3, N'Saul', N'Pan123', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg')
INSERT [dbo].[Usuario] ([ID_Usuario], [IdTipo], [NombreUsr], [PassUsr], [ImagenUsr]) VALUES (15, 3, N'Luna', N'Pan123', N'/https://www.heb.com.mx/media/catalog/product/cache/9f5ec31302878493d9ed0ac40a398e12/6/6/666115_1833270879.jpg')


/* INSERT TIPO USUARIO */
GO
INSERT [dbo].[TipoUsuario] ([ID_Tipo], [Tipo]) VALUES (1, N'Admin')
INSERT [dbo].[TipoUsuario] ([ID_Tipo], [Tipo]) VALUES (2, N'Almacenista')
INSERT [dbo].[TipoUsuario] ([ID_Tipo], [Tipo]) VALUES (3, N'Cliente')

/* FK  */ 
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categorias] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([Id_Categoria])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Categorias]

GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_TipoUsuario] FOREIGN KEY([IdTipo])
REFERENCES [dbo].[TipoUsuario] ([ID_Tipo])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_TipoUsuario]
GO

GO
ALTER TABLE [dbo].[Compra] WITH CHECK ADD CONSTRAINT [FK_Compra_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([ID_Usuario])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Usuario]

GO
ALTER TABLE [dbo].[Compra] WITH CHECK ADD CONSTRAINT [FK_Compra_Productos] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Productos] ([ID_Producto])
GO
ALTER TABLE [dbo].[Compra] CHECK CONSTRAINT [FK_Compra_Productos]

USE [master]
GO
ALTER DATABASE [PanDeCabron] SET  READ_WRITE 
GO
