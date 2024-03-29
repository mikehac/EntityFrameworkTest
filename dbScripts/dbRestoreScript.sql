USE [master]
GO
/****** Object:  Database [roomhike]    Script Date: 15/3/2019 14:13:56 PM ******/
CREATE DATABASE [roomhike]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'roomhike', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\roomhike.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'roomhike_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\roomhike_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [roomhike] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [roomhike].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [roomhike] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [roomhike] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [roomhike] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [roomhike] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [roomhike] SET ARITHABORT OFF 
GO
ALTER DATABASE [roomhike] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [roomhike] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [roomhike] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [roomhike] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [roomhike] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [roomhike] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [roomhike] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [roomhike] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [roomhike] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [roomhike] SET  DISABLE_BROKER 
GO
ALTER DATABASE [roomhike] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [roomhike] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [roomhike] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [roomhike] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [roomhike] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [roomhike] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [roomhike] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [roomhike] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [roomhike] SET  MULTI_USER 
GO
ALTER DATABASE [roomhike] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [roomhike] SET DB_CHAINING OFF 
GO
ALTER DATABASE [roomhike] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [roomhike] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [roomhike] SET DELAYED_DURABILITY = DISABLED 
GO
USE [roomhike]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 15/3/2019 14:13:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 15/3/2019 14:13:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 15/3/2019 14:13:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[UserId] [nvarchar](128) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 15/3/2019 14:13:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 15/3/2019 14:13:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 15/3/2019 14:13:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryId] [bigint] NULL,
	[Name] [nvarchar](250) NULL,
	[Icon] [nvarchar](250) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotels]    Script Date: 15/3/2019 14:13:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotels](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OwnerId] [nvarchar](128) NULL,
	[CreatorId] [nvarchar](128) NULL,
	[Name] [nvarchar](250) NULL,
	[Type] [nvarchar](128) NULL,
	[Location] [nvarchar](250) NULL,
	[Link] [nvarchar](250) NULL,
	[LinkType] [nvarchar](50) NULL,
	[Lat] [float] NULL,
	[Lng] [float] NULL,
	[AverageRating] [float] NULL,
 CONSTRAINT [PK_Hotels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Media]    Script Date: 15/3/2019 14:13:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[Link] [nvarchar](500) NULL,
	[ReviewId] [bigint] NULL,
 CONSTRAINT [PK_Media] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 15/3/2019 14:13:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoomId] [bigint] NULL,
	[CategoryId] [bigint] NULL,
	[UserId] [nvarchar](128) NULL,
	[Rate] [tinyint] NULL,
	[Text] [nvarchar](max) NULL,
	[ReviewId] [bigint] NULL,
	[Publish] [bit] NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rooms]    Script Date: 15/3/2019 14:13:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rooms](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatorId] [nvarchar](128) NULL,
	[HotelId] [bigint] NULL,
	[Type] [nvarchar](50) NULL,
	[Name] [nvarchar](128) NULL,
	[Floor] [nvarchar](50) NULL,
	[Number] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rooms] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'5390b3db-5303-4c0d-aad3-7ed1a16610b5', N'mikehac@outlook.com', 0, N'AAXdaxnKDE7b6iOKYcFu9HB5pK65XJg1DEvJPguS518lh/xY6vxqlRfbDXFrDVDplw==', N'a3f7c9d1-5b60-4f01-8f99-5fc68d918ee4', NULL, 0, 0, NULL, 0, 0, N'mikehac@outlook.com')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([Id], [CategoryId], [Name], [Icon]) VALUES (1, 1, N'מזון', NULL)
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Hotels] ON 
GO
INSERT [dbo].[Hotels] ([Id], [OwnerId], [CreatorId], [Name], [Type], [Location], [Link], [LinkType], [Lat], [Lng], [AverageRating]) VALUES (1, NULL, N'5390b3db-5303-4c0d-aad3-7ed1a16610b5', N'צימר 1', NULL, N'אחוזה 50, רעננה, ישראל', N'EiXXkNeX15XXlteUIDUwLCDXqNei16DXoNeULCDXmdep16jXkNec', N'place', 32.1787308, 34.882933500000036, NULL)
GO
INSERT [dbo].[Hotels] ([Id], [OwnerId], [CreatorId], [Name], [Type], [Location], [Link], [LinkType], [Lat], [Lng], [AverageRating]) VALUES (2, NULL, N'0952602f-b094-4e23-8eb7-958e9c24d7c0', N'צימר 2', NULL, N'אחוזה 75, רעננה, ישראל', N'EiXXkNeX15XXlteUIDc1LCDXqNei16DXoNeULCDXmdep16jXkNec', N'place', 32.1792311, 34.880080700000008, NULL)
GO
INSERT [dbo].[Hotels] ([Id], [OwnerId], [CreatorId], [Name], [Type], [Location], [Link], [LinkType], [Lat], [Lng], [AverageRating]) VALUES (3, NULL, N'e6956975-d5d9-468b-be9e-2bad41d4d6b4', N'צימר בצפון', NULL, N'בר יהודה 7, נהריה, ישראל', N'EinXkdeoINeZ15TXldeT15QgNywg16DXlNeo15nXlCwg15nXqdeo15DXnA', N'place', 33.0079751, 35.098748200000045, NULL)
GO
SET IDENTITY_INSERT [dbo].[Hotels] OFF
GO
SET IDENTITY_INSERT [dbo].[Media] ON 
GO
INSERT [dbo].[Media] ([Id], [Type], [Link], [ReviewId]) VALUES (1, N'image', N'Upload/5390b3db-5303-4c0d-aad3-7ed1a16610b5_5dbdde54-08ff-40dc-8f22-880995428913_batery.jpg', 2)
GO
INSERT [dbo].[Media] ([Id], [Type], [Link], [ReviewId]) VALUES (2, N'image', N'Upload/5390b3db-5303-4c0d-aad3-7ed1a16610b5_c4cd0744-1f7f-4c0a-9e4a-03b8cd47997b_013-Netvision.jpg', 4)
GO
INSERT [dbo].[Media] ([Id], [Type], [Link], [ReviewId]) VALUES (3, N'image', N'Upload/5390b3db-5303-4c0d-aad3-7ed1a16610b5_4905b417-f8cc-4513-8a43-afe4af01ebdb_AdLogo.png', 4)
GO
SET IDENTITY_INSERT [dbo].[Media] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 
GO
INSERT [dbo].[Reviews] ([Id], [RoomId], [CategoryId], [UserId], [Rate], [Text], [ReviewId], [Publish]) VALUES (2, 1, 1, N'5390b3db-5303-4c0d-aad3-7ed1a16610b5', 3, N'די נקי,לא מאובזר', NULL, NULL)
GO
INSERT [dbo].[Reviews] ([Id], [RoomId], [CategoryId], [UserId], [Rate], [Text], [ReviewId], [Publish]) VALUES (4, 1, 1, N'5390b3db-5303-4c0d-aad3-7ed1a16610b5', 3, N'קטן מדי,מלוכלך', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Rooms] ON 
GO
INSERT [dbo].[Rooms] ([Id], [CreatorId], [HotelId], [Type], [Name], [Floor], [Number]) VALUES (1, N'5390b3db-5303-4c0d-aad3-7ed1a16610b5', 1, NULL, N'מטבחון', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Rooms] OFF
GO
/****** Object:  Index [IX_FK_Categories_Categories]    Script Date: 15/3/2019 14:13:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Categories_Categories] ON [dbo].[Categories]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK_Hotels_AspNetUsers]    Script Date: 15/3/2019 14:13:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Hotels_AspNetUsers] ON [dbo].[Hotels]
(
	[OwnerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Media_Reviews]    Script Date: 15/3/2019 14:13:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Media_Reviews] ON [dbo].[Media]
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Reviews_0]    Script Date: 15/3/2019 14:13:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Reviews_0] ON [dbo].[Reviews]
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK_Reviews_AspNetUsers]    Script Date: 15/3/2019 14:13:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Reviews_AspNetUsers] ON [dbo].[Reviews]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Reviews_Categories]    Script Date: 15/3/2019 14:13:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Reviews_Categories] ON [dbo].[Reviews]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Reviews_Rooms]    Script Date: 15/3/2019 14:13:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Reviews_Rooms] ON [dbo].[Reviews]
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_FK_Rooms_AspNetUsers]    Script Date: 15/3/2019 14:13:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Rooms_AspNetUsers] ON [dbo].[Rooms]
(
	[CreatorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FK_Rooms_Hotels]    Script Date: 15/3/2019 14:13:57 PM ******/
