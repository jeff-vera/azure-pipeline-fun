/****** Object:  Table [dbo].[VersaBadgeAuditUser]    Script Date: 12/19/2018 3:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeAuditUser](
	[VersaBadgeAuditUserID] [bigint] IDENTITY(1,1) NOT NULL,
	[VersaBadgeOrganizationID] [int] NOT NULL,
	[Username] [nvarchar](250) NOT NULL,
	[AssetID] [int] NULL,
 CONSTRAINT [PK_VersaBadgeAuditUser] PRIMARY KEY CLUSTERED 
(
	[VersaBadgeAuditUserID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[VersaBadgeAuditUser]  WITH CHECK ADD  CONSTRAINT [FK_VersaBadgeAuditUser_VersaBadgeAssets] FOREIGN KEY([AssetID])
REFERENCES [dbo].[VersaBadgeAssets] ([AssetID])
GO

ALTER TABLE [dbo].[VersaBadgeAuditUser] CHECK CONSTRAINT [FK_VersaBadgeAuditUser_VersaBadgeAssets]
GO
