USE [AutoDB]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 5/19/2014 6:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Language](
	[LanguageID] [int] IDENTITY(1,1) NOT NULL,
	[Lang] [char](2) NULL,
	[Name] [nvarchar](50) NULL,
	[English] [nvarchar](50) NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[LanguageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Listing]    Script Date: 5/19/2014 6:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Listing](
	[ListingID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[DateAdd] [datetime] NULL,
	[Title] [varchar](200) NULL,
	[VIN] [int] NULL,
	[Year] [int] NULL,
	[MakeID] [int] NULL,
	[ModelID] [int] NULL,
	[Trim] [varchar](50) NULL,
	[BodyStyleID] [int] NULL,
	[TransmissionID] [int] NULL,
	[ShowVIN] [bit] NULL,
	[IsCertified] [bit] NULL,
	[IsETested] [bit] NULL,
	[StatusID] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[KM] [int] NULL,
	[BodyColorID] [int] NULL,
	[InteriorColorID] [int] NULL,
	[DoorCountID] [int] NULL,
	[PassengerCountID] [int] NULL,
	[DriveTrainID] [int] NULL,
	[Engine] [varchar](50) NULL,
	[CylinderCount] [int] NULL,
	[FuelTypeID] [int] NULL,
	[StatusTypeID] [int] NULL,
	[Location] [varchar](50) NULL,
 CONSTRAINT [PK_Listting] PRIMARY KEY CLUSTERED 
(
	[ListingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StatusType]    Script Date: 5/19/2014 6:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StatusType](
	[StatusTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Lang] [char](2) NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_StatusType] PRIMARY KEY CLUSTERED 
(
	[StatusTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 5/19/2014 6:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](56) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[VehicleType]    Script Date: 5/19/2014 6:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VehicleType](
	[VehicleTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Lang] [char](2) NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SortOrder] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_VehicleType] PRIMARY KEY CLUSTERED 
(
	[VehicleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[webpages_Membership]    Script Date: 5/19/2014 6:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Membership](
	[UserId] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[ConfirmationToken] [nvarchar](128) NULL,
	[IsConfirmed] [bit] NULL,
	[LastPasswordFailureDate] [datetime] NULL,
	[PasswordFailuresSinceLastSuccess] [int] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordChangedDate] [datetime] NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[PasswordVerificationToken] [nvarchar](128) NULL,
	[PasswordVerificationTokenExpirationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_OAuthMembership]    Script Date: 5/19/2014 6:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_OAuthMembership](
	[Provider] [nvarchar](30) NOT NULL,
	[ProviderUserId] [nvarchar](100) NOT NULL,
	[UserId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Provider] ASC,
	[ProviderUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_Roles]    Script Date: 5/19/2014 6:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[webpages_UsersInRoles]    Script Date: 5/19/2014 6:50:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[webpages_UsersInRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Language] ON 

INSERT [dbo].[Language] ([LanguageID], [Lang], [Name], [English]) VALUES (1, N'en', N'English', N'English')
INSERT [dbo].[Language] ([LanguageID], [Lang], [Name], [English]) VALUES (2, N'fr', N'Français', N'French')
INSERT [dbo].[Language] ([LanguageID], [Lang], [Name], [English]) VALUES (3, N'zh', N'中国的', N'Chinese')
SET IDENTITY_INSERT [dbo].[Language] OFF
SET IDENTITY_INSERT [dbo].[Listing] ON 

INSERT [dbo].[Listing] ([ListingID], [UserID], [DateAdd], [Title], [VIN], [Year], [MakeID], [ModelID], [Trim], [BodyStyleID], [TransmissionID], [ShowVIN], [IsCertified], [IsETested], [StatusID], [Price], [KM], [BodyColorID], [InteriorColorID], [DoorCountID], [PassengerCountID], [DriveTrainID], [Engine], [CylinderCount], [FuelTypeID], [StatusTypeID], [Location]) VALUES (1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Listing] ([ListingID], [UserID], [DateAdd], [Title], [VIN], [Year], [MakeID], [ModelID], [Trim], [BodyStyleID], [TransmissionID], [ShowVIN], [IsCertified], [IsETested], [StatusID], [Price], [KM], [BodyColorID], [InteriorColorID], [DoorCountID], [PassengerCountID], [DriveTrainID], [Engine], [CylinderCount], [FuelTypeID], [StatusTypeID], [Location]) VALUES (2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Listing] ([ListingID], [UserID], [DateAdd], [Title], [VIN], [Year], [MakeID], [ModelID], [Trim], [BodyStyleID], [TransmissionID], [ShowVIN], [IsCertified], [IsETested], [StatusID], [Price], [KM], [BodyColorID], [InteriorColorID], [DoorCountID], [PassengerCountID], [DriveTrainID], [Engine], [CylinderCount], [FuelTypeID], [StatusTypeID], [Location]) VALUES (3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Listing] ([ListingID], [UserID], [DateAdd], [Title], [VIN], [Year], [MakeID], [ModelID], [Trim], [BodyStyleID], [TransmissionID], [ShowVIN], [IsCertified], [IsETested], [StatusID], [Price], [KM], [BodyColorID], [InteriorColorID], [DoorCountID], [PassengerCountID], [DriveTrainID], [Engine], [CylinderCount], [FuelTypeID], [StatusTypeID], [Location]) VALUES (4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Listing] OFF
SET IDENTITY_INSERT [dbo].[StatusType] ON 

INSERT [dbo].[StatusType] ([StatusTypeID], [Lang], [Name]) VALUES (1, N'en', N'New')
INSERT [dbo].[StatusType] ([StatusTypeID], [Lang], [Name]) VALUES (2, N'en', N'Used')
INSERT [dbo].[StatusType] ([StatusTypeID], [Lang], [Name]) VALUES (3, N'en', N'Damaged')
INSERT [dbo].[StatusType] ([StatusTypeID], [Lang], [Name]) VALUES (4, N'en', N'Certified Pre-owned')
INSERT [dbo].[StatusType] ([StatusTypeID], [Lang], [Name]) VALUES (5, N'fr', N'Neuf')
INSERT [dbo].[StatusType] ([StatusTypeID], [Lang], [Name]) VALUES (6, N'fr', N'Occasion')
INSERT [dbo].[StatusType] ([StatusTypeID], [Lang], [Name]) VALUES (7, N'fr', N'Endommagé')
INSERT [dbo].[StatusType] ([StatusTypeID], [Lang], [Name]) VALUES (8, N'fr', N'Véhicules Certifiés')
INSERT [dbo].[StatusType] ([StatusTypeID], [Lang], [Name]) VALUES (9, N'zh', N'新')
INSERT [dbo].[StatusType] ([StatusTypeID], [Lang], [Name]) VALUES (10, N'zh', N'使用')
INSERT [dbo].[StatusType] ([StatusTypeID], [Lang], [Name]) VALUES (11, N'zh', N'破损')
INSERT [dbo].[StatusType] ([StatusTypeID], [Lang], [Name]) VALUES (12, N'zh', N'认证二手')
SET IDENTITY_INSERT [dbo].[StatusType] OFF
SET IDENTITY_INSERT [dbo].[UserProfile] ON 

INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (1, N'ssssssssss')
INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (3, N'tony')
INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (2, N'user')
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
SET IDENTITY_INSERT [dbo].[VehicleType] ON 

INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (1, N'en', N'Cars, Trucks & SUVs', 0, 1)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (2, N'en', N'Commercial / Heavy Trucks', 1, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (3, N'en', N'Trailers', 2, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (4, N'en', N'RVs', 3, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (5, N'en', N'Boats', 4, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (6, N'en', N'Watercraft', 5, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (7, N'en', N'Motorcycles & ATVs', 6, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (8, N'en', N'Snowmobiles', 7, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (9, N'en', N'Heavy Equipment', 8, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (10, N'en', N'Farm Equipment', 9, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (11, N'fr', N'Voitures, camions et VUS', 0, 1)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (12, N'fr', N'Camions Commercial / Lourds', 1, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (13, N'fr', N'Remorques', 2, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (14, N'fr', N'VRs', 3, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (15, N'fr', N'Bateaux', 4, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (16, N'fr', N'Motomarines', 5, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (17, N'fr', N'Motos et VTT', 6, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (18, N'fr', N'Motoneiges', 7, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (19, N'fr', N'Équipement Lourd', 8, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (20, N'fr', N'Équipement Agricole', 9, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (21, N'zh', N'汽车，卡车和越野车', 0, 1)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (22, N'zh', N'商业/重型卡车', 1, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (23, N'zh', N'预告片', 2, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (24, N'zh', N'房车', 3, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (25, N'zh', N'船', 4, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (26, N'zh', N'船舶', 5, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (27, N'zh', N'摩托车和全地形车', 6, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (28, N'zh', N'雪地车', 7, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (29, N'zh', N'重型设备', 8, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Lang], [Name], [SortOrder], [IsActive]) VALUES (30, N'zh', N'农用设备', 9, 0)
SET IDENTITY_INSERT [dbo].[VehicleType] OFF
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1, CAST(0x0000A2FD000C8609 AS DateTime), NULL, 1, NULL, 0, N'ABlcpCi9I8Xvr1Q90I1c6mJdWyiu/xoYzZE4jX5o/YwUIU+tNyxHbahbMROalCiVWA==', CAST(0x0000A2FD000C8609 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (2, CAST(0x0000A3030125B25B AS DateTime), NULL, 1, NULL, 0, N'ACrLBhXzNCUgzcxp5WuV05diVzAQAaBa27TNuasR9RKtFp/qJomOw0O2IHUrB8wXow==', CAST(0x0000A3030125B25B AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (3, CAST(0x0000A330017659E2 AS DateTime), NULL, 1, NULL, 0, N'ACCxyNmYqwfe+VXKYCBRGdv+8QCorfdCKBpZSBtDYYR0iNL3uNk4fN0Enb2X2vgBhg==', CAST(0x0000A330017659E2 AS DateTime), N'', NULL, NULL)
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__UserProf__C9F2845608378F35]    Script Date: 5/19/2014 6:50:19 PM ******/
ALTER TABLE [dbo].[UserProfile] ADD UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__webpages__8A2B616088FB3D4F]    Script Date: 5/19/2014 6:50:19 PM ******/
ALTER TABLE [dbo].[webpages_Roles] ADD UNIQUE NONCLUSTERED 
(
	[RoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Listing] ADD  CONSTRAINT [DF_Listting_ShowVIN]  DEFAULT ((0)) FOR [ShowVIN]
GO
ALTER TABLE [dbo].[Listing] ADD  CONSTRAINT [DF_Listting_IsCertified]  DEFAULT ((0)) FOR [IsCertified]
GO
ALTER TABLE [dbo].[Listing] ADD  CONSTRAINT [DF_Listting_IsETested]  DEFAULT ((0)) FOR [IsETested]
GO
ALTER TABLE [dbo].[VehicleType] ADD  CONSTRAINT [DF_VehicleType_SortOrder]  DEFAULT ((0)) FOR [SortOrder]
GO
ALTER TABLE [dbo].[VehicleType] ADD  CONSTRAINT [DF_VehicleType_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
ALTER TABLE [dbo].[webpages_Membership] ADD  DEFAULT ((0)) FOR [PasswordFailuresSinceLastSuccess]
GO
ALTER TABLE [dbo].[Listing]  WITH CHECK ADD  CONSTRAINT [FK_Listing_StatusType] FOREIGN KEY([StatusTypeID])
REFERENCES [dbo].[StatusType] ([StatusTypeID])
GO
ALTER TABLE [dbo].[Listing] CHECK CONSTRAINT [FK_Listing_StatusType]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[webpages_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_RoleId]
GO
ALTER TABLE [dbo].[webpages_UsersInRoles]  WITH CHECK ADD  CONSTRAINT [fk_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserProfile] ([UserId])
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] CHECK CONSTRAINT [fk_UserId]
GO