CREATE NONCLUSTERED INDEX [IX_FK_Rooms_Hotels] ON [dbo].[Rooms]
(
	[HotelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Categories]  WITH CHECK ADD  CONSTRAINT [FK_Categories_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Categories]
GO
ALTER TABLE [dbo].[Hotels]  WITH CHECK ADD  CONSTRAINT [FK_Hotels_AspNetUsers] FOREIGN KEY([OwnerId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Hotels] CHECK CONSTRAINT [FK_Hotels_AspNetUsers]
GO
ALTER TABLE [dbo].[Media]  WITH CHECK ADD  CONSTRAINT [FK_Media_Reviews] FOREIGN KEY([ReviewId])
REFERENCES [dbo].[Reviews] ([Id])
GO
ALTER TABLE [dbo].[Media] CHECK CONSTRAINT [FK_Media_Reviews]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_0] FOREIGN KEY([ReviewId])
REFERENCES [dbo].[Reviews] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_0]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_AspNetUsers] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_AspNetUsers]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Categories]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Rooms] FOREIGN KEY([RoomId])
REFERENCES [dbo].[Rooms] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Rooms]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_AspNetUsers] FOREIGN KEY([CreatorId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_AspNetUsers]
GO
ALTER TABLE [dbo].[Rooms]  WITH CHECK ADD  CONSTRAINT [FK_Rooms_Hotels] FOREIGN KEY([HotelId])
REFERENCES [dbo].[Hotels] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rooms] CHECK CONSTRAINT [FK_Rooms_Hotels]
GO
USE [master]
GO
ALTER DATABASE [roomhike] SET  READ_WRITE 
GO
