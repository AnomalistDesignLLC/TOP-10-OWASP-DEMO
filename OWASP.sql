USE [master]
GO
/****** Object:  Database [OWASP]    Script Date: 13/02/2020 4:16:12 pm ******/
CREATE DATABASE [OWASP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OWASP', FILENAME = N'/var/opt/mssql/data/OWASP.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OWASP_log', FILENAME = N'/var/opt/mssql/data/OWASP_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [OWASP] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OWASP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OWASP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OWASP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OWASP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OWASP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OWASP] SET ARITHABORT OFF 
GO
ALTER DATABASE [OWASP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OWASP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OWASP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OWASP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OWASP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OWASP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OWASP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OWASP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OWASP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OWASP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OWASP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OWASP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OWASP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OWASP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OWASP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OWASP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OWASP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OWASP] SET RECOVERY FULL 
GO
ALTER DATABASE [OWASP] SET  MULTI_USER 
GO
ALTER DATABASE [OWASP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OWASP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OWASP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OWASP] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OWASP] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'OWASP', N'ON'
GO
ALTER DATABASE [OWASP] SET QUERY_STORE = OFF
GO
USE [OWASP]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditTB]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditTB](
	[UsersAuditID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NULL,
	[SessionID] [varchar](50) NULL,
	[IPAddress] [varchar](50) NULL,
	[PageAccessed] [varchar](200) NULL,
	[LoggedInAt] [datetime] NULL,
	[LoggedOutAt] [datetime] NULL,
	[LoginStatus] [varchar](200) NULL,
	[ControllerName] [varchar](200) NULL,
	[ActionName] [varchar](200) NULL,
	[UrlReferrer] [varchar](200) NULL,
	[Method] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BankAccount]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccount](
	[BankAccountId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentId] [int] IDENTITY(1,1) NOT NULL,
	[EmailId] [varchar](50) NULL,
	[Comment] [varchar](100) NULL,
	[CreateDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[Id] [int] NOT NULL,
	[Title] [varchar](50) NULL,
	[Credits] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration](
	[RegistrationId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[EmailId] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[Status] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StockTb]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockTb](
	[Stockid] [int] NOT NULL,
	[Symbol] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Marketcap] [decimal](18, 2) NULL,
	[Employees] [int] NULL,
	[CurrentDate] [datetime] NULL,
	[Value] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Id] [int] NOT NULL,
	[AspNetUserId] [int] NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UsersId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[EmailId] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[Status] [bit] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.1.14-servicing-32113')
INSERT [dbo].[AspNetRoles] ([Id], [ConcurrencyStamp], [Name], [NormalizedName]) VALUES (N'450b92ca-4901-47e9-89fc-771228c91187', N'509bd843-fec3-4fbb-a7b2-fa876a0f3ea8', N'Admin', N'ADMIN')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'56db17df-0702-464d-aa42-05be07d48b82', N'450b92ca-4901-47e9-89fc-771228c91187')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'00410cd4-e06f-42f8-82a5-f829354c2a44', 0, N'875d8145-4608-4368-9b26-f40ea4a0064b', N'matthew@example.com', 0, 1, NULL, N'MATTHEW@EXAMPLE.COM', N'MATTHEW@EXAMPLE.COM', N'AQAAAAEAACcQAAAAEHCr5RcFKBs5KhoePv9E7xOdmzyFAQNLdN7QHdC8SmGjQtVe6NJhq9H/eWa/Zth9YA==', NULL, 0, N'5CHJXZ7YMBCAX4GGWSGTGIP4GRUGCGZ2', 0, N'matthew@example.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'56db17df-0702-464d-aa42-05be07d48b82', 0, N'a2094b63-e548-4458-b95b-cee75248625b', N'admin@admin.com', 0, 1, NULL, N'ADMIN@ADMIN.COM', N'ADMIN@ADMIN.COM', N'AQAAAAEAACcQAAAAEKxoW39LOpwJqdOnek+cHBZ6sSXbPdjSwgfZ+J1hyPzW0K2CjXDGGkXXOY1O3Q3n4w==', NULL, 0, N'65TDBYC4BYGZ2PTV64DVCMY32QWZ5NJ2', 0, N'admin@admin.com')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'6b111924-969b-4fce-8025-61e80a3e3707', 0, N'9970ca50-96f6-4f4f-885a-944e6d89423e', N'demo@demo.com', 0, 1, NULL, N'DEMO@DEMO.COM', N'DEMO@DEMO.COM', N'AQAAAAEAACcQAAAAEKSnd8yn0NhfmuXyroTWr98FN12ZZdBgUyEWsvDCwScH8WimLOemeNB3vwevu/d2Ug==', NULL, 0, N'HFZM63HCK56I6DZXO2NDHJCHPEQAMQA3', 0, N'demo@demo.com')
SET IDENTITY_INSERT [dbo].[AuditTB] ON 

