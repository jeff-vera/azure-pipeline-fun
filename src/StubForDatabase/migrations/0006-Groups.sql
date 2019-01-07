/****** Object:  Table [dbo].[VersaBadgeGroups]    Script Date: 12/19/2018 3:00:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeGroups](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[OrganisationID] [int] NOT NULL,
	[MapImage] [nvarchar](max) NULL,
	[MapJSON] [nvarchar](max) NULL,
 CONSTRAINT [PK_VersaBadgeGroups] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO



