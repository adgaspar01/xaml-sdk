USE [ScheduleViewDB]
GO
/****** Object:  ForeignKey [FK_SqlResources_SqlResourceTypes]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlResources] DROP CONSTRAINT [FK_SqlResources_SqlResourceTypes]
GO
/****** Object:  ForeignKey [FK_SqlExceptionResources_SqlExceptionAppointment]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlExceptionResources] DROP CONSTRAINT [FK_SqlExceptionResources_SqlExceptionAppointment]
GO
/****** Object:  ForeignKey [FK_SqlExceptionResources_SqlResource]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlExceptionResources] DROP CONSTRAINT [FK_SqlExceptionResources_SqlResource]
GO
/****** Object:  ForeignKey [FK_SqlExceptionOccurrences_SqlAppointments]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlExceptionOccurrences] DROP CONSTRAINT [FK_SqlExceptionOccurrences_SqlAppointments]
GO
/****** Object:  ForeignKey [FK_SqlExceptionAppointments_Categories]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlExceptionAppointments] DROP CONSTRAINT [FK_SqlExceptionAppointments_Categories]
GO
/****** Object:  ForeignKey [FK_SqlExceptionAppointments_SqlExceptionOccurrences]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlExceptionAppointments] DROP CONSTRAINT [FK_SqlExceptionAppointments_SqlExceptionOccurrences]
GO
/****** Object:  ForeignKey [FK_SqlExceptionAppointments_TimeMarkers]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlExceptionAppointments] DROP CONSTRAINT [FK_SqlExceptionAppointments_TimeMarkers]
GO
/****** Object:  ForeignKey [FK_SqlAppointments_Categories]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlAppointments] DROP CONSTRAINT [FK_SqlAppointments_Categories]
GO
/****** Object:  ForeignKey [FK_SqlAppointments_TimeMarkers]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlAppointments] DROP CONSTRAINT [FK_SqlAppointments_TimeMarkers]
GO
/****** Object:  ForeignKey [FK_SqlAppointmentResources_SqlAppointment]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlAppointmentResources] DROP CONSTRAINT [FK_SqlAppointmentResources_SqlAppointment]
GO
/****** Object:  ForeignKey [FK_SqlAppointmentResources_SqlResource]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlAppointmentResources] DROP CONSTRAINT [FK_SqlAppointmentResources_SqlResource]
GO
/****** Object:  Table [dbo].[SqlExceptionResources]    Script Date: 09/14/2012 11:51:38 ******/
DROP TABLE [dbo].[SqlExceptionResources]
GO
/****** Object:  Table [dbo].[SqlExceptionAppointments]    Script Date: 09/14/2012 11:51:38 ******/
DROP TABLE [dbo].[SqlExceptionAppointments]
GO
/****** Object:  Table [dbo].[SqlExceptionOccurrences]    Script Date: 09/14/2012 11:51:38 ******/
DROP TABLE [dbo].[SqlExceptionOccurrences]
GO
/****** Object:  Table [dbo].[SqlAppointmentResources]    Script Date: 09/14/2012 11:51:38 ******/
DROP TABLE [dbo].[SqlAppointmentResources]
GO
/****** Object:  Table [dbo].[SqlAppointments]    Script Date: 09/14/2012 11:51:38 ******/
DROP TABLE [dbo].[SqlAppointments]
GO
/****** Object:  Table [dbo].[SqlResources]    Script Date: 09/14/2012 11:51:38 ******/
DROP TABLE [dbo].[SqlResources]
GO
/****** Object:  Table [dbo].[SqlResourceTypes]    Script Date: 09/14/2012 11:51:38 ******/
DROP TABLE [dbo].[SqlResourceTypes]
GO
/****** Object:  Table [dbo].[TimeMarkers]    Script Date: 09/14/2012 11:51:38 ******/
DROP TABLE [dbo].[TimeMarkers]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 09/14/2012 11:51:38 ******/
DROP TABLE [dbo].[Categories]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 09/14/2012 11:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](100) NULL,
	[DisplayName] [varchar](100) NULL,
	[CategoryBrushName] [varchar](100) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TimeMarkers]    Script Date: 09/14/2012 11:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeMarkers](
	[TimeMarkersId] [int] IDENTITY(1,1) NOT NULL,
	[TimeMarkerName] [nvarchar](50) NULL,
	[TimeMarkerBrushName] [nvarchar](50) NULL,
 CONSTRAINT [PK_TimeMarkers] PRIMARY KEY CLUSTERED 
(
	[TimeMarkersId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SqlResourceTypes]    Script Date: 09/14/2012 11:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SqlResourceTypes](
	[SqlResourceTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[DisplayName] [nvarchar](100) NULL,
	[AllowMultipleSelection] [bit] NOT NULL,
 CONSTRAINT [PK_SqlResourceTypes] PRIMARY KEY CLUSTERED 
(
	[SqlResourceTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SqlResources]    Script Date: 09/14/2012 11:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SqlResources](
	[SqlResourceId] [int] IDENTITY(1,1) NOT NULL,
	[SqlResourceTypeId] [int] NULL,
	[ResourceName] [nvarchar](100) NULL,
	[DisplayName] [nvarchar](100) NULL,
 CONSTRAINT [PK_SqlResources] PRIMARY KEY CLUSTERED 
(
	[SqlResourceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SqlAppointments]    Script Date: 09/14/2012 11:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SqlAppointments](
	[SqlAppointmentId] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](100) NULL,
	[Body] [nvarchar](500) NULL,
	[Start] [datetime] NOT NULL,
	[End] [datetime] NOT NULL,
	[IsAllDayEvent] [bit] NOT NULL,
	[RecurrencePattern] [varchar](100) NULL,
	[TimeZoneString] [varchar](100) NULL,
	[Importance] [int] NOT NULL,
	[TimeMarkerID] [int] NULL,
	[CategoryID] [int] NULL,
 CONSTRAINT [PK_SqlAppointments] PRIMARY KEY CLUSTERED 
(
	[SqlAppointmentId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SqlAppointmentResources]    Script Date: 09/14/2012 11:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SqlAppointmentResources](
	[SqlAppointments_SqlAppointmentId] [int] NOT NULL,
	[SqlResources_SqlResourceId] [int] NOT NULL,
	[ManyToManyWorkaround] [bit] NULL,
 CONSTRAINT [PK_SqlAppointmentResources] PRIMARY KEY NONCLUSTERED 
(
	[SqlAppointments_SqlAppointmentId] ASC,
	[SqlResources_SqlResourceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SqlExceptionOccurrences]    Script Date: 09/14/2012 11:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SqlExceptionOccurrences](
	[ExceptionId] [int] IDENTITY(1,1) NOT NULL,
	[MasterSqlAppointmentId] [int] NOT NULL,
	[ExceptionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_SqlExceptionOccurrences] PRIMARY KEY CLUSTERED 
(
	[ExceptionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SqlExceptionAppointments]    Script Date: 09/14/2012 11:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SqlExceptionAppointments](
	[ExceptionId] [int] NOT NULL,
	[Subject] [nvarchar](100) NULL,
	[Body] [nvarchar](500) NULL,
	[Start] [datetime] NOT NULL,
	[End] [datetime] NOT NULL,
	[IsAllDayEvent] [bit] NOT NULL,
	[TimeZoneString] [varchar](100) NULL,
	[Importance] [int] NOT NULL,
	[TimeMarkerID] [int] NULL,
	[CategoryID] [int] NULL,
 CONSTRAINT [PK_SqlExceptionAppointments] PRIMARY KEY CLUSTERED 
(
	[ExceptionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SqlExceptionResources]    Script Date: 09/14/2012 11:51:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SqlExceptionResources](
	[SqlExceptionAppointments_ExceptionId] [int] NOT NULL,
	[SqlResources_SqlResourceId] [int] NOT NULL,
	[ManyToManyWorkaround] [bit] NULL,
 CONSTRAINT [PK_SqlExceptionResources] PRIMARY KEY NONCLUSTERED 
(
	[SqlExceptionAppointments_ExceptionId] ASC,
	[SqlResources_SqlResourceId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_SqlResources_SqlResourceTypes]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlResources]  WITH CHECK ADD  CONSTRAINT [FK_SqlResources_SqlResourceTypes] FOREIGN KEY([SqlResourceTypeId])
REFERENCES [dbo].[SqlResourceTypes] ([SqlResourceTypeId])
GO
ALTER TABLE [dbo].[SqlResources] CHECK CONSTRAINT [FK_SqlResources_SqlResourceTypes]
GO
/****** Object:  ForeignKey [FK_SqlExceptionResources_SqlExceptionAppointment]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlExceptionResources]  WITH CHECK ADD  CONSTRAINT [FK_SqlExceptionResources_SqlExceptionAppointment] FOREIGN KEY([SqlExceptionAppointments_ExceptionId])
REFERENCES [dbo].[SqlExceptionAppointments] ([ExceptionId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SqlExceptionResources] CHECK CONSTRAINT [FK_SqlExceptionResources_SqlExceptionAppointment]
GO
/****** Object:  ForeignKey [FK_SqlExceptionResources_SqlResource]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlExceptionResources]  WITH CHECK ADD  CONSTRAINT [FK_SqlExceptionResources_SqlResource] FOREIGN KEY([SqlResources_SqlResourceId])
REFERENCES [dbo].[SqlResources] ([SqlResourceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SqlExceptionResources] CHECK CONSTRAINT [FK_SqlExceptionResources_SqlResource]
GO
/****** Object:  ForeignKey [FK_SqlExceptionOccurrences_SqlAppointments]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlExceptionOccurrences]  WITH CHECK ADD  CONSTRAINT [FK_SqlExceptionOccurrences_SqlAppointments] FOREIGN KEY([MasterSqlAppointmentId])
REFERENCES [dbo].[SqlAppointments] ([SqlAppointmentId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SqlExceptionOccurrences] CHECK CONSTRAINT [FK_SqlExceptionOccurrences_SqlAppointments]
GO
/****** Object:  ForeignKey [FK_SqlExceptionAppointments_Categories]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlExceptionAppointments]  WITH CHECK ADD  CONSTRAINT [FK_SqlExceptionAppointments_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[SqlExceptionAppointments] CHECK CONSTRAINT [FK_SqlExceptionAppointments_Categories]
GO
/****** Object:  ForeignKey [FK_SqlExceptionAppointments_SqlExceptionOccurrences]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlExceptionAppointments]  WITH CHECK ADD  CONSTRAINT [FK_SqlExceptionAppointments_SqlExceptionOccurrences] FOREIGN KEY([ExceptionId])
REFERENCES [dbo].[SqlExceptionOccurrences] ([ExceptionId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SqlExceptionAppointments] CHECK CONSTRAINT [FK_SqlExceptionAppointments_SqlExceptionOccurrences]
GO
/****** Object:  ForeignKey [FK_SqlExceptionAppointments_TimeMarkers]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlExceptionAppointments]  WITH CHECK ADD  CONSTRAINT [FK_SqlExceptionAppointments_TimeMarkers] FOREIGN KEY([TimeMarkerID])
REFERENCES [dbo].[TimeMarkers] ([TimeMarkersId])
GO
ALTER TABLE [dbo].[SqlExceptionAppointments] CHECK CONSTRAINT [FK_SqlExceptionAppointments_TimeMarkers]
GO
/****** Object:  ForeignKey [FK_SqlAppointments_Categories]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlAppointments]  WITH CHECK ADD  CONSTRAINT [FK_SqlAppointments_Categories] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Categories] ([CategoryID])
GO
ALTER TABLE [dbo].[SqlAppointments] CHECK CONSTRAINT [FK_SqlAppointments_Categories]
GO
/****** Object:  ForeignKey [FK_SqlAppointments_TimeMarkers]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlAppointments]  WITH CHECK ADD  CONSTRAINT [FK_SqlAppointments_TimeMarkers] FOREIGN KEY([TimeMarkerID])
REFERENCES [dbo].[TimeMarkers] ([TimeMarkersId])
GO
ALTER TABLE [dbo].[SqlAppointments] CHECK CONSTRAINT [FK_SqlAppointments_TimeMarkers]
GO
/****** Object:  ForeignKey [FK_SqlAppointmentResources_SqlAppointment]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlAppointmentResources]  WITH CHECK ADD  CONSTRAINT [FK_SqlAppointmentResources_SqlAppointment] FOREIGN KEY([SqlAppointments_SqlAppointmentId])
REFERENCES [dbo].[SqlAppointments] ([SqlAppointmentId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SqlAppointmentResources] CHECK CONSTRAINT [FK_SqlAppointmentResources_SqlAppointment]
GO
/****** Object:  ForeignKey [FK_SqlAppointmentResources_SqlResource]    Script Date: 09/14/2012 11:51:38 ******/
ALTER TABLE [dbo].[SqlAppointmentResources]  WITH CHECK ADD  CONSTRAINT [FK_SqlAppointmentResources_SqlResource] FOREIGN KEY([SqlResources_SqlResourceId])
REFERENCES [dbo].[SqlResources] ([SqlResourceId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SqlAppointmentResources] CHECK CONSTRAINT [FK_SqlAppointmentResources_SqlResource]
GO
