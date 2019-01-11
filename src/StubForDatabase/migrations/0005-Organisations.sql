/****** Object:  Table [dbo].[VersaBadgeOrganisations]    Script Date: 12/19/2018 3:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeOrganisations](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IPAddressList] [nvarchar](1024) NULL,
	[Notes] [ntext] NULL,
	[Password] [nvarchar](50) NULL,
	[Model] [int] NOT NULL,
	[Settings] [ntext] NULL,
	[PasswordUser] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[IsSuperUser] [bit] NULL,
	[IsAdmin] [bit] NOT NULL,
	[TimezoneOffset] [decimal](2, 1) NULL,
	[PermissionsFlags] [bigint] NULL,
	[TimeZone] [nvarchar](50) NULL,
 CONSTRAINT [PrimaryKey_35cca64f-f5d9-48c6-ac44-28f1f2e04d5e] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


SET IDENTITY_INSERT [dbo].[VersaBadgeOrganisations] ON 
GO
INSERT [dbo].[VersaBadgeOrganisations] ([ID], [Name], [IPAddressList], [Notes], [Password], [Model], [Settings], [PasswordUser], [IsActive], [IsSuperUser], [IsAdmin], [TimezoneOffset], [PermissionsFlags], [TimeZone]) VALUES (3, N'VersaBadge', N'', N'', N'VersaB@dge', 1, N'maxreportdays=90
timestudyclassifications=Not Reported,Travel/Stand-by,Patient,Documentation
scheduleaccountid=0lockschedulehours=48
reporttimeformat=Formatted
soundonparlevel=true
offgridtimeoutminutes=60
batteryalertsms=
batteryalertemail=
conciergenotificationdelay=30
alertmp3=alert.mp3
alertrepeat=1', N'password', 1, 1, 1, CAST(0.0 AS Decimal(2, 1)), 2097150, N'US Eastern Standard Time')
GO
INSERT [dbo].[VersaBadgeOrganisations] ([ID], [Name], [IPAddressList], [Notes], [Password], [Model], [Settings], [PasswordUser], [IsActive], [IsSuperUser], [IsAdmin], [TimezoneOffset], [PermissionsFlags], [TimeZone]) VALUES (4, N'Hospital', N'', N'', NULL, 2, N'maxreportdays=90
timestudyclassifications=Not Reported,Travel/Stand-by,Patient,Documentation
scheduleaccountid=0
lockschedulehours=48
reporttimeformat=Secondssoundonparlevel=true
offgridtimeoutminutes=60
batteryalertsms=
batteryalertemail=
conciergenotificationdelay=30
alertmp3=alert.mp3
alertrepeat=1', NULL, 1, NULL, 0, NULL, 16774398, N'US Eastern Standard Time')
GO
SET IDENTITY_INSERT [dbo].[VersaBadgeOrganisations] OFF
GO


ALTER TABLE [dbo].[VersaBadgeOrganisations] ADD  CONSTRAINT [DF__VersaBadg__IsAct__74AE54BC]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[VersaBadgeOrganisations] ADD  CONSTRAINT [DF__VersaBadg__IsAdm__75A278F5]  DEFAULT ((0)) FOR [IsAdmin]
GO
ALTER TABLE [dbo].[VersaBadgeOrganisations] ADD  CONSTRAINT [DF_VersaBadgeOrganisations_TimezoneOffset]  DEFAULT ((0.0)) FOR [TimezoneOffset]
GO


