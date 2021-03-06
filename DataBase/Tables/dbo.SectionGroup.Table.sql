﻿SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionGroup](
	[ID] [nvarchar](100) NOT NULL,
	[GroupName] [nvarchar](255) NULL,
	[SectionWidgetId] [nvarchar](100) NOT NULL,
	[PartialView] [nvarchar](100) NULL,
	[Order] [int] NULL,
	[CreateBy] [nvarchar](50) NULL,
	[CreatebyName] [nvarchar](100) NULL,
	[CreateDate] [datetime] NULL,
	[LastUpdateBy] [nvarchar](50) NULL,
	[LastUpdateByName] [nvarchar](100) NULL,
	[LastUpdateDate] [datetime] NULL,
	[PercentWidth] [nvarchar](100) NULL,
 CONSTRAINT [PK_SectionGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SectionGroup]  WITH CHECK ADD  CONSTRAINT [FK_SectionGroup_SectionGroup_Template] FOREIGN KEY([PartialView])
REFERENCES [dbo].[SectionTemplate] ([TemplateName])
GO
ALTER TABLE [dbo].[SectionGroup] CHECK CONSTRAINT [FK_SectionGroup_SectionGroup_Template]
GO
ALTER TABLE [dbo].[SectionGroup]  WITH CHECK ADD  CONSTRAINT [FK_SectionGroup_SectionWidget] FOREIGN KEY([SectionWidgetId])
REFERENCES [dbo].[SectionWidget] ([ID])
GO
ALTER TABLE [dbo].[SectionGroup] CHECK CONSTRAINT [FK_SectionGroup_SectionWidget]
GO
