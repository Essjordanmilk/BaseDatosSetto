USE [master]
GO
/****** Object:  Database [SETTO]    Script Date: 11/24/2022 5:47:12 PM ******/
CREATE DATABASE [SETTO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SETTO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SETTO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SETTO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\SETTO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [SETTO] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SETTO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SETTO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SETTO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SETTO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SETTO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SETTO] SET ARITHABORT OFF 
GO
ALTER DATABASE [SETTO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SETTO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SETTO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SETTO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SETTO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SETTO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SETTO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SETTO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SETTO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SETTO] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SETTO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SETTO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SETTO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SETTO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SETTO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SETTO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SETTO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SETTO] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SETTO] SET  MULTI_USER 
GO
ALTER DATABASE [SETTO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SETTO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SETTO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SETTO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SETTO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SETTO] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SETTO] SET QUERY_STORE = OFF
GO
USE [SETTO]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 11/24/2022 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[usuario] [varchar](100) NOT NULL,
	[password] [nvarchar](10) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[id] [int] NOT NULL,
	[documentoAd] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Correspondencia]    Script Date: 11/24/2022 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Correspondencia](
	[idCorrespondencia] [int] NOT NULL,
	[tipoCorrespondencia] [varchar](100) NOT NULL,
	[documentoInqui] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idCorrespondencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guardia]    Script Date: 11/24/2022 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guardia](
	[nombre] [varchar](100) NOT NULL,
	[documento] [int] NOT NULL,
	[id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Inquilinos]    Script Date: 11/24/2022 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inquilinos](
	[nombre] [varchar](100) NOT NULL,
	[documentoInqui] [int] NOT NULL,
	[edad] [tinyint] NOT NULL,
	[torre] [int] NOT NULL,
	[apartamento] [int] NOT NULL,
	[vehiculo] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[documentoInqui] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[modificacion_admin]    Script Date: 11/24/2022 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modificacion_admin](
	[id] [int] NOT NULL,
	[accion] [nchar](10) NULL,
 CONSTRAINT [PK_modificacion_admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[modificaciones]    Script Date: 11/24/2022 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modificaciones](
	[id] [int] NOT NULL,
	[accion] [nchar](10) NULL,
 CONSTRAINT [PK_modificaciones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Perfiles]    Script Date: 11/24/2022 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Perfiles](
	[nombre] [varchar](100) NOT NULL,
	[documentoPer] [int] NOT NULL,
	[documentoInqui] [int] NOT NULL,
	[edad] [nvarchar](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[documentoPer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[solicitudes]    Script Date: 11/24/2022 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solicitudes](
	[documentoinqui] [int] NOT NULL,
	[idSolicitud] [int] NOT NULL,
	[tipoSoli] [nvarchar](100) NOT NULL,
	[horaSoli] [time](7) NOT NULL,
	[fechaSoli] [date] NOT NULL,
	[estado] [nvarchar](11) NOT NULL,
	[idModificaciones] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idSolicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehiculo]    Script Date: 11/24/2022 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehiculo](
	[documentoInqui] [int] NOT NULL,
	[placa] [varchar](6) NOT NULL,
	[tipoVehiculo] [varchar](50) NOT NULL,
	[color] [varchar](50) NOT NULL,
	[modelo] [varchar](13) NOT NULL,
 CONSTRAINT [PK_Vehiculo] PRIMARY KEY CLUSTERED 
(
	[documentoInqui] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Visitante]    Script Date: 11/24/2022 5:47:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Visitante](
	[documentoinqui] [int] NOT NULL,
	[nombreVisi] [varchar](100) NULL,
	[documentoVisi] [int] NOT NULL,
	[hora] [time](7) NOT NULL,
	[fecha] [date] NOT NULL,
	[detallesVisi] [text] NOT NULL,
	[torre] [int] NULL,
	[apartamento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[documentoVisi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([usuario], [password], [nombre], [id], [documentoAd]) VALUES (N'admin1', N'Contraseña', N'Martha', 102030, 1002345663)
GO
INSERT [dbo].[Correspondencia] ([idCorrespondencia], [tipoCorrespondencia], [documentoInqui]) VALUES (1, N'Correo', 100053432)
INSERT [dbo].[Correspondencia] ([idCorrespondencia], [tipoCorrespondencia], [documentoInqui]) VALUES (2, N'ReciboLuz', 102444233)
INSERT [dbo].[Correspondencia] ([idCorrespondencia], [tipoCorrespondencia], [documentoInqui]) VALUES (3, N'ReciboAgua', 1023342144)
INSERT [dbo].[Correspondencia] ([idCorrespondencia], [tipoCorrespondencia], [documentoInqui]) VALUES (4, N'Recibo Internet', 102444233)
INSERT [dbo].[Correspondencia] ([idCorrespondencia], [tipoCorrespondencia], [documentoInqui]) VALUES (5, N'Recibo Agua', 102444233)
INSERT [dbo].[Correspondencia] ([idCorrespondencia], [tipoCorrespondencia], [documentoInqui]) VALUES (6, N'Recibo Gas', 1232435)
INSERT [dbo].[Correspondencia] ([idCorrespondencia], [tipoCorrespondencia], [documentoInqui]) VALUES (7, N'Paqueteria', 1232435)
GO
INSERT [dbo].[Guardia] ([nombre], [documento], [id]) VALUES (N'Raul Hernandez', 100101324, 102030)
GO
INSERT [dbo].[Inquilinos] ([nombre], [documentoInqui], [edad], [torre], [apartamento], [vehiculo]) VALUES (N'walter white aaa', 1232435, 52, 2, 123, N'Si')
INSERT [dbo].[Inquilinos] ([nombre], [documentoInqui], [edad], [torre], [apartamento], [vehiculo]) VALUES (N'Harold Santiago Quezada', 100053432, 20, 2, 102, N'si ')
INSERT [dbo].[Inquilinos] ([nombre], [documentoInqui], [edad], [torre], [apartamento], [vehiculo]) VALUES (N'Jesus Manrique', 100502634, 29, 2, 304, N'No')
INSERT [dbo].[Inquilinos] ([nombre], [documentoInqui], [edad], [torre], [apartamento], [vehiculo]) VALUES (N'Sergio Gutierrrez', 102444233, 22, 3, 201, N'no')
INSERT [dbo].[Inquilinos] ([nombre], [documentoInqui], [edad], [torre], [apartamento], [vehiculo]) VALUES (N'Rodrigo Lopez', 1000435563, 45, 10, 502, N'si')
INSERT [dbo].[Inquilinos] ([nombre], [documentoInqui], [edad], [torre], [apartamento], [vehiculo]) VALUES (N'Jordan Manrique', 1005026339, 20, 2, 202, N'no')
INSERT [dbo].[Inquilinos] ([nombre], [documentoInqui], [edad], [torre], [apartamento], [vehiculo]) VALUES (N'Andrea Gomez', 1023342144, 19, 1, 101, N'si')
GO
INSERT [dbo].[modificaciones] ([id], [accion]) VALUES (102030, N'ninguna   ')
GO
INSERT [dbo].[Perfiles] ([nombre], [documentoPer], [documentoInqui], [edad]) VALUES (N'Jordan Manrique', 1005026339, 1005026339, N'20')
INSERT [dbo].[Perfiles] ([nombre], [documentoPer], [documentoInqui], [edad]) VALUES (N'Felipe ', 1005234235, 1005026339, N'12')
GO
INSERT [dbo].[solicitudes] ([documentoinqui], [idSolicitud], [tipoSoli], [horaSoli], [fechaSoli], [estado], [idModificaciones]) VALUES (1005026339, 1, N'prestamo', CAST(N'20:00:00' AS Time), CAST(N'2022-10-05' AS Date), N'Activo', 102030)
GO
INSERT [dbo].[Vehiculo] ([documentoInqui], [placa], [tipoVehiculo], [color], [modelo]) VALUES (1232435, N'KM13K', N'Renault', N'rojo', N'2021')
INSERT [dbo].[Vehiculo] ([documentoInqui], [placa], [tipoVehiculo], [color], [modelo]) VALUES (12331244, N'KM23K', N'Renault', N'rojo', N'2010')
INSERT [dbo].[Vehiculo] ([documentoInqui], [placa], [tipoVehiculo], [color], [modelo]) VALUES (100053432, N'KM45T', N'renault', N'negro', N'2019')
INSERT [dbo].[Vehiculo] ([documentoInqui], [placa], [tipoVehiculo], [color], [modelo]) VALUES (100503245, N'KM23H', N'Chevrolet', N'negro', N'2014')
INSERT [dbo].[Vehiculo] ([documentoInqui], [placa], [tipoVehiculo], [color], [modelo]) VALUES (102444233, N'FDJE54', N'chevrolet', N'Blanco', N'2015')
INSERT [dbo].[Vehiculo] ([documentoInqui], [placa], [tipoVehiculo], [color], [modelo]) VALUES (1005023456, N'KM23K', N'Renault', N'gris', N'2020')
GO
INSERT [dbo].[Visitante] ([documentoinqui], [nombreVisi], [documentoVisi], [hora], [fecha], [detallesVisi], [torre], [apartamento]) VALUES (100053432, N'Carlos Perez', 1020345563, CAST(N'16:00:00' AS Time), CAST(N'2022-10-06' AS Date), N'Viene con acompañante femenino', 2, 502)
INSERT [dbo].[Visitante] ([documentoinqui], [nombreVisi], [documentoVisi], [hora], [fecha], [detallesVisi], [torre], [apartamento]) VALUES (102444233, N'Pedro Palacios ', 1022344505, CAST(N'06:00:00' AS Time), CAST(N'2022-11-25' AS Date), N'Ninguna', 3, 302)
GO
ALTER TABLE [dbo].[Correspondencia]  WITH CHECK ADD  CONSTRAINT [FK_Correspondencia_Inquilinos] FOREIGN KEY([documentoInqui])
REFERENCES [dbo].[Inquilinos] ([documentoInqui])
GO
ALTER TABLE [dbo].[Correspondencia] CHECK CONSTRAINT [FK_Correspondencia_Inquilinos]
GO
ALTER TABLE [dbo].[modificacion_admin]  WITH CHECK ADD  CONSTRAINT [FK_modificacion_admin_Admin] FOREIGN KEY([id])
REFERENCES [dbo].[Admin] ([id])
GO
ALTER TABLE [dbo].[modificacion_admin] CHECK CONSTRAINT [FK_modificacion_admin_Admin]
GO
ALTER TABLE [dbo].[modificaciones]  WITH CHECK ADD  CONSTRAINT [FK_modificaciones_Admin] FOREIGN KEY([id])
REFERENCES [dbo].[Admin] ([id])
GO
ALTER TABLE [dbo].[modificaciones] CHECK CONSTRAINT [FK_modificaciones_Admin]
GO
ALTER TABLE [dbo].[modificaciones]  WITH CHECK ADD  CONSTRAINT [FK_modificaciones_Guardia] FOREIGN KEY([id])
REFERENCES [dbo].[Guardia] ([id])
GO
ALTER TABLE [dbo].[modificaciones] CHECK CONSTRAINT [FK_modificaciones_Guardia]
GO
ALTER TABLE [dbo].[Perfiles]  WITH CHECK ADD  CONSTRAINT [FK_Perfiles_Inquilinos] FOREIGN KEY([documentoInqui])
REFERENCES [dbo].[Inquilinos] ([documentoInqui])
GO
ALTER TABLE [dbo].[Perfiles] CHECK CONSTRAINT [FK_Perfiles_Inquilinos]
GO
ALTER TABLE [dbo].[solicitudes]  WITH CHECK ADD  CONSTRAINT [FK_solicitudes_Inquilinos] FOREIGN KEY([documentoinqui])
REFERENCES [dbo].[Inquilinos] ([documentoInqui])
GO
ALTER TABLE [dbo].[solicitudes] CHECK CONSTRAINT [FK_solicitudes_Inquilinos]
GO
ALTER TABLE [dbo].[solicitudes]  WITH CHECK ADD  CONSTRAINT [FK_solicitudes_modificaciones1] FOREIGN KEY([idModificaciones])
REFERENCES [dbo].[modificaciones] ([id])
GO
ALTER TABLE [dbo].[solicitudes] CHECK CONSTRAINT [FK_solicitudes_modificaciones1]
GO
ALTER TABLE [dbo].[Visitante]  WITH CHECK ADD  CONSTRAINT [FK_Visitante_Inquilinos] FOREIGN KEY([documentoinqui])
REFERENCES [dbo].[Inquilinos] ([documentoInqui])
GO
ALTER TABLE [dbo].[Visitante] CHECK CONSTRAINT [FK_Visitante_Inquilinos]
GO
USE [master]
GO
ALTER DATABASE [SETTO] SET  READ_WRITE 
GO
