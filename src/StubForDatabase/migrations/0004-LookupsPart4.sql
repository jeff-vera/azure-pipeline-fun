/****** Object:  Table [dbo].[VersaBadgeReports]    Script Date: 12/19/2018 3:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeReports](
	[VBReportID] [int] IDENTITY(1,1) NOT NULL,
	[ShiftID] [int] NOT NULL,
	[AssetID] [int] NOT NULL,
	[ShiftStart] [datetime] NOT NULL,
	[ShiftEnd] [datetime] NOT NULL,
	[EDTravelStandby] [int] NOT NULL,
	[EDPatient] [int] NOT NULL,
	[Documentation] [int] NOT NULL,
	[Acute] [int] NOT NULL,
	[RHC] [int] NOT NULL,
	[Radiology] [int] NOT NULL,
	[Speciality] [int] NOT NULL,
	[OffTheGrid] [int] NOT NULL,
	[BadgeStorage] [int] NOT NULL,
	[StandByAdjust] [int] NOT NULL,
	[Auditor] [int] NOT NULL,
 CONSTRAINT [PK_VersaBadgeReports] PRIMARY KEY CLUSTERED 
(
	[VBReportID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



/****** Object:  Table [dbo].[VersaBadgeParLevelHistory]    Script Date: 12/19/2018 3:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeParLevelHistory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParLevelID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[OrganizationID] [int] NOT NULL,
	[LimitCode] [int] NOT NULL,
 CONSTRAINT [PK__tmp_ms_x__3214EC07FFE68B41] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[VersaBadgeAssetTypes]    Script Date: 12/19/2018 3:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeAssetTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](10) NOT NULL,
	[OrganisationID] [int] NULL,
	[IsSOS] [bit] NOT NULL,
	[IsPerson] [bit] NOT NULL,
 CONSTRAINT [PK__VersaBad__3214EC071BDB003B] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET IDENTITY_INSERT [dbo].[VersaBadgeAssetTypes] ON 
GO
INSERT [dbo].[VersaBadgeAssetTypes] ([Id], [Type], [Color], [OrganisationID], [IsSOS], [IsPerson]) VALUES (1, N'Staff', N'#ffffff', NULL, 0, 0)
GO
INSERT [dbo].[VersaBadgeAssetTypes] ([Id], [Type], [Color], [OrganisationID], [IsSOS], [IsPerson]) VALUES (29, N'Dr.', N'#0000ff
', NULL, 0, 0)
GO
INSERT [dbo].[VersaBadgeAssetTypes] ([Id], [Type], [Color], [OrganisationID], [IsSOS], [IsPerson]) VALUES (30, N'PA', N'#00ff00
', NULL, 0, 0)
GO
INSERT [dbo].[VersaBadgeAssetTypes] ([Id], [Type], [Color], [OrganisationID], [IsSOS], [IsPerson]) VALUES (31, N'NP', N'#ff0000
', NULL, 0, 0)
GO
INSERT [dbo].[VersaBadgeAssetTypes] ([Id], [Type], [Color], [OrganisationID], [IsSOS], [IsPerson]) VALUES (32, N'RN', N'#00cc00', NULL, 0, 0)
GO
INSERT [dbo].[VersaBadgeAssetTypes] ([Id], [Type], [Color], [OrganisationID], [IsSOS], [IsPerson]) VALUES (33, N'CNS', N'#0000cc', NULL, 0, 0)
GO
INSERT [dbo].[VersaBadgeAssetTypes] ([Id], [Type], [Color], [OrganisationID], [IsSOS], [IsPerson]) VALUES (34, N'Spare', N'#cccccc', NULL, 0, 0)
GO
INSERT [dbo].[VersaBadgeAssetTypes] ([Id], [Type], [Color], [OrganisationID], [IsSOS], [IsPerson]) VALUES (37, N'Signal Bleed', N'#ff0000', NULL, 0, 0)
GO
INSERT [dbo].[VersaBadgeAssetTypes] ([Id], [Type], [Color], [OrganisationID], [IsSOS], [IsPerson]) VALUES (38, N'Test', N'#ffccff', NULL, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[VersaBadgeAssetTypes] OFF
GO


ALTER TABLE [dbo].[VersaBadgeAssetTypes] ADD  CONSTRAINT [DF__VersaBadg__IsSOS__0AEC72A8]  DEFAULT ((0)) FOR [IsSOS]
GO
ALTER TABLE [dbo].[VersaBadgeAssetTypes] ADD  CONSTRAINT [DF__VersaBadg__IsPer__639D9B5D]  DEFAULT ((0)) FOR [IsPerson]
GO



/****** Object:  Table [dbo].[VersaBadgeSOSTypes]    Script Date: 12/19/2018 3:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeSOSTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[Color] [nvarchar](50) NULL,
	[OrganizationID] [int] NULL,
 CONSTRAINT [PK__tmp_ms_x__3214EC0772B30A47] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET IDENTITY_INSERT [dbo].[VersaBadgeSOSTypes] ON 
GO
INSERT [dbo].[VersaBadgeSOSTypes] ([Id], [Type], [Color], [OrganizationID]) VALUES (1, N'Clean up', N'#555555', NULL)
GO
INSERT [dbo].[VersaBadgeSOSTypes] ([Id], [Type], [Color], [OrganizationID]) VALUES (2, N'Assist', N'#555555', NULL)
GO
INSERT [dbo].[VersaBadgeSOSTypes] ([Id], [Type], [Color], [OrganizationID]) VALUES (3, N'SOS', N'#ff0000', NULL)
GO
SET IDENTITY_INSERT [dbo].[VersaBadgeSOSTypes] OFF
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeAuditType](
	[VersaBadgeAuditTypeID] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VersaBadgeAuditType] PRIMARY KEY CLUSTERED 
(
	[VersaBadgeAuditTypeID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


INSERT [dbo].[VersaBadgeAuditType] ([VersaBadgeAuditTypeID], [Description]) VALUES (1, N'Desktop App Audit')
GO
INSERT [dbo].[VersaBadgeAuditType] ([VersaBadgeAuditTypeID], [Description]) VALUES (2, N'Session Audit')
GO
INSERT [dbo].[VersaBadgeAuditType] ([VersaBadgeAuditTypeID], [Description]) VALUES (3, N'Error Log')
GO

/****** Object:  Table [dbo].[VersaBadgeAuditSessionChangeType]    Script Date: 12/19/2018 3:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeAuditSessionChangeType](
	[VersaBadgeAuditSessionChangeTypeID] [int] NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_VersaBadgeAuditSessionChangeType] PRIMARY KEY CLUSTERED 
(
	[VersaBadgeAuditSessionChangeTypeID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[VersaBadgeAuditSessionChangeType] ([VersaBadgeAuditSessionChangeTypeID], [Description]) VALUES (1, N'Console Connect')
GO
INSERT [dbo].[VersaBadgeAuditSessionChangeType] ([VersaBadgeAuditSessionChangeTypeID], [Description]) VALUES (2, N'Console Disconnect')
GO
INSERT [dbo].[VersaBadgeAuditSessionChangeType] ([VersaBadgeAuditSessionChangeTypeID], [Description]) VALUES (3, N'Remote Connect')
GO
INSERT [dbo].[VersaBadgeAuditSessionChangeType] ([VersaBadgeAuditSessionChangeTypeID], [Description]) VALUES (4, N'Remote Disconnect')
GO
INSERT [dbo].[VersaBadgeAuditSessionChangeType] ([VersaBadgeAuditSessionChangeTypeID], [Description]) VALUES (5, N'Session Logon')
GO
INSERT [dbo].[VersaBadgeAuditSessionChangeType] ([VersaBadgeAuditSessionChangeTypeID], [Description]) VALUES (6, N'Session Logoff')
GO
INSERT [dbo].[VersaBadgeAuditSessionChangeType] ([VersaBadgeAuditSessionChangeTypeID], [Description]) VALUES (7, N'Session Lock')
GO
INSERT [dbo].[VersaBadgeAuditSessionChangeType] ([VersaBadgeAuditSessionChangeTypeID], [Description]) VALUES (8, N'Session Unlock')
GO
INSERT [dbo].[VersaBadgeAuditSessionChangeType] ([VersaBadgeAuditSessionChangeTypeID], [Description]) VALUES (9, N'Session Remote Control')
GO



