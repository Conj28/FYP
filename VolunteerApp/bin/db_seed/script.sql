USE [master]
GO
/****** Object:  Database [app]    Script Date: 29/12/2021 19:48:24 ******/
CREATE DATABASE [app]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'app', FILENAME = N'D:\rdsdbdata\DATA\app.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)
 LOG ON 
( NAME = N'app_log', FILENAME = N'D:\rdsdbdata\DATA\app_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [app] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [app].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [app] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [app] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [app] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [app] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [app] SET ARITHABORT OFF 
GO
ALTER DATABASE [app] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [app] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [app] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [app] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [app] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [app] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [app] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [app] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [app] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [app] SET  DISABLE_BROKER 
GO
ALTER DATABASE [app] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [app] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [app] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [app] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [app] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [app] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [app] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [app] SET RECOVERY FULL 
GO
ALTER DATABASE [app] SET  MULTI_USER 
GO
ALTER DATABASE [app] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [app] SET DB_CHAINING OFF 
GO
ALTER DATABASE [app] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [app] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [app] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [app] SET QUERY_STORE = OFF
GO
USE [app]
GO
/****** Object:  User [admin]    Script Date: 29/12/2021 19:48:25 ******/
CREATE USER [admin] FOR LOGIN [admin] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [admin]
GO
/****** Object:  Table [dbo].[Event]    Script Date: 29/12/2021 19:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event](
	[Event_ID] [int] IDENTITY(1,1) NOT NULL,
	[Event_Det_ID] [int] NULL,
	[Users_ID] [int] NULL,
	[Available_Start] [time](7) NULL,
	[Available_End] [time](7) NULL,
	[Event_Loc_ID] [int] NULL,
 CONSTRAINT [PK__Event__FD6BEFE4AB461E9D] PRIMARY KEY CLUSTERED 
(
	[Event_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event_Det]    Script Date: 29/12/2021 19:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event_Det](
	[Event_Det_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Created_By] [int] NULL,
	[Event_Date] [date] NULL,
	[Start_Time] [time](7) NULL,
	[End_Time] [time](7) NULL,
	[Number_Days] [int] NULL,
	[img] [varchar](max) NULL,
	[Details] [varchar](max) NULL,
 CONSTRAINT [PK__Event_De__315E2D3838346207] PRIMARY KEY CLUSTERED 
(
	[Event_Det_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Event_Loc]    Script Date: 29/12/2021 19:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Event_Loc](
	[Event_Loc_ID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [varchar](max) NULL,
	[County] [varchar](max) NULL,
	[Event_Det_ID] [int] NULL,
	[Location_Manager] [int] NULL,
	[Available_Spaces] [int] NULL,
	[Raised] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Event_Loc_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hobby]    Script Date: 29/12/2021 19:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hobby](
	[hobby_ID] [int] NOT NULL,
	[hobby] [nvarchar](50) NULL,
	[test_ID] [int] NULL,
 CONSTRAINT [PK_hobby] PRIMARY KEY CLUSTERED 
(
	[hobby_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Test_Table]    Script Date: 29/12/2021 19:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Test_Table](
	[test_ID] [smallint] NOT NULL,
	[name] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[userName] [varchar](max) NULL,
	[Password] [varbinary](max) NULL,
 CONSTRAINT [PK_Test_Table] PRIMARY KEY CLUSTERED 
(
	[test_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Roles]    Script Date: 29/12/2021 19:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Roles](
	[User_Role_ID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[User_Role_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 29/12/2021 19:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Users_ID] [int] IDENTITY(1,1) NOT NULL,
	[First_Name] [varchar](50) NULL,
	[Last_Name] [varchar](50) NULL,
	[Email] [varchar](max) NULL,
	[Phone] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[Town] [varchar](50) NULL,
	[County] [nchar](10) NULL,
	[Vetted] [varchar](50) NULL,
	[User_Role] [int] NULL,
	[Password] [varbinary](max) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Users_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users_detail]    Script Date: 29/12/2021 19:48:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users_detail](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Password] [varbinary](150) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [app] SET  READ_WRITE 
GO
