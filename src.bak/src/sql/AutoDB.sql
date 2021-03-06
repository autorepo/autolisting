USE [AutoDB]
GO
/****** Object:  Table [dbo].[Listing]    Script Date: 3/26/2014 11:19:04 PM ******/
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
/****** Object:  Table [dbo].[StatusType]    Script Date: 3/26/2014 11:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StatusType](
	[StatusTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_StatusType] PRIMARY KEY CLUSTERED 
(
	[StatusTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VehicleType]    Script Date: 3/26/2014 11:19:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VehicleType](
	[VehicleTypeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
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
SET IDENTITY_INSERT [dbo].[Listing] ON 

INSERT [dbo].[Listing] ([ListingID], [UserID], [DateAdd], [Title], [VIN], [Year], [MakeID], [ModelID], [Trim], [BodyStyleID], [TransmissionID], [ShowVIN], [IsCertified], [IsETested], [StatusID], [Price], [KM], [BodyColorID], [InteriorColorID], [DoorCountID], [PassengerCountID], [DriveTrainID], [Engine], [CylinderCount], [FuelTypeID], [StatusTypeID], [Location]) VALUES (1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Listing] ([ListingID], [UserID], [DateAdd], [Title], [VIN], [Year], [MakeID], [ModelID], [Trim], [BodyStyleID], [TransmissionID], [ShowVIN], [IsCertified], [IsETested], [StatusID], [Price], [KM], [BodyColorID], [InteriorColorID], [DoorCountID], [PassengerCountID], [DriveTrainID], [Engine], [CylinderCount], [FuelTypeID], [StatusTypeID], [Location]) VALUES (2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Listing] ([ListingID], [UserID], [DateAdd], [Title], [VIN], [Year], [MakeID], [ModelID], [Trim], [BodyStyleID], [TransmissionID], [ShowVIN], [IsCertified], [IsETested], [StatusID], [Price], [KM], [BodyColorID], [InteriorColorID], [DoorCountID], [PassengerCountID], [DriveTrainID], [Engine], [CylinderCount], [FuelTypeID], [StatusTypeID], [Location]) VALUES (3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Listing] ([ListingID], [UserID], [DateAdd], [Title], [VIN], [Year], [MakeID], [ModelID], [Trim], [BodyStyleID], [TransmissionID], [ShowVIN], [IsCertified], [IsETested], [StatusID], [Price], [KM], [BodyColorID], [InteriorColorID], [DoorCountID], [PassengerCountID], [DriveTrainID], [Engine], [CylinderCount], [FuelTypeID], [StatusTypeID], [Location]) VALUES (4, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Listing] OFF
SET IDENTITY_INSERT [dbo].[StatusType] ON 

INSERT [dbo].[StatusType] ([StatusTypeID], [Name]) VALUES (1, N'New       ')
INSERT [dbo].[StatusType] ([StatusTypeID], [Name]) VALUES (2, N'Used      ')
INSERT [dbo].[StatusType] ([StatusTypeID], [Name]) VALUES (3, N'Damaged   ')
INSERT [dbo].[StatusType] ([StatusTypeID], [Name]) VALUES (4, N'Certified Pre-owned')
SET IDENTITY_INSERT [dbo].[StatusType] OFF
SET IDENTITY_INSERT [dbo].[VehicleType] ON 

INSERT [dbo].[VehicleType] ([VehicleTypeID], [Name], [SortOrder], [IsActive]) VALUES (1, N'Cars, Trucks & SUVs', 0, 1)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Name], [SortOrder], [IsActive]) VALUES (2, N'Commercial / Heavy Trucks', 1, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Name], [SortOrder], [IsActive]) VALUES (3, N'Trailers', 2, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Name], [SortOrder], [IsActive]) VALUES (4, N'RVs', 3, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Name], [SortOrder], [IsActive]) VALUES (5, N'Boats', 4, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Name], [SortOrder], [IsActive]) VALUES (6, N'Watercraft', 5, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Name], [SortOrder], [IsActive]) VALUES (7, N'Motorcycles & ATVs', 6, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Name], [SortOrder], [IsActive]) VALUES (8, N'Snowmobiles', 7, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Name], [SortOrder], [IsActive]) VALUES (9, N'Heavy Equipment', 8, 0)
INSERT [dbo].[VehicleType] ([VehicleTypeID], [Name], [SortOrder], [IsActive]) VALUES (10, N'Farm Equipment', 9, 0)
SET IDENTITY_INSERT [dbo].[VehicleType] OFF
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
ALTER TABLE [dbo].[Listing]  WITH CHECK ADD  CONSTRAINT [FK_Listing_StatusType] FOREIGN KEY([StatusTypeID])
REFERENCES [dbo].[StatusType] ([StatusTypeID])
GO
ALTER TABLE [dbo].[Listing] CHECK CONSTRAINT [FK_Listing_StatusType]
GO