INSERT [dbo].[AuditTB] ([UsersAuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer], [Method]) VALUES (383, N'0', N'672c9b3c-b1d1-e2ae-c9b9-4a299fb47782', N'::1', N'http://localhost:5000/', CAST(N'2020-02-09T20:28:11.610' AS DateTime), NULL, N'A', N'Home', N'Index', NULL, N'GET')
SET IDENTITY_INSERT [dbo].[AuditTB] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([CommentId], [EmailId], [Comment], [CreateDate]) VALUES (1, N'<script>alert(''xss'')</script>', N'<script>alert(''xss'')</script>', CAST(N'2020-02-13T13:15:56.737' AS DateTime))
SET IDENTITY_INSERT [dbo].[Comments] OFF
INSERT [dbo].[Course] ([Id], [Title], [Credits]) VALUES (1, N'Chemistry', N'3')
INSERT [dbo].[Course] ([Id], [Title], [Credits]) VALUES (2, N'Microeconomics', N'3')
INSERT [dbo].[Course] ([Id], [Title], [Credits]) VALUES (3, N'Macroeconomics', N'3')
INSERT [dbo].[Course] ([Id], [Title], [Credits]) VALUES (4, N'Calculus', N'4')
INSERT [dbo].[Course] ([Id], [Title], [Credits]) VALUES (5, N'Trigonometry', N'4')
INSERT [dbo].[Course] ([Id], [Title], [Credits]) VALUES (6, N'Composition', N'3')
INSERT [dbo].[Course] ([Id], [Title], [Credits]) VALUES (7, N'Literature', N'3')
SET IDENTITY_INSERT [dbo].[Registration] ON 

