/****** Object:  Table [dbo].[VersaBadgeConfiguration]    Script Date: 12/19/2018 3:00:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeConfiguration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Value] [nvarchar](1024) NOT NULL,
 CONSTRAINT [PrimaryKey_45eca80e-23e0-4249-92f6-31278ed04169] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET IDENTITY_INSERT [dbo].[VersaBadgeConfiguration] ON 
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (2, N'SpatialDataLifeTimeSeconds', N'60')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (3, N'DBSyncIntervalSeconds', N'60')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (4, N'NotifyEmail', N'notifications@versabadge.com')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (5, N'SMTPFromAddress', N'notifications@versabadge.com')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (6, N'SMTPUsername', N'mkusens@solutionbc.com')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (7, N'SMTPPassword', N'tyson4791')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (8, N'SMTPServer', N'mail.smtp2go.com')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (9, N'SMTPPort', N'2525')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (10, N'ConcatMinutesForReport', N'3')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (11, N'SpatialLogging', N'0')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (12, N'NoReplyAddress', N'notifications@versabadge.com')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (13, N'WebAddress', N'http://machinelearning.versabadge.com/')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (14, N'DefaultLoginUsername', N'admin')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (15, N'DefaultLoginPassword', N'Pion3techs')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (16, N'ParLevelAlertInterval', N'30')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (17, N'TwilioFromNumber', N'+17542053152')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (18, N'SchedulingPlatform', N'http://vbscheduling.azurewebsites.net/webservice/values')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (19, N'ReceiverHeartbeatURL', N'http://admin.versabadge.com/api/v1/Heartbeat/GetConnectedReceiverHeartbeats?apiKey=30ef2d21-58ec-4d8f-85be-80dc28a3a6fe')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (20, N'ReceiverSOSURL', N'http://admin.versabadge.com/api/v3/SOS/GetConnectedSOSHeartbeats?apiKey=30ef2d21-58ec-4d8f-85be-80dc28a3a6fe')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (22, N'BeaconHeartbeatURL', N'http://admin.versabadge.com/api/v1/Heartbeat/GetAllBeaconHeartbeats?apiKey=30ef2d21-58ec-4d8f-85be-80dc28a3a6fe')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (24, N'AssignAssetURL', N'http://admin.versabadge.com/api/v3/SOS/UpdateSOSAssignAsset?apiKey=30ef2d21-58ec-4d8f-85be-80dc28a3a6fe')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (25, N'SOSWearConfirmationURL', N'http://admin.versabadge.com/api/v3/SOS/SendConfirmationToAssetV2?apiKey=30ef2d21-58ec-4d8f-85be-80dc28a3a6fe')
GO
INSERT [dbo].[VersaBadgeConfiguration] ([ID], [Name], [Value]) VALUES (26, N'AlertDurationSeconds', N'60')
GO
SET IDENTITY_INSERT [dbo].[VersaBadgeConfiguration] OFF
GO

/****** Object:  StoredProcedure [dbo].[SQLCMS_VersabadgeconfigurationInsert]    Script Date: 12/19/2018 3:00:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SQLCMS_VersabadgeconfigurationInsert]
@Name [nvarchar](50),
@Value [nvarchar](100)
AS

INSERT INTO [dbo].[VersaBadgeConfiguration] 
([Name],
[Value]) VALUES (@Name,
@Value)
GO
/****** Object:  StoredProcedure [dbo].[SQLCMS_VersabadgeconfigurationUpdate]    Script Date: 12/19/2018 3:00:14 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SQLCMS_VersabadgeconfigurationUpdate]
@Name [nvarchar](50),
@Value [nvarchar](100),
@PK_Id [int]
AS

UPDATE [dbo].[VersaBadgeConfiguration] SET 
[Name] = @Name,
[Value] = @Value WHERE [ID] = @PK_Id
GO

/****** Object:  Table [dbo].[VersaBadgeAssetDepartments]    Script Date: 12/19/2018 3:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeAssetDepartments]
(	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Department] [nvarchar](50) NOT NULL,
	[OrganizationID] [int] NULL,
 CONSTRAINT [PK_VersaBadgeAssetDepartments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


SET IDENTITY_INSERT [dbo].[VersaBadgeAssetDepartments] ON 
GO
INSERT [dbo].[VersaBadgeAssetDepartments] ([Id], [Department], [OrganizationID]) VALUES (1, N'ED', NULL)
GO
INSERT [dbo].[VersaBadgeAssetDepartments] ([Id], [Department], [OrganizationID]) VALUES (5, N'Acute', NULL)
GO
INSERT [dbo].[VersaBadgeAssetDepartments] ([Id], [Department], [OrganizationID]) VALUES (6, N'RHC', NULL)
GO
INSERT [dbo].[VersaBadgeAssetDepartments] ([Id], [Department], [OrganizationID]) VALUES (7, N'SNF', NULL)
GO
INSERT [dbo].[VersaBadgeAssetDepartments] ([Id], [Department], [OrganizationID]) VALUES (8, N'ED/Acute', NULL)
GO
INSERT [dbo].[VersaBadgeAssetDepartments] ([Id], [Department], [OrganizationID]) VALUES (9, N'ED/Acute/RHC', NULL)
GO
INSERT [dbo].[VersaBadgeAssetDepartments] ([Id], [Department], [OrganizationID]) VALUES (10, N'ED/RHC', NULL)
GO
INSERT [dbo].[VersaBadgeAssetDepartments] ([Id], [Department], [OrganizationID]) VALUES (11, N'Multi', NULL)
GO
INSERT [dbo].[VersaBadgeAssetDepartments] ([Id], [Department], [OrganizationID]) VALUES (12, N'N/A', NULL)
GO
SET IDENTITY_INSERT [dbo].[VersaBadgeAssetDepartments] OFF
GO
