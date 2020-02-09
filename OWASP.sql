USE [master]
GO
/****** Object:  Database [OWASP]    Script Date: 09/02/2020 10:35:18 pm ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 09/02/2020 10:35:18 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditTB]    Script Date: 09/02/2020 10:35:18 pm ******/
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
/****** Object:  Table [dbo].[BankAccount]    Script Date: 09/02/2020 10:35:18 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccount](
	[BankAccountId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 09/02/2020 10:35:18 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentId] [int] NOT NULL,
	[EmailId] [varchar](50) NULL,
	[Comment] [varchar](100) NULL,
	[CreateDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 09/02/2020 10:35:18 pm ******/
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
/****** Object:  Table [dbo].[StockTb]    Script Date: 09/02/2020 10:35:18 pm ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 09/02/2020 10:35:18 pm ******/
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
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (1, N'Administrator', N'PowerfullBoss')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (2, N'meredith12', N'meredith12')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (3, N'Arturo', N'Arturo')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (4, N'Gytis', N'Gytis')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (5, N'Yan', N'Yan')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (6, N'Peggy', N'Peggy')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (7, N'Laura', N'Laura')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (8, N'Nino', N'Nino')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (9, N'Administrator', N'PowerfullBoss')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (10, N'meredith12', N'meredith12')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (11, N'Arturo', N'Arturo')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (12, N'Gytis', N'Gytis')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (13, N'Yan', N'Yan')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (14, N'Peggy', N'Peggy')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (15, N'Laura', N'Laura')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (16, N'Nino', N'Nino')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (1, N'Administrator', N'PowerfullBoss')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (2, N'meredith12', N'meredith12')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (3, N'Arturo', N'Arturo')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (4, N'Gytis', N'Gytis')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (5, N'Yan', N'Yan')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (6, N'Peggy', N'Peggy')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (7, N'Laura', N'Laura')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (8, N'Nino', N'Nino')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (9, N'Administrator', N'PowerfullBoss')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (10, N'meredith12', N'meredith12')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (11, N'Arturo', N'Arturo')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (12, N'Gytis', N'Gytis')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (13, N'Yan', N'Yan')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (14, N'Peggy', N'Peggy')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (15, N'Laura', N'Laura')
INSERT [dbo].[AspNetUsers] ([Id], [Username], [Password]) VALUES (16, N'Nino', N'Nino')
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
SET IDENTITY_INSERT [dbo].[AuditTB] ON 

INSERT [dbo].[AuditTB] ([UsersAuditID], [UserID], [SessionID], [IPAddress], [PageAccessed], [LoggedInAt], [LoggedOutAt], [LoginStatus], [ControllerName], [ActionName], [UrlReferrer], [Method]) VALUES (383, N'0', N'672c9b3c-b1d1-e2ae-c9b9-4a299fb47782', N'::1', N'http://localhost:5000/', CAST(N'2020-02-09T20:28:11.610' AS DateTime), NULL, N'A', N'Home', N'Index', NULL, N'GET')
SET IDENTITY_INSERT [dbo].[AuditTB] OFF
SET IDENTITY_INSERT [dbo].[BankAccount] ON 

INSERT [dbo].[BankAccount] ([BankAccountId], [Name]) VALUES (1, N'Matthew')
INSERT [dbo].[BankAccount] ([BankAccountId], [Name]) VALUES (2, N'Matthew')
INSERT [dbo].[BankAccount] ([BankAccountId], [Name]) VALUES (3, N'Matthew')
INSERT [dbo].[BankAccount] ([BankAccountId], [Name]) VALUES (4, N'Matthew')
SET IDENTITY_INSERT [dbo].[BankAccount] OFF
INSERT [dbo].[Comments] ([CommentId], [EmailId], [Comment], [CreateDate]) VALUES (1, N'<script>alert(''Hello XSS Attack'');</script>', N'<script>alert(''Hello XSS Attack'');</script>', CAST(N'2018-08-12T12:40:12.617' AS DateTime))
INSERT [dbo].[Comments] ([CommentId], [EmailId], [Comment], [CreateDate]) VALUES (2, N'<script>alert(''Hello XSS Attack'');</script>', N'<script>alert(''Hello XSS Attack'');</script>', CAST(N'2018-08-12T12:43:44.617' AS DateTime))
INSERT [dbo].[Comments] ([CommentId], [EmailId], [Comment], [CreateDate]) VALUES (3, N'Demo@gg.com', N'<script>alert(''Hello XSS Attack'');</script>', CAST(N'2018-08-12T12:45:55.617' AS DateTime))
INSERT [dbo].[Comments] ([CommentId], [EmailId], [Comment], [CreateDate]) VALUES (4, N'Demo@gg.com', N'<script>alert(''Hello XSS Attack'');</script>', CAST(N'2018-08-12T12:49:19.617' AS DateTime))
INSERT [dbo].[Comments] ([CommentId], [EmailId], [Comment], [CreateDate]) VALUES (5, N'Demo@gg.com', N'<script>alert(''Hello XSS Attack'');</script>', CAST(N'2018-08-12T12:50:42.617' AS DateTime))
INSERT [dbo].[Comments] ([CommentId], [EmailId], [Comment], [CreateDate]) VALUES (1, N'<script>alert(''Hello XSS Attack'');</script>', N'<script>alert(''Hello XSS Attack'');</script>', CAST(N'2018-08-12T12:40:12.617' AS DateTime))
INSERT [dbo].[Comments] ([CommentId], [EmailId], [Comment], [CreateDate]) VALUES (2, N'<script>alert(''Hello XSS Attack'');</script>', N'<script>alert(''Hello XSS Attack'');</script>', CAST(N'2018-08-12T12:43:44.617' AS DateTime))
INSERT [dbo].[Comments] ([CommentId], [EmailId], [Comment], [CreateDate]) VALUES (3, N'Demo@gg.com', N'<script>alert(''Hello XSS Attack'');</script>', CAST(N'2018-08-12T12:45:55.617' AS DateTime))
INSERT [dbo].[Comments] ([CommentId], [EmailId], [Comment], [CreateDate]) VALUES (4, N'Demo@gg.com', N'<script>alert(''Hello XSS Attack'');</script>', CAST(N'2018-08-12T12:49:19.617' AS DateTime))
INSERT [dbo].[Comments] ([CommentId], [EmailId], [Comment], [CreateDate]) VALUES (5, N'Demo@gg.com', N'<script>alert(''Hello XSS Attack'');</script>', CAST(N'2018-08-12T12:50:42.617' AS DateTime))
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
/****** Object:  StoredProcedure [dbo].[GetEmployeebyID]    Script Date: 09/02/2020 10:35:18 pm ******/
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
/****** Object:  StoredProcedure [dbo].[GetEmployeebyIDandName]    Script Date: 09/02/2020 10:35:18 pm ******/
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
/****** Object:  StoredProcedure [dbo].[InsertEmployee]    Script Date: 09/02/2020 10:35:18 pm ******/
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
/****** Object:  StoredProcedure [dbo].[procCreateAccount]    Script Date: 09/02/2020 10:35:18 pm ******/
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
/****** Object:  StoredProcedure [dbo].[reCreateBankAccount]    Script Date: 09/02/2020 10:35:18 pm ******/
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
/****** Object:  StoredProcedure [dbo].[reCreateRegistration]    Script Date: 09/02/2020 10:35:18 pm ******/
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
/****** Object:  StoredProcedure [dbo].[reCreateStudent]    Script Date: 09/02/2020 10:35:18 pm ******/
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
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_GetUserDetailsByRegistrationId]    Script Date: 09/02/2020 10:35:18 pm ******/
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
