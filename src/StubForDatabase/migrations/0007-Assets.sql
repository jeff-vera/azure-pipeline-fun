/****** Object:  Table [dbo].[VersaBadgeAssets]    Script Date: 12/19/2018 3:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeAssets](
	[AssetID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[BeaconUUID] [varchar](50) NOT NULL,
	[BeaconMajorValue] [nvarchar](5) NOT NULL,
	[BeaconMinorValue] [nvarchar](5) NOT NULL,
	[Photo] [varbinary](max) NULL,
	[OrganisationID] [int] NOT NULL,
	[TypeID] [int] NULL,
	[ScheduleID] [nvarchar](50) NULL,
	[AuditUsername] [nvarchar](250) NULL,
	[AuditUserID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[DepartmentID] [int] NULL,
	[Notes] [nvarchar](max) NULL,
	[AlertDismissTimeout] [int] NULL,
	[AuthUsername] [nvarchar](250) NULL,
	[BatteryLevel] [int] NULL,
 CONSTRAINT [PK_VersaBadgeAssets] PRIMARY KEY CLUSTERED 
(
	[AssetID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



ALTER TABLE [dbo].[VersaBadgeAssets] ADD  CONSTRAINT [DF_VersaBadgeAssets_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
