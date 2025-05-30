USE [master]
GO
/****** Object:  Database [KTTKPM]    Script Date: 5/21/2025 2:17:00 PM ******/
CREATE DATABASE [KTTKPM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KTTKPM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\KTTKPM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KTTKPM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\KTTKPM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [KTTKPM] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KTTKPM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KTTKPM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KTTKPM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KTTKPM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KTTKPM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KTTKPM] SET ARITHABORT OFF 
GO
ALTER DATABASE [KTTKPM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KTTKPM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KTTKPM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KTTKPM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KTTKPM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KTTKPM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KTTKPM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KTTKPM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KTTKPM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KTTKPM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KTTKPM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KTTKPM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KTTKPM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KTTKPM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KTTKPM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KTTKPM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KTTKPM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KTTKPM] SET RECOVERY FULL 
GO
ALTER DATABASE [KTTKPM] SET  MULTI_USER 
GO
ALTER DATABASE [KTTKPM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KTTKPM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KTTKPM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KTTKPM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KTTKPM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KTTKPM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'KTTKPM', N'ON'
GO
ALTER DATABASE [KTTKPM] SET QUERY_STORE = ON
GO
ALTER DATABASE [KTTKPM] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [KTTKPM]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/21/2025 2:17:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/21/2025 2:17:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/21/2025 2:17:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/21/2025 2:17:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/21/2025 2:17:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/21/2025 2:17:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/21/2025 2:17:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/21/2025 2:17:00 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterDataKeys]    Script Date: 5/21/2025 2:17:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterDataKeys](
	[PartitionKey] [nvarchar](450) NOT NULL,
	[RowKey] [nvarchar](450) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_MasterDataKeys] PRIMARY KEY CLUSTERED 
(
	[PartitionKey] ASC,
	[RowKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MasterDataValues]    Script Date: 5/21/2025 2:17:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterDataValues](
	[PartitionKey] [nvarchar](450) NOT NULL,
	[RowKey] [nvarchar](450) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_MasterDataValues] PRIMARY KEY CLUSTERED 
(
	[PartitionKey] ASC,
	[RowKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/21/2025 2:17:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceRequests]    Script Date: 5/21/2025 2:17:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceRequests](
	[PartitionKey] [nvarchar](450) NOT NULL,
	[RowKey] [nvarchar](450) NOT NULL,
	[VehicleName] [nvarchar](max) NOT NULL,
	[VehicleType] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[RequestedServices] [nvarchar](max) NOT NULL,
	[RequestedDate] [datetime2](7) NULL,
	[CompletedDate] [datetime2](7) NULL,
	[ServiceEngineer] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[UpdatedDate] [datetime2](7) NOT NULL,
	[CreatedBy] [nvarchar](max) NULL,
	[UpdatedBy] [nvarchar](max) NULL,
 CONSTRAINT [PK_ServiceRequests] PRIMARY KEY CLUSTERED 
(
	[PartitionKey] ASC,
	[RowKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250304063127_InitialCreate', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250304063703_AddProduct', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250305064217_Product', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250305065127_Product', N'8.0.5')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250501152242_updateBaseEntity', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250501163121_NullBase', N'8.0.11')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20250514070535_AddRVRQ', N'8.0.11')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'525a1ec5-34d1-49b3-8ae8-c232e4e7da4d', N'User', N'USER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6c6b20b8-1f33-4a3a-8280-24342c6845f5', N'Engineer', N'ENGINEER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'c5ecb5c4-0b6c-4a60-b890-2ec4e32ba6a8', N'Admin', N'ADMIN', NULL)
GO
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] ON 

INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1009, N'4c172cbf-87e6-4a19-a9b2-b6505eb4ffb3', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'2224802010007@student.tdmu.edu.vn')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1011, N'7bcef5d6-98cd-46ea-b9ae-3f80d64b7be8', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'huynhthaitoan2226@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1012, N'7bcef5d6-98cd-46ea-b9ae-3f80d64b7be8', N'IsActive', N'True')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1052, N'3acbba65-c4f6-458b-b7a4-62c564afcddd', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'huynhthaitoan0908@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1053, N'3acbba65-c4f6-458b-b7a4-62c564afcddd', N'IsActive', N'True')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1055, N'4c172cbf-87e6-4a19-a9b2-b6505eb4ffb3', N'IsActive', N'True')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1056, N'3e684bd7-f580-4f71-925c-e48d56345c95', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'huynhthaitoan090804@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1057, N'3e684bd7-f580-4f71-925c-e48d56345c95', N'IsActive', N'True')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1058, N'f44b6cf9-6cdb-470d-ac07-966cf2ae2680', N'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/emailaddress', N'mancitysgp@gmail.com')
INSERT [dbo].[AspNetUserClaims] ([Id], [UserId], [ClaimType], [ClaimValue]) VALUES (1059, N'f44b6cf9-6cdb-470d-ac07-966cf2ae2680', N'IsActive', N'True')
SET IDENTITY_INSERT [dbo].[AspNetUserClaims] OFF
GO
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'112828321610712625372', N'Google', N'3acbba65-c4f6-458b-b7a4-62c564afcddd')
INSERT [dbo].[AspNetUserLogins] ([LoginProvider], [ProviderKey], [ProviderDisplayName], [UserId]) VALUES (N'Google', N'118170000016283276109', N'Google', N'f44b6cf9-6cdb-470d-ac07-966cf2ae2680')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f44b6cf9-6cdb-470d-ac07-966cf2ae2680', N'525a1ec5-34d1-49b3-8ae8-c232e4e7da4d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3e684bd7-f580-4f71-925c-e48d56345c95', N'6c6b20b8-1f33-4a3a-8280-24342c6845f5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4c172cbf-87e6-4a19-a9b2-b6505eb4ffb3', N'6c6b20b8-1f33-4a3a-8280-24342c6845f5')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7bcef5d6-98cd-46ea-b9ae-3f80d64b7be8', N'c5ecb5c4-0b6c-4a60-b890-2ec4e32ba6a8')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3acbba65-c4f6-458b-b7a4-62c564afcddd', N'huynhthaitoan0908@gmail.com', N'HUYNHTHAITOAN0908@GMAIL.COM', N'huynhthaitoan0908@gmail.com', N'HUYNHTHAITOAN0908@GMAIL.COM', 1, NULL, N'CPEKFIJARZ7JJFWFSJZEW3EYAIDS3QN2', N'4641029e-764f-4041-8c34-5424d39dee29', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'3e684bd7-f580-4f71-925c-e48d56345c95', N'ToanEngi', N'TOANENGI', N'huynhthaitoan090804@gmail.com', N'HUYNHTHAITOAN090804@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEIGDhQHIw16cdkbWnWke7d58WK9t64nJF5qjDtMtS4fRkMBP7G2ZB8UsgQSL6QdvmQ==', N'CP4BT5KQRW2FUDAHRUHIUS3SGZMT4LRD', N'91affda7-bac5-4615-8e4d-25019e929d0d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'4c172cbf-87e6-4a19-a9b2-b6505eb4ffb3', N'Engineer', N'ENGINEER', N'2224802010007@student.tdmu.edu.vn', N'2224802010007@STUDENT.TDMU.EDU.VN', 1, N'AQAAAAIAAYagAAAAEIcLo9yc0VcRLYdpXm8+JqE1RewUcDzeZUOopgIK3UVij4I/mI1qBkKQPKg1fJl2CA==', N'IWFJDRPNXMGYIENPWZTEV5HFFCD3NTTG', N'38a88e8f-235c-4d56-9deb-f7f92bd3a44d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'7bcef5d6-98cd-46ea-b9ae-3f80d64b7be8', N'ToanAdminDepTrai', N'TOANADMINDEPTRAI', N'huynhthaitoan2226@gmail.com', N'HUYNHTHAITOAN2226@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEC8YWVH1Sld10RFd/vinLX0KJYp4CULC43WNqqOZVGN1YxV7qtAjYJkJxY76+NPwaQ==', N'INLB7ALLF66EZAK4IZE7E254R4TTZ356', N'34436140-6188-4c34-bea2-a0522e73e3da', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f44b6cf9-6cdb-470d-ac07-966cf2ae2680', N'ToanUser', N'TOANUSER', N'mancitysgp@gmail.com', N'MANCITYSGP@GMAIL.COM', 1, NULL, N'SOCLYERTJYV6JCPBASV37GPRXBTOUDIR', N'4416ad7b-a764-4f08-9101-ed011efcfda6', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[MasterDataKeys] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'County', N'd203373a-1bfb-4de2-8f4a-2e226a0bfc22', 1, N'County', 0, CAST(N'2025-05-21T07:02:39.5756686' AS DateTime2), CAST(N'2025-05-21T07:02:39.5756694' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataKeys] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'Loai Xe Hoi', N'e4a37d45-3f4f-4a73-91f1-a266c5f9ba3f', 1, N'Loai Xe Dap', 0, CAST(N'2025-05-21T07:02:20.6265538' AS DateTime2), CAST(N'2025-05-21T07:02:28.5833618' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataKeys] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'Status', N'c0d396d0-ca62-4ac7-bd49-3f4e9f3b10bc', 1, N'Status', 0, CAST(N'2025-05-21T07:02:39.5758512' AS DateTime2), CAST(N'2025-05-21T07:02:39.5758513' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataKeys] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'VehicleManufacturer', N'a466718f-6a89-40af-9836-65557d579bcc', 1, N'VehicleManufacturer', 0, CAST(N'2025-05-21T07:02:39.5758813' AS DateTime2), CAST(N'2025-05-21T07:02:39.5758813' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataKeys] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'VehicleName', N'c7ecd9d9-19a1-4003-ba20-94377b4b0d4a', 1, N'VehicleName', 0, CAST(N'2025-05-21T07:02:39.5758754' AS DateTime2), CAST(N'2025-05-21T07:02:39.5758755' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataKeys] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'VehicleType', N'dcb991f9-e3a9-47c4-93fd-0c50e1d433bb', 1, N'VehicleType', 0, CAST(N'2025-05-21T07:02:39.5758674' AS DateTime2), CAST(N'2025-05-21T07:02:39.5758675' AS DateTime2), N'ToanAdminDepTrai', NULL)
GO
INSERT [dbo].[MasterDataValues] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'a466718f-6a89-40af-9836-65557d579bcc', N'3a387453-dd28-49e7-ab24-d6bcf2e77ba9', 1, N'Ford', 0, CAST(N'2025-05-21T07:02:39.6785029' AS DateTime2), CAST(N'2025-05-21T07:02:39.6785030' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataValues] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'a466718f-6a89-40af-9836-65557d579bcc', N'8f14c499-ab9e-4b2b-9be4-b9ff3cda6a72', 1, N'General Motors', 0, CAST(N'2025-05-21T07:02:39.6784880' AS DateTime2), CAST(N'2025-05-21T07:02:39.6784880' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataValues] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'a466718f-6a89-40af-9836-65557d579bcc', N'bcaa037d-bc99-4291-9cf5-e7f83923e10d', 1, N'Honda', 0, CAST(N'2025-05-21T07:02:39.6784705' AS DateTime2), CAST(N'2025-05-21T07:02:39.6784706' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataValues] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'c0d396d0-ca62-4ac7-bd49-3f4e9f3b10bc', N'61ee8287-b643-45c0-83a2-2b6a1cb3599a', 1, N'Completed', 0, CAST(N'2025-05-21T07:02:39.6783311' AS DateTime2), CAST(N'2025-05-21T07:02:39.6783311' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataValues] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'c0d396d0-ca62-4ac7-bd49-3f4e9f3b10bc', N'6616f501-0e69-4454-9a77-71e9fc4fa60c', 1, N'OnHold', 0, CAST(N'2025-05-21T07:02:39.6783506' AS DateTime2), CAST(N'2025-05-21T07:02:39.6783507' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataValues] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'c0d396d0-ca62-4ac7-bd49-3f4e9f3b10bc', N'85b8437a-1fae-408e-b8f2-1cad03831a51', 1, N'InProgess', 0, CAST(N'2025-05-21T07:02:39.6783126' AS DateTime2), CAST(N'2025-05-21T07:02:39.6783126' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataValues] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'c7ecd9d9-19a1-4003-ba20-94377b4b0d4a', N'22476236-8e11-46ea-a9b0-e77617ca57a9', 1, N'Honda CR-V', 0, CAST(N'2025-05-21T07:02:39.6784385' AS DateTime2), CAST(N'2025-05-21T07:02:39.6784386' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataValues] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'c7ecd9d9-19a1-4003-ba20-94377b4b0d4a', N'4afda83e-2349-4687-8e32-ef382cb7f368', 1, N'Honda Accord', 0, CAST(N'2025-05-21T07:02:39.6784540' AS DateTime2), CAST(N'2025-05-21T07:02:39.6784541' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataValues] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'c7ecd9d9-19a1-4003-ba20-94377b4b0d4a', N'b405a424-5446-43eb-84a6-88a7bf9cd2f7', 1, N'Honda Brio', 0, CAST(N'2025-05-21T07:02:39.6784215' AS DateTime2), CAST(N'2025-05-21T07:02:39.6784216' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataValues] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'd203373a-1bfb-4de2-8f4a-2e226a0bfc22', N'0dbf5081-1ff5-45aa-91aa-672611a16b97', 1, N'Sacramento', 0, CAST(N'2025-05-21T07:02:39.6782877' AS DateTime2), CAST(N'2025-05-21T07:02:39.6782879' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataValues] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'd203373a-1bfb-4de2-8f4a-2e226a0bfc22', N'30c8f08b-b562-44af-890a-a861e0006ece', 1, N'Orange', 0, CAST(N'2025-05-21T07:02:39.6620155' AS DateTime2), CAST(N'2025-05-21T07:02:39.6620158' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataValues] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'd203373a-1bfb-4de2-8f4a-2e226a0bfc22', N'3e169a2c-4ce1-4ad3-b8bd-83cee73dc494', 1, N'VietNam', 0, CAST(N'2025-05-21T07:03:07.5899801' AS DateTime2), CAST(N'2025-05-21T07:03:07.5899808' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataValues] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'd203373a-1bfb-4de2-8f4a-2e226a0bfc22', N'6c451d2c-bb8b-4d37-9cc2-ee2e63098384', 1, N'San Diego', 0, CAST(N'2025-05-21T07:02:39.6781715' AS DateTime2), CAST(N'2025-05-21T07:02:39.6781719' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataValues] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'dcb991f9-e3a9-47c4-93fd-0c50e1d433bb', N'0081f2ba-c6e1-4b48-93b7-18362453d0e3', 1, N'Truck', 0, CAST(N'2025-05-21T07:02:39.6783862' AS DateTime2), CAST(N'2025-05-21T07:02:39.6783863' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataValues] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'dcb991f9-e3a9-47c4-93fd-0c50e1d433bb', N'2635109d-d77b-4f1d-a131-5fb74b6c507f', 1, N'Camper', 0, CAST(N'2025-05-21T07:02:39.6784044' AS DateTime2), CAST(N'2025-05-21T07:02:39.6784045' AS DateTime2), N'ToanAdminDepTrai', NULL)
INSERT [dbo].[MasterDataValues] ([PartitionKey], [RowKey], [IsActive], [Name], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'dcb991f9-e3a9-47c4-93fd-0c50e1d433bb', N'33b1c414-be38-40b9-bde6-5990fc185566', 1, N'Car', 0, CAST(N'2025-05-21T07:02:39.6783681' AS DateTime2), CAST(N'2025-05-21T07:02:39.6783682' AS DateTime2), N'ToanAdminDepTrai', NULL)
GO
INSERT [dbo].[ServiceRequests] ([PartitionKey], [RowKey], [VehicleName], [VehicleType], [Status], [RequestedServices], [RequestedDate], [CompletedDate], [ServiceEngineer], [IsDeleted], [CreatedDate], [UpdatedDate], [CreatedBy], [UpdatedBy]) VALUES (N'mancitysgp@gmail.com', N'26b5b8a0-17e5-43b2-98cd-934df7b17834', N'3e737f22-150c-46aa-8cd3-f5ea237ce4d0', N'99c11c61-5c71-4834-afdd-9507ffae02eb', N'New', N'Hello World', CAST(N'2025-05-21T00:00:00.0000000' AS DateTime2), NULL, NULL, 0, CAST(N'2025-05-21T07:04:05.2874726' AS DateTime2), CAST(N'2025-05-21T07:04:05.2874731' AS DateTime2), NULL, NULL)
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 5/21/2025 2:17:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/21/2025 2:17:00 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 5/21/2025 2:17:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 5/21/2025 2:17:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 5/21/2025 2:17:00 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 5/21/2025 2:17:00 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/21/2025 2:17:00 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0.0)) FOR [Price]
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
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
USE [master]
GO
ALTER DATABASE [KTTKPM] SET  READ_WRITE 
GO
