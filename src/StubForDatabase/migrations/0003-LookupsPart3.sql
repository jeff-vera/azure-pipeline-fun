/****** Object:  Table [dbo].[VersaBadgeAuditClassification]    Script Date: 12/19/2018 3:00:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeAuditClassification](
	[AuditClassificationID] [int] IDENTITY(1,1) NOT NULL,
	[ApplicationName] [nvarchar](250) NOT NULL,
	[OrganizationID] [int] NOT NULL,
	[AuditClassificationTypeID] [int] NOT NULL,
 CONSTRAINT [PK_VersaBadgeAuditClassification_1] PRIMARY KEY CLUSTERED 
(
	[AuditClassificationID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[VersaBadgeTimeZone]    Script Date: 12/19/2018 3:00:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VersaBadgeTimeZone](
	[TimeZoneID] [int] NOT NULL,
	[TimeZoneValue] [int] NOT NULL,
	[GMT] [varchar](64) NOT NULL,
	[Location_En] [varchar](256) NOT NULL,
	[Offset] [int] NOT NULL,
	[Location_Es] [varchar](64) NOT NULL,
	[DSTstart] [datetime] NULL,
	[DSTend] [datetime] NULL,
 CONSTRAINT [PK_TimeZone] PRIMARY KEY CLUSTERED 
(
	[TimeZoneID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (1, 1, N'GMT-11:00', N'Midway Island, Samoa', -11, N'Midway Island, Samoa', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (2, 2, N'GMT-10:00', N'Hawaii', -10, N'Hawaii', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (3, 3, N'GMT-09:00', N'Alaska', -9, N'Alaska', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (4, 4, N'GMT-08:00', N'Pacific Time (US & Canada); Tijuana', -8, N'Hora Pacifica (US & Canada); Tijuana', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (5, 10, N'GMT-07:00', N'Mountain Time (US & Canada)', -7, N'Hora Montaña (US & Canada)', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (6, 13, N'GMT-07:00', N'Chihuahua, La Paz, Mazatlan', -7, N'Chihuahua, La Paz, Mazatlan', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (7, 15, N'GMT-07:00', N'Arizona', -7, N'Arizona', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (8, 20, N'GMT-06:00', N'Central Time (US & Canada)', -6, N'Hora Central (US & Canada)', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (9, 25, N'GMT-06:00', N'Saskatchewan', -6, N'Saskatchewan', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (10, 30, N'GMT-06:00', N'Guadalajara, Mexico City, Monterrey', -6, N'Guadalajara, Ciudad de Mexico, Monterrey', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (11, 33, N'GMT-06:00', N'Central America', -6, N'Centro America', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (12, 35, N'GMT-05:00', N'Eastern Time (US & Canada)', -5, N'Hora Este (US & Canada)', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (13, 40, N'GMT-05:00', N'Indiana (East)', -5, N'Indiana (Este)', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (14, 45, N'GMT-05:00', N'Bogota, Lima, Quito', -5, N'Bogota, Lima, Quito', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (15, 50, N'GMT-04:00', N'Atlantic Time (Canada)', -4, N'Hora Atlantica (Canada)', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (16, 55, N'GMT-04:00', N'Caracas, La Paz', -4, N'Caracas, La Paz', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (17, 56, N'GMT-04:00', N'Santiago', -4, N'Santiago', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (18, 60, N'GMT-03:30', N'Newfoundland', -4, N'Newfoundland', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (19, 65, N'GMT-03:00', N'Brasilia', -3, N'Brasilia', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (20, 70, N'GMT-03:00', N'Buenos Aires, Georgetown', -3, N'Buenos Aires, Georgetown', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (21, 73, N'GMT-03:00', N'Greenland', -3, N'Greenland', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (22, 75, N'GMT-02:00', N'Mid-Atlantic', -2, N'Medio-Atlantico', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (23, 80, N'GMT-01:00', N'Azores', -1, N'Azores', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (24, 83, N'GMT-01:00', N'Cape Verde Is.', -1, N'Isla Cabo Verde Is.', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (25, 85, N'GMT', N'Greenwich Mean Time : Dublin, Edinburgh, Lisbon, London', 0, N'Hora Meridiano de Greenwich : Dublin, Edinburgh, Lisbon, London', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (26, 90, N'GMT', N'Casablanca, Monrovia', 0, N'Casablanca, Monrovia', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (27, 95, N'GMT+01:00', N'Belgrade, Bratislava, Budapest, Ljubljana, Prague', 1, N'Belgrade, Bratislava, Budapest, Ljubljana, Prague', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (28, 100, N'GMT+01:00', N'Sarajevo, Skopje, Warsaw, Zagreb', 1, N'Sarajevo, Skopje, Warsaw, Zagreb', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (29, 105, N'GMT+01:00', N'Brussels, Copenhagen, Madrid, Paris', 1, N'Brussels, Copenhagen, Madrid, Paris', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (30, 110, N'GMT+01:00', N'Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna', 1, N'Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (31, 113, N'GMT+01:00', N'West Central Africa', 1, N'Africa Central Oeste', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (32, 115, N'GMT+02:00', N'Bucharest', 2, N'Bucharest', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (33, 120, N'GMT+02:00', N'Cairo', 2, N'Cairo', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (34, 125, N'GMT+02:00', N'Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius', 2, N'Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (35, 130, N'GMT+02:00', N'Athens, Beirut, Istanbul, Minsk', 2, N'Athens, Beirut, Istanbul, Minsk', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (36, 135, N'GMT+02:00', N'Jerusalem', 2, N'Jerusalem', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (37, 140, N'GMT+02:00', N'Harare, Pretoria', 2, N'Harare, Pretoria', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (38, 145, N'GMT+03:00', N'Moscow, St. Petersburg, Volgograd', 3, N'Moscow, St. Petersburg, Volgograd', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (39, 150, N'GMT+03:00', N'Kuwait, Riyadh', 3, N'Kuwait, Riyadh', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (40, 155, N'GMT+03:00', N'Nairobi', 3, N'Nairobi', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (41, 158, N'GMT+03:00', N'Baghdad', 3, N'Baghdad', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (42, 160, N'GMT+03:30', N'Tehran', 4, N'Tehran', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (43, 165, N'GMT+04:00', N'Abu Dhabi, Muscat', 4, N'Abu Dhabi, Muscat', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (44, 170, N'GMT+04:00', N'Baku, Tbilisi, Yerevan', 4, N'Baku, Tbilisi, Yerevan', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (45, 175, N'GMT+04:30', N'Kabul', 5, N'Kabul', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (46, 180, N'GMT+05:00', N'Ekaterinburg', 5, N'Ekaterinburg', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (47, 185, N'GMT+05:00', N'Islamabad, Karachi, Tashkent', 5, N'Islamabad, Karachi, Tashkent', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (48, 190, N'GMT+05:30', N'Chennai, Kolkata, Mumbai, New Delhi', 6, N'Chennai, Kolkata, Mumbai, New Delhi', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (49, 193, N'GMT+05:45', N'Kathmandu', 6, N'Kathmandu', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (50, 195, N'GMT+06:00', N'Astana, Dhaka', 6, N'Astana, Dhaka', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (51, 200, N'GMT+06:00', N'Sri Jayawardenepura', 6, N'Sri Jayawardenepura', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (52, 201, N'GMT+06:00', N'Almaty, Novosibirsk', 6, N'Almaty, Novosibirsk', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (53, 203, N'GMT+06:30', N'Rangoon', 7, N'Rangoon', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (54, 205, N'GMT+07:00', N'Bangkok, Hanoi, Jakarta', 7, N'Bangkok, Hanoi, Jakarta', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (55, 207, N'GMT+07:00', N'Krasnoyarsk', 7, N'Krasnoyarsk', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (56, 210, N'GMT+08:00', N'Beijing, Chongqing, Hong Kong, Urumqi', 8, N'Beijing, Chongqing, Hong Kong, Urumqi', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (57, 215, N'GMT+08:00', N'Kuala Lumpur, Singapore', 8, N'Kuala Lumpur, Singapore', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (58, 220, N'GMT+08:00', N'Taipei', 8, N'Taipei', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (59, 225, N'GMT+08:00', N'Perth', 8, N'Perth', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (60, 227, N'GMT+08:00', N'Irkutsk, Ulaan Bataar', 8, N'Irkutsk, Ulaan Bataar', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (61, 230, N'GMT+09:00', N'Seoul', 9, N'Seoul', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (62, 235, N'GMT+09:00', N'Osaka, Sapporo, Tokyo', 9, N'Osaka, Sapporo, Tokyo', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (63, 240, N'GMT+09:00', N'Yakutsk', 9, N'Yakutsk', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (64, 245, N'GMT+09:30', N'Darwin', 10, N'Darwin', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (65, 250, N'GMT+09:30', N'Adelaide', 10, N'Adelaide', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (66, 225, N'GMT+10:00', N'Canberra, Melbourne, Sydney', 10, N'Canberra, Melbourne, Sydney', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (67, 260, N'GMT+10:00', N'Brisbane', 10, N'Brisbane', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (68, 265, N'GMT+10:00', N'Hobart', 10, N'Hobart', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (69, 270, N'GMT+10:00', N'Vladivostok', 10, N'Vladivostok', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (70, 275, N'GMT+10:00', N'Guam, Port Moresby', 10, N'Guam, Pureto Moresby', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (71, 280, N'GMT+11:00', N'Magadan, Solomon Is., New Caledonia', 11, N'Magadan, Solomon Is., New Caledonia', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (72, 285, N'GMT+12:00', N'Fiji, Kamchatka, Marshall Is.', 12, N'Fiji, Kamchatka, Marshall Is.', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (73, 290, N'GMT+12:00', N'Auckland, Wellington', 12, N'Auckland, Wellington', NULL, NULL)
GO
INSERT [dbo].[VersaBadgeTimeZone] ([TimeZoneID], [TimeZoneValue], [GMT], [Location_En], [Offset], [Location_Es], [DSTstart], [DSTend]) VALUES (74, 300, N'GMT+13:00', N'Nuku''alofa', 13, N'Nuku''alofa', NULL, NULL)
GO


