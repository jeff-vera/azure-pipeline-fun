/****** Object:  Table [dbo].[VersaBadgeGPSHistory]    Script Date: 12/19/2018 3:00:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeGPSHistory](
	[GPSHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[MACAddress] [nvarchar](50) NOT NULL,
	[Latitude] [decimal](12, 9) NOT NULL,
	[Longitude] [decimal](12, 9) NOT NULL,
	[DateStored] [datetime] NOT NULL,
 CONSTRAINT [PK_VersaBadgeGPSHistory] PRIMARY KEY CLUSTERED 
(
	[GPSHistoryID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[VersaBadgeGPSHistory] ADD  CONSTRAINT [DF_VersaBadgeGPSHistory_DateStored]  DEFAULT (getutcdate()) FOR [DateStored]
GO

/****** Object:  StoredProcedure [dbo].[pVersaBadgeGPSHistoryInsert]    Script Date: 12/19/2018 3:00:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <Author, , Name>
-- Create Date: <Create Date, , >
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE [dbo].[pVersaBadgeGPSHistoryInsert]
(
    @MACAddress NVARCHAR(50),
    @Latitude decimal(12,9),
    @Longitude decimal(12,9)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    
	INSERT INTO [dbo].[VersaBadgeGPSHistory]
           ([MACAddress]
           ,[Latitude]
           ,[Longitude])
     VALUES
           (@MACAddress
           ,@Latitude
           ,@Longitude)


END
GO

/****** Object:  Table [dbo].[VersaBadgeBiometricHistory]    Script Date: 12/19/2018 3:00:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeBiometricHistory](
	[BiometricHistoryID] [int] IDENTITY(1,1) NOT NULL,
	[MACAddress] [nvarchar](50) NOT NULL,
	[BiometricVerificationTypeID] [int] NOT NULL,
	[DateStored] [datetime] NOT NULL,
 CONSTRAINT [PK_VersaBadgeBiometricHistory] PRIMARY KEY CLUSTERED 
(
	[BiometricHistoryID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[VersaBadgeBiometricHistory] ADD  CONSTRAINT [DF_VersaBadgeBiometricHistory_DateStored]  DEFAULT (getutcdate()) FOR [DateStored]
GO


/****** Object:  Table [dbo].[VersaBadgeAuditURLClassification]    Script Date: 12/19/2018 3:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeAuditURLClassification](
	[AuditURLClassificationID] [int] IDENTITY(1,1) NOT NULL,
	[URL] [nvarchar](250) NOT NULL,
	[OrganizationID] [int] NOT NULL,
	[AuditClassificationTypeID] [int] NOT NULL,
 CONSTRAINT [PK_VersaBadgeAuditURLClassification_1] PRIMARY KEY CLUSTERED 
(
	[AuditURLClassificationID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[VersaBadgeAuditClassificationTypes]    Script Date: 12/19/2018 3:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeAuditClassificationTypes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Classification] [nvarchar](50) NOT NULL,
	[OrganizationID] [int] NULL,
 CONSTRAINT [PK_VersaBadgeAuditClassification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET IDENTITY_INSERT [dbo].[VersaBadgeAuditClassificationTypes] ON 
GO
INSERT [dbo].[VersaBadgeAuditClassificationTypes] ([Id], [Classification], [OrganizationID]) VALUES (1, N'Patient Documentation', NULL)
GO
INSERT [dbo].[VersaBadgeAuditClassificationTypes] ([Id], [Classification], [OrganizationID]) VALUES (2, N'Admin', NULL)
GO
INSERT [dbo].[VersaBadgeAuditClassificationTypes] ([Id], [Classification], [OrganizationID]) VALUES (3, N'Leisure', NULL)
GO
INSERT [dbo].[VersaBadgeAuditClassificationTypes] ([Id], [Classification], [OrganizationID]) VALUES (6, N'No Classification', NULL)
GO
SET IDENTITY_INSERT [dbo].[VersaBadgeAuditClassificationTypes] OFF
GO


/****** Object:  Table [dbo].[VersaBadgeParLevelDismissalType]    Script Date: 12/19/2018 3:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeParLevelDismissalType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK__VersaBad__3214EC07950B4B8D] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET IDENTITY_INSERT [dbo].[VersaBadgeParLevelDismissalType] ON 
GO
INSERT [dbo].[VersaBadgeParLevelDismissalType] ([Id], [Name]) VALUES (1, N'Emergency Assist')
GO
INSERT [dbo].[VersaBadgeParLevelDismissalType] ([Id], [Name]) VALUES (2, N'False Alarm')
GO
INSERT [dbo].[VersaBadgeParLevelDismissalType] ([Id], [Name]) VALUES (3, N'Law Enforcement Requested')
GO
INSERT [dbo].[VersaBadgeParLevelDismissalType] ([Id], [Name]) VALUES (4, N'Other')
GO
INSERT [dbo].[VersaBadgeParLevelDismissalType] ([Id], [Name]) VALUES (5, N'Staff Assist')
GO
INSERT [dbo].[VersaBadgeParLevelDismissalType] ([Id], [Name]) VALUES (6, N'Testing')
GO
SET IDENTITY_INSERT [dbo].[VersaBadgeParLevelDismissalType] OFF
GO