INSERT [dbo].[Registration] ([RegistrationId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (1, N'demo', N'demo', N'demo@gmail.com', N'demo', N'81DC9BDB52D04DC20036DBD8313ED055', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
INSERT [dbo].[Registration] ([RegistrationId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (2, N'demo2', N'demo2', N'demo2@gmail.com', N'demo2', N'81DC9BDB52D04DC20036DBD8313ED055', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
INSERT [dbo].[Registration] ([RegistrationId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (3, N'demo3', N'demo3', N'demo3@gmail.com', N'demo3', N'81DC9BDB52D04DC20036DBD8313ED055', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
INSERT [dbo].[Registration] ([RegistrationId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (3, N'unsecured', N'unsecured', N'unsecured@gmail.com', N'unsecured', N'1234', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
INSERT [dbo].[Registration] ([RegistrationId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (3, N'admin', N'admin', N'admin@gmail.com', N'admin', N'password', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
INSERT [dbo].[Registration] ([RegistrationId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (3, N'secured', N'secured', N'secured@gmail.com', N'secured', N'81DC9BDB52D04DC20036DBD8313ED055', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Registration] OFF
INSERT [dbo].[StockTb] ([Stockid], [Symbol], [Name], [Country], [Marketcap], [Employees], [CurrentDate], [Value]) VALUES (1, N'gcomp1', N'GComp1', N'India', CAST(850000000.00 AS Decimal(18, 2)), 18000, CAST(N'2017-05-01T00:00:00.000' AS DateTime), CAST(771.41 AS Decimal(18, 2)))
INSERT [dbo].[StockTb] ([Stockid], [Symbol], [Name], [Country], [Marketcap], [Employees], [CurrentDate], [Value]) VALUES (2, N'gcomp2', N'GComp2', N'India', CAST(25000000.00 AS Decimal(18, 2)), 10000, CAST(N'2017-05-01T00:00:00.000' AS DateTime), CAST(350.11 AS Decimal(18, 2)))
INSERT [dbo].[StockTb] ([Stockid], [Symbol], [Name], [Country], [Marketcap], [Employees], [CurrentDate], [Value]) VALUES (3, N'gcomp3', N'GComp3', N'India', CAST(15000000.00 AS Decimal(18, 2)), 6000, CAST(N'2017-05-01T00:00:00.000' AS DateTime), CAST(450.11 AS Decimal(18, 2)))
INSERT [dbo].[StockTb] ([Stockid], [Symbol], [Name], [Country], [Marketcap], [Employees], [CurrentDate], [Value]) VALUES (4, N'gcomp4', N'GComp4', N'India', CAST(10000000.00 AS Decimal(18, 2)), 4000, CAST(N'2017-05-01T00:00:00.000' AS DateTime), CAST(250.11 AS Decimal(18, 2)))
INSERT [dbo].[StockTb] ([Stockid], [Symbol], [Name], [Country], [Marketcap], [Employees], [CurrentDate], [Value]) VALUES (5, N'gcomp5', N'GComp5', N'India', CAST(5000000.00 AS Decimal(18, 2)), 2500, CAST(N'2017-05-01T00:00:00.000' AS DateTime), CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[StockTb] ([Stockid], [Symbol], [Name], [Country], [Marketcap], [Employees], [CurrentDate], [Value]) VALUES (1, N'gcomp1', N'GComp1', N'India', CAST(850000000.00 AS Decimal(18, 2)), 18000, CAST(N'2017-05-01T00:00:00.000' AS DateTime), CAST(771.41 AS Decimal(18, 2)))
INSERT [dbo].[StockTb] ([Stockid], [Symbol], [Name], [Country], [Marketcap], [Employees], [CurrentDate], [Value]) VALUES (2, N'gcomp2', N'GComp2', N'India', CAST(25000000.00 AS Decimal(18, 2)), 10000, CAST(N'2017-05-01T00:00:00.000' AS DateTime), CAST(350.11 AS Decimal(18, 2)))
INSERT [dbo].[StockTb] ([Stockid], [Symbol], [Name], [Country], [Marketcap], [Employees], [CurrentDate], [Value]) VALUES (3, N'gcomp3', N'GComp3', N'India', CAST(15000000.00 AS Decimal(18, 2)), 6000, CAST(N'2017-05-01T00:00:00.000' AS DateTime), CAST(450.11 AS Decimal(18, 2)))
INSERT [dbo].[StockTb] ([Stockid], [Symbol], [Name], [Country], [Marketcap], [Employees], [CurrentDate], [Value]) VALUES (4, N'gcomp4', N'GComp4', N'India', CAST(10000000.00 AS Decimal(18, 2)), 4000, CAST(N'2017-05-01T00:00:00.000' AS DateTime), CAST(250.11 AS Decimal(18, 2)))
INSERT [dbo].[StockTb] ([Stockid], [Symbol], [Name], [Country], [Marketcap], [Employees], [CurrentDate], [Value]) VALUES (5, N'gcomp5', N'GComp5', N'India', CAST(5000000.00 AS Decimal(18, 2)), 2500, CAST(N'2017-05-01T00:00:00.000' AS DateTime), CAST(200.00 AS Decimal(18, 2)))
INSERT [dbo].[Student] ([Id], [AspNetUserId], [LastName], [FirstName]) VALUES (1, 1, N'Alexander', N'Carson')
INSERT [dbo].[Student] ([Id], [AspNetUserId], [LastName], [FirstName]) VALUES (2, 2, N'Alonso', N'Meredith')
INSERT [dbo].[Student] ([Id], [AspNetUserId], [LastName], [FirstName]) VALUES (3, 3, N'Anand', N'Arturo')
INSERT [dbo].[Student] ([Id], [AspNetUserId], [LastName], [FirstName]) VALUES (4, 4, N'Barzdukas', N'Gytis')
INSERT [dbo].[Student] ([Id], [AspNetUserId], [LastName], [FirstName]) VALUES (5, 5, N'Li', N'Yan')
INSERT [dbo].[Student] ([Id], [AspNetUserId], [LastName], [FirstName]) VALUES (6, 6, N'Justice', N'Peggy')
INSERT [dbo].[Student] ([Id], [AspNetUserId], [LastName], [FirstName]) VALUES (7, 7, N'Norman', N'Laura')
INSERT [dbo].[Student] ([Id], [AspNetUserId], [LastName], [FirstName]) VALUES (8, 8, N'Olivetto', N'Nino')
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UsersId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (1, N'demo', N'demo', N'demo@gmail.com', N'demo', N'81DC9BDB52D04DC20036DBD8313ED055', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
INSERT [dbo].[Users] ([UsersId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (2, N'demo2', N'demo2', N'demo2@gmail.com', N'demo2', N'81DC9BDB52D04DC20036DBD8313ED055', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
INSERT [dbo].[Users] ([UsersId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (3, N'demo3', N'demo3', N'demo3@gmail.com', N'demo3', N'81DC9BDB52D04DC20036DBD8313ED055', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
INSERT [dbo].[Users] ([UsersId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (3, N'unsecured', N'unsecured', N'unsecured@gmail.com', N'unsecured', N'1234', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
INSERT [dbo].[Users] ([UsersId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (3, N'admin', N'admin', N'admin@gmail.com', N'admin', N'password', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
INSERT [dbo].[Users] ([UsersId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (3, N'secured', N'secured', N'secured@gmail.com', N'secured', N'81DC9BDB52D04DC20036DBD8313ED055', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 13/02/2020 4:16:12 pm ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 13/02/2020 4:16:12 pm ******/
CREATE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 13/02/2020 4:16:12 pm ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 13/02/2020 4:16:12 pm ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 13/02/2020 4:16:12 pm ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_UserId]    Script Date: 13/02/2020 4:16:12 pm ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 13/02/2020 4:16:12 pm ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 13/02/2020 4:16:12 pm ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[GetEmployeebyID]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[GetEmployeebyID] 
     @EmpID int

AS
BEGIN
	SELECT TOP 1000 [EmpID]
      ,[Name]
      ,[Address]
      ,[Age]
      ,[Salary]
      ,[worktype]
    FROM[EmployeeDetails] 
    where [EmployeeDetails].EmpID =@EmpID 
END

GO
/****** Object:  StoredProcedure [dbo].[GetEmployeebyIDandName]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[GetEmployeebyIDandName] 
     @EmpID int

AS
BEGIN
	
	SELECT TOP 1000 [EmpID]
      ,[Name]
      ,[Address]
      ,[Age]
      ,[Salary]
      ,[worktype]
    FROM[EmployeeDetails] 
    where [EmployeeDetails].EmpID =@EmpID
	
END

GO
/****** Object:  StoredProcedure [dbo].[InsertEmployee]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsertEmployee] @Name VARCHAR(50)
	,@Address VARCHAR(50)
	,@Age INT
	,@Salary DECIMAL(18, 0)
	,@worktype VARCHAR(50)
AS
BEGIN
	INSERT INTO [EmployeeDetails] (
		[Name]
		,[Address]
		,[Age]
		,[Salary]
		,[worktype]
		)
	VALUES (
		@Name
		,@Address
		,@Age
		,@Salary
		,@worktype
		)
END

GO
/****** Object:  StoredProcedure [dbo].[procCreateAccount]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procCreateAccount]

@name varchar(50)

AS
BEGIN
	INSERT INTO BankAccount (Name) VALUES (@name)
END
GO
/****** Object:  StoredProcedure [dbo].[reCreateBankAccount]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[reCreateBankAccount]
AS
BEGIN
	
	IF EXISTS (SELECT * FROM sysobjects WHERE name='BankAccount' and xtype='U')
		DROP TABLE [dbo].[BankAccount]

	IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='BankAccount' and xtype='U')
		CREATE TABLE [dbo].[BankAccount](
			[BankAccountId] [int] IDENTITY(1,1) NOT NULL,
			[Name] [varchar](50) NOT NULL
		) ON [PRIMARY]
		SET IDENTITY_INSERT [dbo].[BankAccount] ON
END
GO
/****** Object:  StoredProcedure [dbo].[reCreateRegistration]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[reCreateRegistration]
AS
BEGIN
	
	IF EXISTS (SELECT * FROM sysobjects WHERE name='Registration' and xtype='U')
		DROP TABLE [dbo].[Registration]

	IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Registration' and xtype='U')
		CREATE TABLE [dbo].[Registration](
			[RegistrationId] [int] IDENTITY(1,1) NOT NULL,
			[FirstName] [varchar](50) NULL,
			[LastName] [varchar](50) NULL,
			[EmailId] [varchar](50) NULL,
			[Username] [varchar](50) NULL,
			[Password] [nvarchar](100) NULL,
			[CreatedDate] [datetime] NULL,
			[UpdateDate] [datetime] NULL,
			[Status] [bit] NULL
		) ON [PRIMARY]
		SET IDENTITY_INSERT [dbo].[Registration] ON

	INSERT [dbo].[Registration] ([RegistrationId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (1, N'demo', N'demo', N'demo@gmail.com', N'demo', N'81DC9BDB52D04DC20036DBD8313ED055', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
	INSERT [dbo].[Registration] ([RegistrationId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (2, N'demo2', N'demo2', N'demo2@gmail.com', N'demo2', N'81DC9BDB52D04DC20036DBD8313ED055', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
	INSERT [dbo].[Registration] ([RegistrationId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (3, N'demo3', N'demo3', N'demo3@gmail.com', N'demo3', N'81DC9BDB52D04DC20036DBD8313ED055', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
	INSERT [dbo].[Registration] ([RegistrationId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (3, N'unsecured', N'unsecured', N'unsecured@gmail.com', N'unsecured', N'1234', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
	INSERT [dbo].[Registration] ([RegistrationId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (3, N'admin', N'admin', N'admin@gmail.com', N'admin', N'password', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
	INSERT [dbo].[Registration] ([RegistrationId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (3, N'secured', N'secured', N'secured@gmail.com', N'secured', N'81DC9BDB52D04DC20036DBD8313ED055', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
END
GO
/****** Object:  StoredProcedure [dbo].[reCreateStudent]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[reCreateStudent]
AS
BEGIN
	
	IF EXISTS (SELECT * FROM sysobjects WHERE name='Student' and xtype='U')
		DROP TABLE [dbo].[Student]

	IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Student' and xtype='U')
		CREATE TABLE  [dbo].[Student](
			[Id] [int] NOT NULL,
			[AspNetUserId] [int] NOT NULL,
			[LastName] [nvarchar](50) NOT NULL,
			[FirstName] [nvarchar](50) NOT NULL
		) ON [PRIMARY]
	
	INSERT [dbo].[Student] ([Id], [AspNetUserId], [LastName], [FirstName]) VALUES (1, 1, N'Alexander', N'Carson')
	INSERT [dbo].[Student] ([Id], [AspNetUserId], [LastName], [FirstName]) VALUES (2, 2, N'Alonso', N'Meredith')
	INSERT [dbo].[Student] ([Id], [AspNetUserId], [LastName], [FirstName]) VALUES (3, 3, N'Anand', N'Arturo')
	INSERT [dbo].[Student] ([Id], [AspNetUserId], [LastName], [FirstName]) VALUES (4, 4, N'Barzdukas', N'Gytis')
	INSERT [dbo].[Student] ([Id], [AspNetUserId], [LastName], [FirstName]) VALUES (5, 5, N'Li', N'Yan')
	INSERT [dbo].[Student] ([Id], [AspNetUserId], [LastName], [FirstName]) VALUES (6, 6, N'Justice', N'Peggy')
	INSERT [dbo].[Student] ([Id], [AspNetUserId], [LastName], [FirstName]) VALUES (7, 7, N'Norman', N'Laura')
	INSERT [dbo].[Student] ([Id], [AspNetUserId], [LastName], [FirstName]) VALUES (8, 8, N'Olivetto', N'Nino')

	IF EXISTS (SELECT * FROM sysobjects WHERE name='Course' and xtype='U')
		DROP TABLE [dbo].[Course]

	IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Course' and xtype='U')
		CREATE TABLE [dbo].[Course](
			[Id] [int] NOT NULL,
			[Title] [varchar](50) NULL,
			[Credits] [varchar](50) NULL,
		) ON [PRIMARY]

	INSERT [dbo].[Course] ([Id], [Title], [Credits]) VALUES (1, N'Chemistry', N'3')
	INSERT [dbo].[Course] ([Id], [Title], [Credits]) VALUES (2, N'Microeconomics', N'3')
	INSERT [dbo].[Course] ([Id], [Title], [Credits]) VALUES (3, N'Macroeconomics', N'3')
	INSERT [dbo].[Course] ([Id], [Title], [Credits]) VALUES (4, N'Calculus', N'4')
	INSERT [dbo].[Course] ([Id], [Title], [Credits]) VALUES (5, N'Trigonometry', N'4')
	INSERT [dbo].[Course] ([Id], [Title], [Credits]) VALUES (6, N'Composition', N'3')
	INSERT [dbo].[Course] ([Id], [Title], [Credits]) VALUES (7, N'Literature', N'3')
END
GO
/****** Object:  StoredProcedure [dbo].[reCreateUsers]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[reCreateUsers] AS
BEGIN
	IF EXISTS (SELECT * FROM sysobjects WHERE name='Users' and xtype='U')
		DROP TABLE [dbo].[Users]

	IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Users' and xtype='U')
		CREATE TABLE [dbo].[Users](
			[UsersId] [int] IDENTITY(1,1) NOT NULL,
			[FirstName] [varchar](50) NULL,
			[LastName] [varchar](50) NULL,
			[EmailId] [varchar](50) NULL,
			[Username] [varchar](50) NULL,
			[Password] [nvarchar](100) NULL,
			[CreatedDate] [datetime] NULL,
			[UpdateDate] [datetime] NULL,
			[Status] [bit] NULL
		) ON [PRIMARY]
		SET IDENTITY_INSERT [dbo].[Users] ON

	INSERT [dbo].[Users] ([UsersId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (1, N'demo', N'demo', N'demo@gmail.com', N'demo', N'81DC9BDB52D04DC20036DBD8313ED055', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
	INSERT [dbo].[Users] ([UsersId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (2, N'demo2', N'demo2', N'demo2@gmail.com', N'demo2', N'81DC9BDB52D04DC20036DBD8313ED055', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
	INSERT [dbo].[Users] ([UsersId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (3, N'demo3', N'demo3', N'demo3@gmail.com', N'demo3', N'81DC9BDB52D04DC20036DBD8313ED055', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
	INSERT [dbo].[Users] ([UsersId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (3, N'unsecured', N'unsecured', N'unsecured@gmail.com', N'unsecured', N'1234', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
	INSERT [dbo].[Users] ([UsersId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (3, N'admin', N'admin', N'admin@gmail.com', N'admin', N'password', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
	INSERT [dbo].[Users] ([UsersId], [FirstName], [LastName], [EmailId], [Username], [Password], [CreatedDate], [UpdateDate], [Status]) VALUES (3, N'secured', N'secured', N'secured@gmail.com', N'secured', N'81DC9BDB52D04DC20036DBD8313ED055', CAST(N'2018-08-07T23:42:33.553' AS DateTime), CAST(N'2018-08-07T10:48:17.013' AS DateTime), 1)
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetUserDetailsByRegistrationId]    Script Date: 13/02/2020 4:16:12 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create proc [dbo].[Usp_GetUserDetailsByRegistrationId]
@RegistrationId int
as
begin
select [RegistrationId]
      ,[FirstName]
      ,[LastName]
      ,[EmailId]
      ,[Username]
      ,[Password]
      ,[CreatedDate]
      ,[UpdateDate]
      ,[Status] from Registration where RegistrationId=@RegistrationId
end
GO
USE [master]
GO
ALTER DATABASE [OWASP] SET  READ_WRITE 
GO
