USE [master]
GO

/****** Object:  Database [Temporario]    Script Date: 15/01/2020 10:19:17 ******/
CREATE DATABASE [Temporario]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Temporario', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Temporario.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Temporario_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Temporario_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [Temporario] SET COMPATIBILITY_LEVEL = 130
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Temporario].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Temporario] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Temporario] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Temporario] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Temporario] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Temporario] SET ARITHABORT OFF 
GO

ALTER DATABASE [Temporario] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Temporario] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Temporario] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Temporario] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Temporario] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Temporario] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Temporario] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Temporario] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Temporario] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Temporario] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Temporario] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Temporario] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Temporario] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Temporario] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Temporario] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Temporario] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Temporario] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Temporario] SET RECOVERY FULL 
GO

ALTER DATABASE [Temporario] SET  MULTI_USER 
GO

ALTER DATABASE [Temporario] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Temporario] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Temporario] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Temporario] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Temporario] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [Temporario] SET QUERY_STORE = OFF
GO

USE [Temporario]
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE [Temporario] SET  READ_WRITE 
GO


