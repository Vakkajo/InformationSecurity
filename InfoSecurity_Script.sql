USE [InfoSecurity_Yanchenko]
GO
/****** Object:  Table [dbo].[activity]    Script Date: 5/6/2024 2:22:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activity](
	[activity_id] [int] IDENTITY(1,1) NOT NULL,
	[activity_name] [nvarchar](100) NULL,
	[activity_day] [tinyint] NULL,
	[activity_time_start] [time](7) NULL,
	[activity_user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[activity_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[city]    Script Date: 5/6/2024 2:22:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[city_name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[country]    Script Date: 5/6/2024 2:22:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[country_id] [int] IDENTITY(1,1) NOT NULL,
	[country_ru_name] [nvarchar](100) NOT NULL,
	[country_eng_name] [nvarchar](100) NOT NULL,
	[country_code_char] [nvarchar](2) NOT NULL,
	[country_code_int] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[direction]    Script Date: 5/6/2024 2:22:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direction](
	[direction_id] [int] IDENTITY(1,1) NOT NULL,
	[direction_name] [nvarchar](32) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[direction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[event]    Script Date: 5/6/2024 2:22:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event](
	[event_id] [int] IDENTITY(1,1) NOT NULL,
	[event_name] [nvarchar](32) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[event_activity]    Script Date: 5/6/2024 2:22:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event_activity](
	[event_id] [int] NULL,
	[activity_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[event_business]    Script Date: 5/6/2024 2:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[event_business](
	[event_id] [int] IDENTITY(1,1) NOT NULL,
	[event_name] [nvarchar](100) NOT NULL,
	[event_date] [date] NOT NULL,
	[event_days] [tinyint] NOT NULL,
	[event_city_id] [int] NOT NULL,
	[event_user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[event_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jury]    Script Date: 5/6/2024 2:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jury](
	[jury_id] [int] IDENTITY(1,1) NOT NULL,
	[jury_name] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[jury_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jury_activity]    Script Date: 5/6/2024 2:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jury_activity](
	[jury_activity_id] [int] IDENTITY(1,1) NOT NULL,
	[activity_id] [int] NOT NULL,
	[jury_id] [int] NULL,
	[jury_activity_user_id] [int] NULL,
 CONSTRAINT [PK__jury_act__E6C0CB9CCB1F96D0] PRIMARY KEY CLUSTERED 
(
	[jury_activity_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 5/6/2024 2:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 5/6/2024 2:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_last_name] [nvarchar](100) NULL,
	[user_first_name] [nvarchar](100) NULL,
	[user_middle_name] [nvarchar](100) NULL,
	[user_email] [nvarchar](100) NOT NULL,
	[user_password] [nvarchar](32) NOT NULL,
	[user_gender] [nvarchar](16) NOT NULL,
	[user_date_of_birthday] [date] NULL,
	[user_country_id] [int] NULL,
	[user_phone] [nvarchar](30) NULL,
	[user_direction_id] [int] NULL,
	[user_event_id] [int] NULL,
	[user_photo] [nvarchar](32) NULL,
	[user_role_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[activity] ON 
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (1, N'Сильный бизнес-тренер', 1, CAST(N'09:00:00' AS Time), 22)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (2, N'Анализ и моделироавние бизнес-процессов', 2, CAST(N'10:45:00' AS Time), 23)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (3, N'Сила лидера', 2, CAST(N'12:30:00' AS Time), 24)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (4, N'Обзор моделей', 1, CAST(N'09:00:00' AS Time), 25)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (5, N'Обзор стандартов', 2, CAST(N'10:45:00' AS Time), 26)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (6, N'Методологии', 2, CAST(N'12:30:00' AS Time), 27)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (7, N'Ваши позиции в рейтинге', 1, CAST(N'09:00:00' AS Time), 28)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (8, N'Властелин дедлайнов', 2, CAST(N'10:45:00' AS Time), 29)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (9, N'Must Have 21 века', 2, CAST(N'12:30:00' AS Time), 30)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (10, N'Включи в работу весь офис', 1, CAST(N'09:00:00' AS Time), 31)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (11, N'Авторские анонсы', 1, CAST(N'10:45:00' AS Time), 32)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (12, N'Свобода обучать', 2, CAST(N'12:30:00' AS Time), 33)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (13, N'Корпоративное обучение', 1, CAST(N'09:00:00' AS Time), 34)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (14, N'Обучение персонала', 2, CAST(N'10:45:00' AS Time), 35)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (15, N'Стратегические силы компании', 3, CAST(N'12:30:00' AS Time), 36)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (16, N'Подготовка проекта', 1, CAST(N'09:00:00' AS Time), 37)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (17, N'Золотой актив', 1, CAST(N'10:45:00' AS Time), 38)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (18, N'Скандальный суперпартнер', 1, CAST(N'12:30:00' AS Time), 39)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (19, N'Основы блокчейн', 1, CAST(N'09:00:00' AS Time), 40)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (20, N'Секреты', 1, CAST(N'10:45:00' AS Time), 41)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (21, N'Безопасность', 2, CAST(N'12:30:00' AS Time), 42)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (22, N'Осознанность личных целей', 1, CAST(N'09:00:00' AS Time), 23)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (23, N'Soft skills', 1, CAST(N'10:45:00' AS Time), 24)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (24, N'Развитие проактивности', 1, CAST(N'16:00:00' AS Time), 25)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (25, N'Идельный результат', 1, CAST(N'09:00:00' AS Time), 28)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (26, N'Тайны и секреты', 2, CAST(N'10:45:00' AS Time), 29)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (27, N'Рычаги', 2, CAST(N'12:30:00' AS Time), 30)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (28, N'Войти в ТОП', 1, CAST(N'09:00:00' AS Time), 38)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (29, N'Секреты продвижения', 1, CAST(N'10:45:00' AS Time), 39)
GO
INSERT [dbo].[activity] ([activity_id], [activity_name], [activity_day], [activity_time_start], [activity_user_id]) VALUES (30, N'Руководство проектами', 2, CAST(N'12:30:00' AS Time), 40)
GO
SET IDENTITY_INSERT [dbo].[activity] OFF
GO
SET IDENTITY_INSERT [dbo].[city] ON 
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1, N'Абаза')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (2, N'Абакан')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (3, N'Абдулино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (4, N'Абинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (5, N'Агидель')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (6, N'Агрыз')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (7, N'Адыгейск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (8, N'Азнакаево')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (9, N'Азов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (10, N'Ак-Довурак')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (11, N'Аксай')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (12, N'Алагир')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (13, N'Алапаевск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (14, N'Алатырь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (15, N'Алдан')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (16, N'Алейск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (17, N'Александров')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (18, N'Александровск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (19, N'Александровск-Сахалинский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (20, N'Алексеевка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (21, N'Алексин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (22, N'Алзамай')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (23, N'Алупкане призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (24, N'Алуштане призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (25, N'Альметьевск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (26, N'Амурск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (27, N'Анадырь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (28, N'Анапа')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (29, N'Ангарск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (30, N'Андреаполь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (31, N'Анжеро-Судженск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (32, N'Анива')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (33, N'Апатиты')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (34, N'Апрелевка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (35, N'Апшеронск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (36, N'Арамиль')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (37, N'Аргун')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (38, N'Ардатов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (39, N'Ардон')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (40, N'Арзамас')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (41, N'Аркадак')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (42, N'Армавир')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (43, N'Армянскне призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (44, N'Арсеньев')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (45, N'Арск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (46, N'Артём')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (47, N'Артёмовск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (48, N'Артёмовский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (49, N'Архангельск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (50, N'Асбест')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (51, N'Асино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (52, N'Астрахань')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (53, N'Аткарск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (54, N'Ахтубинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (55, N'Ачинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (56, N'Аша')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (57, N'Бабаево')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (58, N'Бабушкин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (59, N'Бавлы')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (60, N'Багратионовск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (61, N'Байкальск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (62, N'Баймак')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (63, N'Бакал')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (64, N'Баксан')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (65, N'Балабаново')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (66, N'Балаково')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (67, N'Балахна')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (68, N'Балашиха')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (69, N'Балашов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (70, N'Балей')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (71, N'Балтийск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (72, N'Барабинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (73, N'Барнаул')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (74, N'Барыш')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (75, N'Батайск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (76, N'Бахчисарайне призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (77, N'Бежецк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (78, N'Белая Калитва')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (79, N'Белая Холуница')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (80, N'Белгород')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (81, N'Белебей')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (82, N'Белёв')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (83, N'Белинский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (84, N'Белово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (85, N'Белогорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (86, N'Белогорскне призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (87, N'Белозерск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (88, N'Белокуриха')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (89, N'Беломорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (90, N'Белоозёрский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (91, N'Белорецк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (92, N'Белореченск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (93, N'Белоусово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (94, N'Белоярский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (95, N'Белый')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (96, N'Бердск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (97, N'Березники')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (98, N'Берёзовский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (99, N'Берёзовский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (100, N'Беслан')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (101, N'Бийск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (102, N'Бикин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (103, N'Билибино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (104, N'Биробиджан')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (105, N'Бирск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (106, N'Бирюсинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (107, N'Бирюч')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (108, N'Благовещенск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (109, N'Благовещенск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (110, N'Благодарный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (111, N'Бобров')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (112, N'Богданович')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (113, N'Богородицк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (114, N'Богородск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (115, N'Боготол')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (116, N'Богучар')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (117, N'Бодайбо')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (118, N'Бокситогорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (119, N'Болгар')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (120, N'Бологое')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (121, N'Болотное')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (122, N'Болохово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (123, N'Болхов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (124, N'Большой Камень')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (125, N'Бор')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (126, N'Борзя')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (127, N'Борисоглебск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (128, N'Боровичи')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (129, N'Боровск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (130, N'Бородино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (131, N'Братск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (132, N'Бронницы')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (133, N'Брянск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (134, N'Бугульма')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (135, N'Бугуруслан')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (136, N'Будённовск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (137, N'Бузулук')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (138, N'Буинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (139, N'Буй')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (140, N'Буйнакск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (141, N'Бутурлиновка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (142, N'Валдай')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (143, N'Валуйки')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (144, N'Велиж')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (145, N'Великие Луки')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (146, N'Великий Новгород')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (147, N'Великий Устюг')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (148, N'Вельск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (149, N'Венёв')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (150, N'Верещагино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (151, N'Верея')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (152, N'Верхнеуральск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (153, N'Верхний Тагил')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (154, N'Верхний Уфалей')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (155, N'Верхняя Пышма')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (156, N'Верхняя Салда')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (157, N'Верхняя Тура')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (158, N'Верхотурье')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (159, N'Верхоянск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (160, N'Весьегонск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (161, N'Ветлуга')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (162, N'Видное')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (163, N'Вилюйск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (164, N'Вилючинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (165, N'Вихоревка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (166, N'Вичуга')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (167, N'Владивосток')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (168, N'Владикавказ')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (169, N'Владимир')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (170, N'Волгоград')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (171, N'Волгодонск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (172, N'Волгореченск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (173, N'Волжск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (174, N'Волжский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (175, N'Вологда')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (176, N'Володарск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (177, N'Волоколамск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (178, N'Волосово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (179, N'Волхов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (180, N'Волчанск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (181, N'Вольск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (182, N'Воркута')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (183, N'Воронеж')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (184, N'Ворсма')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (185, N'Воскресенск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (186, N'Воткинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (187, N'Всеволожск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (188, N'Вуктыл')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (189, N'Выборг')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (190, N'Выкса')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (191, N'Высоковск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (192, N'Высоцк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (193, N'Вытегра')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (194, N'Вышний Волочёк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (195, N'Вяземский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (196, N'Вязники')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (197, N'Вязьма')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (198, N'Вятские Поляны')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (199, N'Гаврилов Посад')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (200, N'Гаврилов-Ям')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (201, N'Гагарин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (202, N'Гаджиево')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (203, N'Гай')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (204, N'Галич')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (205, N'Гатчина')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (206, N'Гвардейск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (207, N'Гдов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (208, N'Геленджик')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (209, N'Георгиевск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (210, N'Глазов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (211, N'Голицыно')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (212, N'Горбатов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (213, N'Горно-Алтайск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (214, N'Горнозаводск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (215, N'Горняк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (216, N'Городец')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (217, N'Городище')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (218, N'Городовиковск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (219, N'Гороховец')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (220, N'Горячий Ключ')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (221, N'Грайворон')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (222, N'Гремячинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (223, N'Грозный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (224, N'Грязи')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (225, N'Грязовец')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (226, N'Губаха')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (227, N'Губкин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (228, N'Губкинский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (229, N'Гудермес')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (230, N'Гуково')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (231, N'Гулькевичи')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (232, N'Гурьевск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (233, N'Гурьевск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (234, N'Гусев')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (235, N'Гусиноозёрск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (236, N'Гусь-Хрустальный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (237, N'Давлеканово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (238, N'Дагестанские Огни')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (239, N'Далматово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (240, N'Дальнегорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (241, N'Дальнереченск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (242, N'Данилов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (243, N'Данков')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (244, N'Дегтярск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (245, N'Дедовск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (246, N'Демидов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (247, N'Дербент')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (248, N'Десногорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (249, N'Джанкойне призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (250, N'Дзержинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (251, N'Дзержинский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (252, N'Дивногорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (253, N'Дигора')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (254, N'Димитровград')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (255, N'Дмитриев')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (256, N'Дмитров')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (257, N'Дмитровск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (258, N'Дно')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (259, N'Добрянка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (260, N'Долгопрудный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (261, N'Долинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (262, N'Домодедово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (263, N'Донецк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (264, N'Донской')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (265, N'Дорогобуж')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (266, N'Дрезна')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (267, N'Дубна')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (268, N'Дубовка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (269, N'Дудинка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (270, N'Духовщина')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (271, N'Дюртюли')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (272, N'Дятьково')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (273, N'Евпаторияне призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (274, N'Егорьевск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (275, N'Ейск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (276, N'Екатеринбург')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (277, N'Елабуга')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (278, N'Елец')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (279, N'Елизово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (280, N'Ельня')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (281, N'Еманжелинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (282, N'Емва')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (283, N'Енисейск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (284, N'Ермолино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (285, N'Ершов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (286, N'Ессентуки')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (287, N'Ефремов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (288, N'Железноводск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (289, N'Железногорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (290, N'Железногорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (291, N'Железногорск-Илимский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (292, N'Жердевка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (293, N'Жигулёвск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (294, N'Жиздра')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (295, N'Жирновск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (296, N'Жуков')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (297, N'Жуковка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (298, N'Жуковский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (299, N'Завитинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (300, N'Заводоуковск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (301, N'Заволжск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (302, N'Заволжье')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (303, N'Задонск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (304, N'Заинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (305, N'Закаменск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (306, N'Заозёрный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (307, N'Заозёрск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (308, N'Западная Двина')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (309, N'Заполярный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (310, N'Зарайск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (311, N'Заречный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (312, N'Заречный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (313, N'Заринск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (314, N'Звенигово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (315, N'Звенигород')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (316, N'Зверево')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (317, N'Зеленогорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (318, N'Зеленоградск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (319, N'Зеленодольск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (320, N'Зеленокумск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (321, N'Зерноград')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (322, N'Зея')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (323, N'Зима')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (324, N'Златоуст')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (325, N'Злынка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (326, N'Змеиногорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (327, N'Знаменск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (328, N'Зубцов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (329, N'Зуевка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (330, N'Ивангород')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (331, N'Иваново')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (332, N'Ивантеевка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (333, N'Ивдель')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (334, N'Игарка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (335, N'Ижевск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (336, N'Избербаш')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (337, N'Изобильный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (338, N'Иланский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (339, N'Инза')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (340, N'Иннополис')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (341, N'Инсар')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (342, N'Инта')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (343, N'Ипатово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (344, N'Ирбит')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (345, N'Иркутск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (346, N'Исилькуль')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (347, N'Искитим')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (348, N'Истра')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (349, N'Ишим')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (350, N'Ишимбай')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (351, N'Йошкар-Ола')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (352, N'Кадников')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (353, N'Казань')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (354, N'Калач')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (355, N'Калач-на-Дону')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (356, N'Калачинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (357, N'Калининград')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (358, N'Калининск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (359, N'Калтан')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (360, N'Калуга')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (361, N'Калязин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (362, N'Камбарка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (363, N'Каменка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (364, N'Каменногорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (365, N'Каменск-Уральский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (366, N'Каменск-Шахтинский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (367, N'Камень-на-Оби')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (368, N'Камешково')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (369, N'Камызяк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (370, N'Камышин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (371, N'Камышлов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (372, N'Канаш')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (373, N'Кандалакша')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (374, N'Канск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (375, N'Карабаново')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (376, N'Карабаш')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (377, N'Карабулак')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (378, N'Карасук')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (379, N'Карачаевск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (380, N'Карачев')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (381, N'Каргат')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (382, N'Каргополь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (383, N'Карпинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (384, N'Карталы')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (385, N'Касимов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (386, N'Касли')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (387, N'Каспийск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (388, N'Катав-Ивановск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (389, N'Катайск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (390, N'Качканар')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (391, N'Кашин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (392, N'Кашира')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (393, N'Кедровый')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (394, N'Кемерово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (395, N'Кемь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (396, N'Керчьне призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (397, N'Кизел')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (398, N'Кизилюрт')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (399, N'Кизляр')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (400, N'Кимовск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (401, N'Кимры')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (402, N'Кингисепп')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (403, N'Кинель')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (404, N'Кинешма')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (405, N'Киреевск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (406, N'Киренск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (407, N'Киржач')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (408, N'Кириллов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (409, N'Кириши')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (410, N'Киров')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (411, N'Киров')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (412, N'Кировград')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (413, N'Кирово-Чепецк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (414, N'Кировск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (415, N'Кировск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (416, N'Кирс')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (417, N'Кирсанов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (418, N'Киселёвск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (419, N'Кисловодск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (420, N'Клин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (421, N'Клинцы')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (422, N'Княгинино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (423, N'Ковдор')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (424, N'Ковров')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (425, N'Ковылкино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (426, N'Когалым')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (427, N'Кодинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (428, N'Козельск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (429, N'Козловка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (430, N'Козьмодемьянск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (431, N'Кола')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (432, N'Кологрив')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (433, N'Коломна')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (434, N'Колпашево')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (435, N'Кольчугино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (436, N'Коммунар')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (437, N'Комсомольск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (438, N'Комсомольск-на-Амуре')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (439, N'Конаково')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (440, N'Кондопога')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (441, N'Кондрово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (442, N'Константиновск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (443, N'Копейск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (444, N'Кораблино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (445, N'Кореновск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (446, N'Коркино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (447, N'Королёв')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (448, N'Короча')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (449, N'Корсаков')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (450, N'Коряжма')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (451, N'Костерёво')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (452, N'Костомукша')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (453, N'Кострома')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (454, N'Котельники')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (455, N'Котельниково')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (456, N'Котельнич')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (457, N'Котлас')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (458, N'Котово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (459, N'Котовск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (460, N'Кохма')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (461, N'Красавино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (462, N'Красноармейск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (463, N'Красноармейск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (464, N'Красновишерск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (465, N'Красногорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (466, N'Краснодар')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (467, N'Краснозаводск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (468, N'Краснознаменск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (469, N'Краснознаменск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (470, N'Краснокаменск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (471, N'Краснокамск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (472, N'Красноперекопскне призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (473, N'Краснослободск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (474, N'Краснослободск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (475, N'Краснотурьинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (476, N'Красноуральск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (477, N'Красноуфимск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (478, N'Красноярск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (479, N'Красный Кут')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (480, N'Красный Сулин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (481, N'Красный Холм')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (482, N'Кремёнки')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (483, N'Кропоткин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (484, N'Крымск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (485, N'Кстово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (486, N'Кубинка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (487, N'Кувандык')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (488, N'Кувшиново')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (489, N'Кудрово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (490, N'Кудымкар')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (491, N'Кузнецк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (492, N'Куйбышев')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (493, N'Кукмор')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (494, N'Кулебаки')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (495, N'Кумертау')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (496, N'Кунгур')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (497, N'Купино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (498, N'Курган')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (499, N'Курганинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (500, N'Курильск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (501, N'Курлово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (502, N'Куровское')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (503, N'Курск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (504, N'Куртамыш')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (505, N'Курчалой')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (506, N'Курчатов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (507, N'Куса')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (508, N'Кушва')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (509, N'Кызыл')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (510, N'Кыштым')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (511, N'Кяхта')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (512, N'Лабинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (513, N'Лабытнанги')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (514, N'Лагань')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (515, N'Ладушкин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (516, N'Лаишево')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (517, N'Лакинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (518, N'Лангепас')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (519, N'Лахденпохья')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (520, N'Лебедянь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (521, N'Лениногорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (522, N'Ленинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (523, N'Ленинск-Кузнецкий')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (524, N'Ленск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (525, N'Лермонтов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (526, N'Лесной')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (527, N'Лесозаводск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (528, N'Лесосибирск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (529, N'Ливны')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (530, N'Ликино-Дулёво')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (531, N'Липецк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (532, N'Липки')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (533, N'Лиски')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (534, N'Лихославль')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (535, N'Лобня')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (536, N'Лодейное Поле')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (537, N'Лосино-Петровский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (538, N'Луга')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (539, N'Луза')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (540, N'Лукоянов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (541, N'Луховицы')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (542, N'Лысково')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (543, N'Лысьва')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (544, N'Лыткарино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (545, N'Льгов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (546, N'Любань')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (547, N'Люберцы')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (548, N'Любим')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (549, N'Людиново')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (550, N'Лянтор')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (551, N'Магадан')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (552, N'Магас')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (553, N'Магнитогорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (554, N'Майкоп')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (555, N'Майский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (556, N'Макаров')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (557, N'Макарьев')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (558, N'Макушино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (559, N'Малая Вишера')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (560, N'Малгобек')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (561, N'Малмыж')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (562, N'Малоархангельск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (563, N'Малоярославец')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (564, N'Мамадыш')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (565, N'Мамоново')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (566, N'Мантурово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (567, N'Мариинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (568, N'Мариинский Посад')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (569, N'Маркс')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (570, N'Махачкала')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (571, N'Мглин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (572, N'Мегион')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (573, N'Медвежьегорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (574, N'Медногорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (575, N'Медынь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (576, N'Межгорье')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (577, N'Междуреченск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (578, N'Мезень')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (579, N'Меленки')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (580, N'Мелеуз')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (581, N'Менделеевск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (582, N'Мензелинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (583, N'Мещовск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (584, N'Миасс')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (585, N'Микунь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (586, N'Миллерово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (587, N'Минеральные Воды')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (588, N'Минусинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (589, N'Миньяр')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (590, N'Мирный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (591, N'Мирный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (592, N'Михайлов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (593, N'Михайловка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (594, N'Михайловск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (595, N'Михайловск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (596, N'Мичуринск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (597, N'Могоча')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (598, N'Можайск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (599, N'Можга')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (600, N'Моздок')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (601, N'Мончегорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (602, N'Морозовск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (603, N'Моршанск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (604, N'Мосальск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (605, N'Москва')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (606, N'Муравленко')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (607, N'Мураши')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (608, N'Мурино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (609, N'Мурманск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (610, N'Муром')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (611, N'Мценск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (612, N'Мыски')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (613, N'Мытищи')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (614, N'Мышкин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (615, N'Набережные Челны')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (616, N'Навашино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (617, N'Наволоки')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (618, N'Надым')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (619, N'Назарово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (620, N'Назрань')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (621, N'Называевск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (622, N'Нальчик')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (623, N'Нариманов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (624, N'Наро-Фоминск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (625, N'Нарткала')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (626, N'Нарьян-Мар')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (627, N'Находка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (628, N'Невель')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (629, N'Невельск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (630, N'Невинномысск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (631, N'Невьянск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (632, N'Нелидово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (633, N'Неман')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (634, N'Нерехта')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (635, N'Нерчинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (636, N'Нерюнгри')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (637, N'Нестеров')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (638, N'Нефтегорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (639, N'Нефтекамск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (640, N'Нефтекумск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (641, N'Нефтеюганск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (642, N'Нея')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (643, N'Нижневартовск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (644, N'Нижнекамск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (645, N'Нижнеудинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (646, N'Нижние Серги')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (647, N'Нижний Ломов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (648, N'Нижний Новгород')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (649, N'Нижний Тагил')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (650, N'Нижняя Салда')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (651, N'Нижняя Тура')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (652, N'Николаевск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (653, N'Николаевск-на-Амуре')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (654, N'Никольск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (655, N'Никольск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (656, N'Никольское')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (657, N'Новая Ладога')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (658, N'Новая Ляля')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (659, N'Новоалександровск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (660, N'Новоалтайск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (661, N'Новоаннинский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (662, N'Нововоронеж')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (663, N'Новодвинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (664, N'Новозыбков')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (665, N'Новокубанск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (666, N'Новокузнецк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (667, N'Новокуйбышевск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (668, N'Новомичуринск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (669, N'Новомосковск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (670, N'Новопавловск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (671, N'Новоржев')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (672, N'Новороссийск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (673, N'Новосибирск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (674, N'Новосиль')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (675, N'Новосокольники')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (676, N'Новотроицк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (677, N'Новоузенск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (678, N'Новоульяновск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (679, N'Новоуральск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (680, N'Новохопёрск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (681, N'Новочебоксарск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (682, N'Новочеркасск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (683, N'Новошахтинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (684, N'Новый Оскол')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (685, N'Новый Уренгой')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (686, N'Ногинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (687, N'Нолинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (688, N'Норильск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (689, N'Ноябрьск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (690, N'Нурлат')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (691, N'Нытва')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (692, N'Нюрба')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (693, N'Нягань')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (694, N'Нязепетровск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (695, N'Няндома')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (696, N'Облучье')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (697, N'Обнинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (698, N'Обоянь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (699, N'Обь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (700, N'Одинцово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (701, N'Озёрск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (702, N'Озёрск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (703, N'Озёры')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (704, N'Октябрьск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (705, N'Октябрьский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (706, N'Окуловка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (707, N'Олёкминск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (708, N'Оленегорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (709, N'Олонец')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (710, N'Омск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (711, N'Омутнинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (712, N'Онега')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (713, N'Опочка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (714, N'Орёл')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (715, N'Оренбург')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (716, N'Орехово-Зуево')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (717, N'Орлов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (718, N'Орск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (719, N'Оса')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (720, N'Осинники')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (721, N'Осташков')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (722, N'Остров')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (723, N'Островной')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (724, N'Острогожск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (725, N'Отрадное')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (726, N'Отрадный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (727, N'Оха')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (728, N'Оханск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (729, N'Очёр')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (730, N'Павлово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (731, N'Павловск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (732, N'Павловский Посад')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (733, N'Палласовка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (734, N'Партизанск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (735, N'Певек')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (736, N'Пенза')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (737, N'Первомайск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (738, N'Первоуральск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (739, N'Перевоз')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (740, N'Пересвет')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (741, N'Переславль-Залесский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (742, N'Пермь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (743, N'Пестово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (744, N'Петров Вал')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (745, N'Петровск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (746, N'Петровск-Забайкальский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (747, N'Петрозаводск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (748, N'Петропавловск-Камчатский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (749, N'Петухово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (750, N'Петушки')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (751, N'Печора')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (752, N'Печоры')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (753, N'Пикалёво')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (754, N'Пионерский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (755, N'Питкяранта')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (756, N'Плавск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (757, N'Пласт')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (758, N'Плёс')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (759, N'Поворино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (760, N'Подольск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (761, N'Подпорожье')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (762, N'Покачи')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (763, N'Покров')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (764, N'Покровск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (765, N'Полевской')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (766, N'Полесск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (767, N'Полысаево')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (768, N'Полярные Зори')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (769, N'Полярный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (770, N'Поронайск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (771, N'Порхов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (772, N'Похвистнево')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (773, N'Почеп')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (774, N'Починок')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (775, N'Пошехонье')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (776, N'Правдинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (777, N'Приволжск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (778, N'Приморск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (779, N'Приморск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (780, N'Приморско-Ахтарск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (781, N'Приозерск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (782, N'Прокопьевск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (783, N'Пролетарск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (784, N'Протвино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (785, N'Прохладный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (786, N'Псков')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (787, N'Пугачёв')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (788, N'Пудож')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (789, N'Пустошка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (790, N'Пучеж')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (791, N'Пушкино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (792, N'Пущино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (793, N'Пыталово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (794, N'Пыть-Ях')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (795, N'Пятигорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (796, N'Радужный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (797, N'Радужный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (798, N'Райчихинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (799, N'Раменское')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (800, N'Рассказово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (801, N'Ревда')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (802, N'Реж')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (803, N'Реутов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (804, N'Ржев')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (805, N'Родники')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (806, N'Рославль')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (807, N'Россошь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (808, N'Ростов-на-Дону')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (809, N'Ростов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (810, N'Рошаль')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (811, N'Ртищево')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (812, N'Рубцовск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (813, N'Рудня')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (814, N'Руза')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (815, N'Рузаевка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (816, N'Рыбинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (817, N'Рыбное')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (818, N'Рыльск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (819, N'Ряжск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (820, N'Рязань')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (821, N'Сакине призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (822, N'Салават')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (823, N'Салаир')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (824, N'Салехард')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (825, N'Сальск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (826, N'Самара')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (827, N'Санкт-Петербург')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (828, N'Саранск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (829, N'Сарапул')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (830, N'Саратов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (831, N'Саров')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (832, N'Сасово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (833, N'Сатка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (834, N'Сафоново')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (835, N'Саяногорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (836, N'Саянск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (837, N'Светлогорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (838, N'Светлоград')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (839, N'Светлый')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (840, N'Светогорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (841, N'Свирск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (842, N'Свободный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (843, N'Себеж')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (844, N'Севастопольне призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (845, N'Северо-Курильск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (846, N'Северобайкальск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (847, N'Северодвинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (848, N'Североморск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (849, N'Североуральск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (850, N'Северск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (851, N'Севск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (852, N'Сегежа')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (853, N'Сельцо')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (854, N'Семёнов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (855, N'Семикаракорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (856, N'Семилуки')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (857, N'Сенгилей')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (858, N'Серафимович')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (859, N'Сергач')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (860, N'Сергиев Посад')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (861, N'Сердобск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (862, N'Серов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (863, N'Серпухов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (864, N'Сертолово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (865, N'Сибай')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (866, N'Сим')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (867, N'Симферопольне призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (868, N'Сковородино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (869, N'Скопин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (870, N'Славгород')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (871, N'Славск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (872, N'Славянск-на-Кубани')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (873, N'Сланцы')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (874, N'Слободской')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (875, N'Слюдянка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (876, N'Смоленск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (877, N'Снежинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (878, N'Снежногорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (879, N'Собинка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (880, N'Советск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (881, N'Советск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (882, N'Советск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (883, N'Советская Гавань')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (884, N'Советский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (885, N'Сокол')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (886, N'Солигалич')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (887, N'Соликамск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (888, N'Солнечногорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (889, N'Соль-Илецк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (890, N'Сольвычегодск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (891, N'Сольцы')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (892, N'Сорочинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (893, N'Сорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (894, N'Сортавала')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (895, N'Сосенский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (896, N'Сосновка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (897, N'Сосновоборск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (898, N'Сосновый Бор')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (899, N'Сосногорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (900, N'Сочи')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (901, N'Спас-Деменск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (902, N'Спас-Клепики')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (903, N'Спасск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (904, N'Спасск-Дальний')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (905, N'Спасск-Рязанский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (906, N'Среднеколымск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (907, N'Среднеуральск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (908, N'Сретенск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (909, N'Ставрополь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (910, N'Старая Купавна')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (911, N'Старая Русса')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (912, N'Старица')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (913, N'Стародуб')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (914, N'Старый Крымне призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (915, N'Старый Оскол')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (916, N'Стерлитамак')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (917, N'Стрежевой')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (918, N'Строитель')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (919, N'Струнино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (920, N'Ступино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (921, N'Суворов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (922, N'Судакне призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (923, N'Суджа')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (924, N'Судогда')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (925, N'Суздаль')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (926, N'Сунжа')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (927, N'Суоярви')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (928, N'Сураж')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (929, N'Сургут')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (930, N'Суровикино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (931, N'Сурск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (932, N'Сусуман')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (933, N'Сухиничи')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (934, N'Сухой Лог')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (935, N'Сызрань')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (936, N'Сыктывкар')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (937, N'Сысерть')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (938, N'Сычёвка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (939, N'Сясьстрой')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (940, N'Тавда')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (941, N'Таганрог')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (942, N'Тайга')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (943, N'Тайшет')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (944, N'Талдом')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (945, N'Талица')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (946, N'Тамбов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (947, N'Тара')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (948, N'Тарко-Сале')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (949, N'Таруса')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (950, N'Татарск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (951, N'Таштагол')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (952, N'Тверь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (953, N'Теберда')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (954, N'Тейково')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (955, N'Темников')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (956, N'Темрюк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (957, N'Терек')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (958, N'Тетюши')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (959, N'Тимашёвск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (960, N'Тихвин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (961, N'Тихорецк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (962, N'Тобольск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (963, N'Тогучин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (964, N'Тольятти')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (965, N'Томари')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (966, N'Томмот')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (967, N'Томск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (968, N'Топки')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (969, N'Торжок')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (970, N'Торопец')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (971, N'Тосно')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (972, N'Тотьма')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (973, N'Трёхгорный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (974, N'Троицк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (975, N'Трубчевск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (976, N'Туапсе')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (977, N'Туймазы')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (978, N'Тула')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (979, N'Тулун')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (980, N'Туран')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (981, N'Туринск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (982, N'Тутаев')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (983, N'Тында')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (984, N'Тырныауз')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (985, N'Тюкалинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (986, N'Тюмень')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (987, N'Уварово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (988, N'Углегорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (989, N'Углич')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (990, N'Удачный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (991, N'Удомля')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (992, N'Ужур')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (993, N'Узловая')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (994, N'Улан-Удэ')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (995, N'Ульяновск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (996, N'Унеча')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (997, N'Урай')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (998, N'Урень')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (999, N'Уржум')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1000, N'Урус-Мартан')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1001, N'Урюпинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1002, N'Усинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1003, N'Усмань')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1004, N'Усолье-Сибирское')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1005, N'Усолье')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1006, N'Уссурийск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1007, N'Усть-Джегута')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1008, N'Усть-Илимск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1009, N'Усть-Катав')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1010, N'Усть-Кут')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1011, N'Усть-Лабинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1012, N'Устюжна')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1013, N'Уфа')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1014, N'Ухта')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1015, N'Учалы')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1016, N'Уяр')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1017, N'Фатеж')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1018, N'Феодосияне призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1019, N'Фокино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1020, N'Фокино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1021, N'Фролово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1022, N'Фрязино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1023, N'Фурманов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1024, N'Хабаровск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1025, N'Хадыженск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1026, N'Ханты-Мансийск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1027, N'Харабали')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1028, N'Харовск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1029, N'Хасавюрт')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1030, N'Хвалынск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1031, N'Хилок')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1032, N'Химки')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1033, N'Холм')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1034, N'Холмск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1035, N'Хотьково')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1036, N'Цивильск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1037, N'Цимлянск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1038, N'Циолковский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1039, N'Чадан')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1040, N'Чайковский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1041, N'Чапаевск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1042, N'Чаплыгин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1043, N'Чебаркуль')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1044, N'Чебоксары')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1045, N'Чегем')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1046, N'Чекалин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1047, N'Челябинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1048, N'Чердынь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1049, N'Черемхово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1050, N'Черепаново')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1051, N'Череповец')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1052, N'Черкесск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1053, N'Чёрмоз')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1054, N'Черноголовка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1055, N'Черногорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1056, N'Чернушка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1057, N'Черняховск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1058, N'Чехов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1059, N'Чистополь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1060, N'Чита')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1061, N'Чкаловск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1062, N'Чудово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1063, N'Чулым')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1064, N'Чусовой')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1065, N'Чухлома')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1066, N'Шагонар')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1067, N'Шадринск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1068, N'Шали')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1069, N'Шарыпово')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1070, N'Шарья')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1071, N'Шатура')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1072, N'Шахты')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1073, N'Шахунья')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1074, N'Шацк')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1075, N'Шебекино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1076, N'Шелехов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1077, N'Шенкурск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1078, N'Шилка')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1079, N'Шимановск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1080, N'Шиханы')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1081, N'Шлиссельбург')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1082, N'Шумерля')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1083, N'Шумиха')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1084, N'Шуя')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1085, N'Щёкино')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1086, N'Щёлкиноне призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1087, N'Щёлково')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1088, N'Щигры')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1089, N'Щучье')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1090, N'Электрогорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1091, N'Электросталь')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1092, N'Электроугли')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1093, N'Элиста')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1094, N'Энгельс')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1095, N'Эртиль')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1096, N'Югорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1097, N'Южа')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1098, N'Южно-Сахалинск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1099, N'Южно-Сухокумск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1100, N'Южноуральск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1101, N'Юрга')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1102, N'Юрьев-Польский')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1103, N'Юрьевец')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1104, N'Юрюзань')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1105, N'Юхнов')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1106, N'Ядрин')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1107, N'Якутск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1108, N'Ялтане призн.')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1109, N'Ялуторовск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1110, N'Янаул')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1111, N'Яранск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1112, N'Яровое')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1113, N'Ярославль')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1114, N'Ярцево')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1115, N'Ясногорск')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1116, N'Ясный')
GO
INSERT [dbo].[city] ([city_id], [city_name]) VALUES (1117, N'Яхрома')
GO
SET IDENTITY_INSERT [dbo].[city] OFF
GO
SET IDENTITY_INSERT [dbo].[country] ON 
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (1, N'Абхазия', N'Abkhazia', N'AB', 895)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (2, N'Австралия', N'Australia', N'AU', 36)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (3, N'Австрия', N'Austria', N'AT', 40)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (4, N'Азербайджан', N'Azerbaijan', N'AZ', 31)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (5, N'Албания', N'Albania', N'AL', 8)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (6, N'Алжир', N'Algeria', N'DZ', 12)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (7, N'Американское Самоа', N'American Samoa', N'AS', 16)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (8, N'Ангилья', N'Anguilla', N'AI', 660)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (9, N'Ангола', N'Angola', N'AO', 24)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (10, N'Андорра', N'Andorra', N'AD', 20)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (11, N'Антарктида', N'Antarctica', N'AQ', 10)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (12, N'Антигуа и Барбуда', N'Antigua and Barbuda', N'AG', 28)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (13, N'Аргентина', N'Argentina', N'AR', 32)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (14, N'Армения', N'Armenia', N'AM', 51)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (15, N'Аруба', N'Aruba', N'AW', 533)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (16, N'Афганистан', N'Afghanistan', N'AF', 4)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (17, N'Багамы', N'Bahamas', N'BS', 44)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (18, N'Бангладеш', N'Bangladesh', N'BD', 50)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (19, N'Барбадос', N'Barbados', N'BB', 52)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (20, N'Бахрейн', N'Bahrain', N'BH', 48)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (21, N'Беларусь', N'Belarus', N'BY', 112)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (22, N'Белиз', N'Belize', N'BZ', 84)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (23, N'Бельгия', N'Belgium', N'BE', 56)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (24, N'Бенин', N'Benin', N'BJ', 204)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (25, N'Бермуды', N'Bermuda', N'BM', 60)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (26, N'Болгария', N'Bulgaria', N'BG', 100)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (27, N'Боливия, Многонациональное Государство', N'Bolivia, plurinational state of', N'BO', 68)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (28, N'Бонайре, Саба и Синт-Эстатиус', N'Bonaire, Sint Eustatius and Saba', N'BQ', 535)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (29, N'Босния и Герцеговина', N'Bosnia and Herzegovina', N'BA', 70)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (30, N'Ботсвана', N'Botswana', N'BW', 72)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (31, N'Бразилия', N'Brazil', N'BR', 76)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (32, N'Британская территория в Индийском океане', N'British Indian Ocean Territory', N'IO', 86)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (33, N'Бруней-Даруссалам', N'Brunei Darussalam', N'BN', 96)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (34, N'Буркина-Фасо', N'Burkina Faso', N'BF', 854)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (35, N'Бурунди', N'Burundi', N'BI', 108)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (36, N'Бутан', N'Bhutan', N'BT', 64)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (37, N'Вануату', N'Vanuatu', N'VU', 548)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (38, N'Венгрия', N'Hungary', N'HU', 348)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (39, N'Венесуэла Боливарианская Республика', N'Venezuela', N'VE', 862)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (40, N'Виргинские острова, Британские', N'Virgin Islands, British', N'VG', 92)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (41, N'Виргинские острова, США', N'Virgin Islands, U.S.', N'VI', 850)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (42, N'Вьетнам', N'Vietnam', N'VN', 704)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (43, N'Габон', N'Gabon', N'GA', 266)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (44, N'Гаити', N'Haiti', N'HT', 332)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (45, N'Гайана', N'Guyana', N'GY', 328)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (46, N'Гамбия', N'Gambia', N'GM', 270)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (47, N'Гана', N'Ghana', N'GH', 288)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (48, N'Гваделупа', N'Guadeloupe', N'GP', 312)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (49, N'Гватемала', N'Guatemala', N'GT', 320)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (50, N'Гвинея', N'Guinea', N'GN', 324)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (51, N'Гвинея-Бисау', N'Guinea-Bissau', N'GW', 624)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (52, N'Германия', N'Germany', N'DE', 276)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (53, N'Гернси', N'Guernsey', N'GG', 831)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (54, N'Гибралтар', N'Gibraltar', N'GI', 292)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (55, N'Гондурас', N'Honduras', N'HN', 340)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (56, N'Гонконг', N'Hong Kong', N'HK', 344)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (57, N'Гренада', N'Grenada', N'GD', 308)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (58, N'Гренландия', N'Greenland', N'GL', 304)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (59, N'Греция', N'Greece', N'GR', 300)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (60, N'Грузия', N'Georgia', N'GE', 268)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (61, N'Гуам', N'Guam', N'GU', 316)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (62, N'Дания', N'Denmark', N'DK', 208)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (63, N'Джерси', N'Jersey', N'JE', 832)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (64, N'Джибути', N'Djibouti', N'DJ', 262)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (65, N'Доминика', N'Dominica', N'DM', 212)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (66, N'Доминиканская Республика', N'Dominican Republic', N'DO', 214)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (67, N'Египет', N'Egypt', N'EG', 818)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (68, N'Замбия', N'Zambia', N'ZM', 894)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (69, N'Западная Сахара', N'Western Sahara', N'EH', 732)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (70, N'Зимбабве', N'Zimbabwe', N'ZW', 716)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (71, N'Израиль', N'Israel', N'IL', 376)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (72, N'Индия', N'India', N'IN', 356)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (73, N'Индонезия', N'Indonesia', N'ID', 360)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (74, N'Иордания', N'Jordan', N'JO', 400)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (75, N'Ирак', N'Iraq', N'IQ', 368)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (76, N'Иран, Исламская Республика', N'Iran, Islamic Republic of', N'IR', 364)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (77, N'Ирландия', N'Ireland', N'IE', 372)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (78, N'Исландия', N'Iceland', N'IS', 352)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (79, N'Испания', N'Spain', N'ES', 724)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (80, N'Италия', N'Italy', N'IT', 380)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (81, N'Йемен', N'Yemen', N'YE', 887)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (82, N'Кабо-Верде', N'Cape Verde', N'CV', 132)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (83, N'Казахстан', N'Kazakhstan', N'KZ', 398)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (84, N'Камбоджа', N'Cambodia', N'KH', 116)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (85, N'Камерун', N'Cameroon', N'CM', 120)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (86, N'Канада', N'Canada', N'CA', 124)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (87, N'Катар', N'Qatar', N'QA', 634)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (88, N'Кения', N'Kenya', N'KE', 404)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (89, N'Кипр', N'Cyprus', N'CY', 196)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (90, N'Киргизия', N'Kyrgyzstan', N'KG', 417)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (91, N'Кирибати', N'Kiribati', N'KI', 296)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (92, N'Китай', N'China', N'CN', 156)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (93, N'Кокосовые (Килинг) острова', N'Cocos (Keeling) Islands', N'CC', 166)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (94, N'Колумбия', N'Colombia', N'CO', 170)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (95, N'Коморы', N'Comoros', N'KM', 174)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (96, N'Конго', N'Congo', N'CG', 178)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (97, N'Конго, Демократическая Республика', N'Congo, Democratic Republic of the', N'CD', 180)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (98, N'Корея, Народно-Демократическая Республика', N'Korea, Democratic People''s republic of', N'KP', 408)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (99, N'Корея, Республика', N'Korea, Republic of', N'KR', 410)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (100, N'Коста-Рика', N'Costa Rica', N'CR', 188)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (101, N'Кот д''Ивуар', N'Cote d''Ivoire', N'CI', 384)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (102, N'Куба', N'Cuba', N'CU', 192)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (103, N'Кувейт', N'Kuwait', N'KW', 414)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (104, N'Кюрасао', N'Curaçao', N'CW', 531)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (105, N'Лаос', N'Lao People''s Democratic Republic', N'LA', 418)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (106, N'Латвия', N'Latvia', N'LV', 428)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (107, N'Лесото', N'Lesotho', N'LS', 426)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (108, N'Ливан', N'Lebanon', N'LB', 422)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (109, N'Ливийская Арабская Джамахирия', N'Libyan Arab Jamahiriya', N'LY', 434)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (110, N'Либерия', N'Liberia', N'LR', 430)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (111, N'Лихтенштейн', N'Liechtenstein', N'LI', 438)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (112, N'Литва', N'Lithuania', N'LT', 440)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (113, N'Люксембург', N'Luxembourg', N'LU', 442)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (114, N'Маврикий', N'Mauritius', N'MU', 480)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (115, N'Мавритания', N'Mauritania', N'MR', 478)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (116, N'Мадагаскар', N'Madagascar', N'MG', 450)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (117, N'Майотта', N'Mayotte', N'YT', 175)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (118, N'Макао', N'Macao', N'MO', 446)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (119, N'Малави', N'Malawi', N'MW', 454)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (120, N'Малайзия', N'Malaysia', N'MY', 458)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (121, N'Мали', N'Mali', N'ML', 466)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (122, N'Малые Тихоокеанские отдаленные острова Соединенных Штатов', N'United States Minor Outlying Islands', N'UM', 581)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (123, N'Мальдивы', N'Maldives', N'MV', 462)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (124, N'Мальта', N'Malta', N'MT', 470)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (125, N'Марокко', N'Morocco', N'MA', 504)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (126, N'Мартиника', N'Martinique', N'MQ', 474)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (127, N'Маршалловы острова', N'Marshall Islands', N'MH', 584)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (128, N'Мексика', N'Mexico', N'MX', 484)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (129, N'Микронезия, Федеративные Штаты', N'Micronesia, Federated States of', N'FM', 583)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (130, N'Мозамбик', N'Mozambique', N'MZ', 508)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (131, N'Молдова, Республика', N'Moldova', N'MD', 498)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (132, N'Монако', N'Monaco', N'MC', 492)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (133, N'Монголия', N'Mongolia', N'MN', 496)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (134, N'Монтсеррат', N'Montserrat', N'MS', 500)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (135, N'Мьянма', N'Myanmar', N'MM', 104)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (136, N'Намибия', N'Namibia', N'NA', 516)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (137, N'Науру', N'Nauru', N'NR', 520)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (138, N'Непал', N'Nepal', N'NP', 524)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (139, N'Нигер', N'Niger', N'NE', 562)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (140, N'Нигерия', N'Nigeria', N'NG', 566)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (141, N'Нидерланды', N'Netherlands', N'NL', 528)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (142, N'Никарагуа', N'Nicaragua', N'NI', 558)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (143, N'Ниуэ', N'Niue', N'NU', 570)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (144, N'Новая Зеландия', N'New Zealand', N'NZ', 554)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (145, N'Новая Каледония', N'New Caledonia', N'NC', 540)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (146, N'Норвегия', N'Norway', N'NO', 578)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (147, N'Объединенные Арабские Эмираты', N'United Arab Emirates', N'AE', 784)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (148, N'Оман', N'Oman', N'OM', 512)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (149, N'Остров Буве', N'Bouvet Island', N'BV', 74)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (150, N'Остров Мэн', N'Isle of Man', N'IM', 833)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (151, N'Остров Норфолк', N'Norfolk Island', N'NF', 574)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (152, N'Остров Рождества', N'Christmas Island', N'CX', 162)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (153, N'Остров Херд и острова Макдональд', N'Heard Island and McDonald Islands', N'HM', 334)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (154, N'Острова Кайман', N'Cayman Islands', N'KY', 136)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (155, N'Острова Кука', N'Cook Islands', N'CK', 184)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (156, N'Острова Теркс и Кайкос', N'Turks and Caicos Islands', N'TC', 796)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (157, N'Пакистан', N'Pakistan', N'PK', 586)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (158, N'Палау', N'Palau', N'PW', 585)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (159, N'Палестинская территория, оккупированная', N'Palestinian Territory, Occupied', N'PS', 275)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (160, N'Панама', N'Panama', N'PA', 591)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (161, N'Папский Престол (Государство — город Ватикан)', N'Holy See (Vatican City State)', N'VA', 336)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (162, N'Папуа-Новая Гвинея', N'Papua New Guinea', N'PG', 598)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (163, N'Парагвай', N'Paraguay', N'PY', 600)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (164, N'Перу', N'Peru', N'PE', 604)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (165, N'Питкерн', N'Pitcairn', N'PN', 612)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (166, N'Польша', N'Poland', N'PL', 616)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (167, N'Португалия', N'Portugal', N'PT', 620)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (168, N'Пуэрто-Рико', N'Puerto Rico', N'PR', 630)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (169, N'Республика Македония', N'Macedonia, The Former Yugoslav Republic Of', N'MK', 807)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (170, N'Реюньон', N'Reunion', N'RE', 638)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (171, N'Россия', N'Russian Federation', N'RU', 643)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (172, N'Руанда', N'Rwanda', N'RW', 646)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (173, N'Румыния', N'Romania', N'RO', 642)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (174, N'Самоа', N'Samoa', N'WS', 882)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (175, N'Сан-Марино', N'San Marino', N'SM', 674)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (176, N'Сан-Томе и Принсипи', N'Sao Tome and Principe', N'ST', 678)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (177, N'Саудовская Аравия', N'Saudi Arabia', N'SA', 682)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (178, N'Свазиленд', N'Swaziland', N'SZ', 748)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (179, N'Святая Елена, Остров вознесения, Тристан-да-Кунья', N'Saint Helena, Ascension And Tristan Da Cunha', N'SH', 654)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (180, N'Северные Марианские острова', N'Northern Mariana Islands', N'MP', 580)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (181, N'Сен-Бартельми', N'Saint Barthélemy', N'BL', 652)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (182, N'Сен-Мартен', N'Saint Martin (French Part)', N'MF', 663)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (183, N'Сенегал', N'Senegal', N'SN', 686)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (184, N'Сент-Винсент и Гренадины', N'Saint Vincent and the Grenadines', N'VC', 670)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (185, N'Сент-Люсия', N'Saint Lucia', N'LC', 662)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (186, N'Сент-Китс и Невис', N'Saint Kitts and Nevis', N'KN', 659)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (187, N'Сент-Пьер и Микелон', N'Saint Pierre and Miquelon', N'PM', 666)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (188, N'Сербия', N'Serbia', N'RS', 688)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (189, N'Сейшелы', N'Seychelles', N'SC', 690)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (190, N'Сингапур', N'Singapore', N'SG', 702)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (191, N'Синт-Мартен', N'Sint Maarten', N'SX', 534)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (192, N'Сирийская Арабская Республика', N'Syrian Arab Republic', N'SY', 760)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (193, N'Словакия', N'Slovakia', N'SK', 703)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (194, N'Словения', N'Slovenia', N'SI', 705)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (195, N'Соединенное Королевство', N'United Kingdom', N'GB', 826)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (196, N'Соединенные Штаты', N'United States', N'US', 840)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (197, N'Соломоновы острова', N'Solomon Islands', N'SB', 90)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (198, N'Сомали', N'Somalia', N'SO', 706)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (199, N'Судан', N'Sudan', N'SD', 729)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (200, N'Суринам', N'Suriname', N'SR', 740)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (201, N'Сьерра-Леоне', N'Sierra Leone', N'SL', 694)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (202, N'Таджикистан', N'Tajikistan', N'TJ', 762)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (203, N'Таиланд', N'Thailand', N'TH', 764)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (204, N'Тайвань (Китай)', N'Taiwan, Province of China', N'TW', 158)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (205, N'Танзания, Объединенная Республика', N'Tanzania, United Republic Of', N'TZ', 834)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (206, N'Тимор-Лесте', N'Timor-Leste', N'TL', 626)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (207, N'Того', N'Togo', N'TG', 768)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (208, N'Токелау', N'Tokelau', N'TK', 772)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (209, N'Тонга', N'Tonga', N'TO', 776)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (210, N'Тринидад и Тобаго', N'Trinidad and Tobago', N'TT', 780)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (211, N'Тувалу', N'Tuvalu', N'TV', 798)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (212, N'Тунис', N'Tunisia', N'TN', 788)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (213, N'Туркмения', N'Turkmenistan', N'TM', 795)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (214, N'Турция', N'Turkey', N'TR', 792)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (215, N'Уганда', N'Uganda', N'UG', 800)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (216, N'Узбекистан', N'Uzbekistan', N'UZ', 860)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (217, N'Украина', N'Ukraine', N'UA', 804)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (218, N'Уоллис и Футуна', N'Wallis and Futuna', N'WF', 876)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (219, N'Уругвай', N'Uruguay', N'UY', 858)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (220, N'Фарерские острова', N'Faroe Islands', N'FO', 234)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (221, N'Фиджи', N'Fiji', N'FJ', 242)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (222, N'Филиппины', N'Philippines', N'PH', 608)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (223, N'Финляндия', N'Finland', N'FI', 246)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (224, N'Фолклендские острова (Мальвинские)', N'Falkland Islands (Malvinas)', N'FK', 238)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (225, N'Франция', N'France', N'FR', 250)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (226, N'Французская Гвиана', N'French Guiana', N'GF', 254)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (227, N'Французская Полинезия', N'French Polynesia', N'PF', 258)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (228, N'Французские Южные территории', N'French Southern Territories', N'TF', 260)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (229, N'Хорватия', N'Croatia', N'HR', 191)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (230, N'Центрально-Африканская Республика', N'Central African Republic', N'CF', 140)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (231, N'Чад', N'Chad', N'TD', 148)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (232, N'Черногория', N'Montenegro', N'ME', 499)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (233, N'Чешская Республика', N'Czech Republic', N'CZ', 203)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (234, N'Чили', N'Chile', N'CL', 152)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (235, N'Швейцария', N'Switzerland', N'CH', 756)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (236, N'Швеция', N'Sweden', N'SE', 752)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (237, N'Шпицберген и Ян Майен', N'Svalbard and Jan Mayen', N'SJ', 744)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (238, N'Шри-Ланка', N'Sri Lanka', N'LK', 144)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (239, N'Эквадор', N'Ecuador', N'EC', 218)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (240, N'Экваториальная Гвинея', N'Equatorial Guinea', N'GQ', 226)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (241, N'Эландские острова', N'Åland Islands', N'AX', 248)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (242, N'Эль-Сальвадор', N'El Salvador', N'SV', 222)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (243, N'Эритрея', N'Eritrea', N'ER', 232)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (244, N'Эстония', N'Estonia', N'EE', 233)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (245, N'Эфиопия', N'Ethiopia', N'ET', 231)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (246, N'Южная Африка', N'South Africa', N'ZA', 710)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (247, N'Южная Джорджия и Южные Сандвичевы острова', N'South Georgia and the South Sandwich Islands', N'GS', 239)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (248, N'Южная Осетия', N'South Ossetia', N'OS', 896)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (249, N'Южный Судан', N'South Sudan', N'SS', 728)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (250, N'Ямайка', N'Jamaica', N'JM', 388)
GO
INSERT [dbo].[country] ([country_id], [country_ru_name], [country_eng_name], [country_code_char], [country_code_int]) VALUES (251, N'Япония', N'Japan', N'JP', 392)
GO
SET IDENTITY_INSERT [dbo].[country] OFF
GO
SET IDENTITY_INSERT [dbo].[direction] ON 
GO
INSERT [dbo].[direction] ([direction_id], [direction_name]) VALUES (1, N'ИТ')
GO
INSERT [dbo].[direction] ([direction_id], [direction_name]) VALUES (2, N'Биг Дата')
GO
INSERT [dbo].[direction] ([direction_id], [direction_name]) VALUES (3, N'Дизайн')
GO
INSERT [dbo].[direction] ([direction_id], [direction_name]) VALUES (4, N'Аналитика')
GO
INSERT [dbo].[direction] ([direction_id], [direction_name]) VALUES (5, N'Информационная безопасность')
GO
SET IDENTITY_INSERT [dbo].[direction] OFF
GO
SET IDENTITY_INSERT [dbo].[event] ON 
GO
INSERT [dbo].[event] ([event_id], [event_name]) VALUES (1, N'IT в бизнесе')
GO
INSERT [dbo].[event] ([event_id], [event_name]) VALUES (2, N'Разработка приложений')
GO
INSERT [dbo].[event] ([event_id], [event_name]) VALUES (3, N'IT-инфраструктура')
GO
INSERT [dbo].[event] ([event_id], [event_name]) VALUES (4, N'Стартапы')
GO
INSERT [dbo].[event] ([event_id], [event_name]) VALUES (5, N'Информационная безопасность')
GO
SET IDENTITY_INSERT [dbo].[event] OFF
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (2, 1)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (2, 2)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (2, 3)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (3, 4)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (3, 5)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (3, 6)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (10, 7)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (10, 8)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (10, 9)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (11, 10)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (11, 11)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (11, 12)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (13, 13)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (13, 14)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (13, 15)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (20, 16)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (20, 17)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (20, 18)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (21, 19)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (21, 20)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (21, 21)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (18, 22)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (18, 23)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (18, 24)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (9, 25)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (9, 26)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (9, 27)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (10, 28)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (10, 29)
GO
INSERT [dbo].[event_activity] ([event_id], [activity_id]) VALUES (10, 30)
GO
SET IDENTITY_INSERT [dbo].[event_business] ON 
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (2, N'Анализ предметных областей и проектирование сценариев использования ', CAST(N'2022-03-23' AS Date), 2, 1, 2)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (3, N'Анализ предметных областей и проектирование сценариев использования. Часть 1 ', CAST(N'2022-03-30' AS Date), 2, 3, 6)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (4, N'Андрей Ершов — CRDT. Бесконфликтная синхронизация данных ', CAST(N'2022-02-28' AS Date), 3, 4, NULL)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (5, N'Анти-выгорание и совладание со стрессом ', CAST(N'2023-08-07' AS Date), 3, 7, NULL)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (6, N'Банковский IT-форум в Санкт-Петербурге ', CAST(N'2022-04-21' AS Date), 1, 8, NULL)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (7, N'БАТТЛ РАЗРАБОТЧИКОВ, PIZZA-MEETUP И МОЩНЫЙ НЕТВОРКИНГ С ЭКСПЕРТАМИ В СФЕРЕ FINTECH ', CAST(N'2022-12-23' AS Date), 2, 34, NULL)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (8, N'Беговая эстафета «IT Run #2» ', CAST(N'2022-01-20' AS Date), 1, 23, NULL)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (9, N'Беговая эстафета «IT Run #3» ', CAST(N'2023-08-28' AS Date), 3, 67, 12)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (10, N'Бесплатная открытая лекция курса «Создание и продвижение IT-стартапа» ', CAST(N'2022-04-29' AS Date), 3, 32, 3)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (11, N'Бизнес встреча «Цифровая трансформация промышленного предприятия» ', CAST(N'2022-03-17' AS Date), 2, 11, 4)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (12, N'Бизнес-завтрак «Фасилитация рабочих встреч: с чего начать и как использовать» ', CAST(N'2022-01-28' AS Date), 1, 2, NULL)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (13, N'Бизнес-завтрак с Яндекс.Директ ', CAST(N'2023-04-10' AS Date), 3, 34, 5)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (14, N'Бизнес-завтрак с Яндекс.Маркет (Санкт-Петербург) ', CAST(N'2023-07-17' AS Date), 2, 2, NULL)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (15, N'Бизнес-завтрак: «SEO-Pit stop» ', CAST(N'2022-08-13' AS Date), 3, 12, NULL)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (16, N'Бизнес-завтрак: Dynamics 365 Business Central — что готовит октябрь 2018. Санкт-Петербург. ', CAST(N'2023-05-23' AS Date), 1, 3, NULL)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (17, N'Бизнес-интенсив HARDEST / 19, 20, 21 мая / СПб ', CAST(N'2023-08-07' AS Date), 2, 23, NULL)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (18, N'Бизнес-квест «Свои Люди» ', CAST(N'2023-10-24' AS Date), 3, 1, 11)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (19, N'Битва IT умов по версии ОЛЛИ ', CAST(N'2022-05-12' AS Date), 2, 1, NULL)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (20, N'Блокчейн & Киберриски. Конференция о будущем вашем и ваших клиентов ', CAST(N'2023-11-01' AS Date), 2, 3, 7)
GO
INSERT [dbo].[event_business] ([event_id], [event_name], [event_date], [event_days], [event_city_id], [event_user_id]) VALUES (21, N'Блокчейн митап cyber•Fund ', CAST(N'2022-04-03' AS Date), 2, 3, 8)
GO
SET IDENTITY_INSERT [dbo].[event_business] OFF
GO
SET IDENTITY_INSERT [dbo].[jury] ON 
GO
INSERT [dbo].[jury] ([jury_id], [jury_name]) VALUES (1, N'Жюри 1')
GO
INSERT [dbo].[jury] ([jury_id], [jury_name]) VALUES (2, N'Жюри 2')
GO
INSERT [dbo].[jury] ([jury_id], [jury_name]) VALUES (3, N'Жюри 3')
GO
INSERT [dbo].[jury] ([jury_id], [jury_name]) VALUES (4, N'Жюри 4')
GO
INSERT [dbo].[jury] ([jury_id], [jury_name]) VALUES (5, N'Жюри 5')
GO
SET IDENTITY_INSERT [dbo].[jury] OFF
GO
SET IDENTITY_INSERT [dbo].[jury_activity] ON 
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (1, 1, 1, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (2, 1, 2, 53)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (3, 1, 3, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (4, 1, 4, 54)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (5, 1, 5, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (6, 2, 1, 61)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (7, 2, 2, 55)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (8, 2, 3, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (9, 2, 4, 54)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (10, 2, 5, 61)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (11, 3, 1, 62)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (12, 3, 2, 55)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (13, 3, 3, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (14, 3, 4, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (15, 3, 5, 62)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (16, 4, 1, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (17, 4, 2, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (18, 4, 3, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (19, 4, 4, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (20, 4, 5, 55)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (21, 5, 1, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (22, 5, 2, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (23, 5, 3, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (24, 5, 4, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (25, 5, 5, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (26, 6, 1, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (27, 6, 2, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (28, 6, 3, 59)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (29, 6, 4, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (30, 6, 5, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (31, 7, 1, 59)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (32, 7, 2, 59)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (33, 7, 3, 54)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (34, 7, 4, 59)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (35, 7, 5, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (36, 8, 1, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (37, 8, 2, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (38, 8, 3, 55)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (39, 8, 4, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (40, 8, 5, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (41, 9, 1, 61)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (42, 9, 2, 61)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (43, 9, 3, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (44, 9, 4, 61)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (45, 9, 5, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (46, 10, 1, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (47, 10, 2, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (48, 10, 3, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (49, 10, 4, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (50, 10, 5, 54)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (51, 11, 1, 55)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (52, 11, 2, 61)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (53, 11, 3, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (54, 11, 4, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (55, 11, 5, 61)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (56, 12, 1, 62)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (57, 12, 2, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (58, 12, 3, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (59, 12, 4, 62)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (60, 12, 5, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (61, 13, 1, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (62, 13, 2, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (63, 13, 3, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (64, 13, 4, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (65, 13, 5, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (66, 14, 1, 61)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (67, 14, 2, 59)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (68, 14, 3, 59)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (69, 14, 4, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (70, 14, 5, 61)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (71, 15, 1, 62)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (72, 15, 2, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (73, 15, 3, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (74, 15, 4, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (75, 15, 5, 62)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (76, 16, 1, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (77, 16, 2, 54)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (78, 16, 3, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (79, 16, 4, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (80, 16, 5, 59)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (81, 17, 1, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (82, 17, 2, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (83, 17, 3, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (84, 17, 4, 55)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (85, 17, 5, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (86, 18, 1, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (87, 18, 2, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (88, 18, 3, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (89, 18, 4, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (90, 18, 5, 61)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (91, 19, 1, 55)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (92, 19, 2, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (93, 19, 3, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (94, 19, 4, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (95, 19, 5, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (96, 20, 1, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (97, 20, 2, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (98, 20, 3, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (99, 20, 4, 59)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (100, 20, 5, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (101, 21, 1, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (102, 21, 2, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (103, 21, 3, 59)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (104, 21, 4, 61)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (105, 21, 5, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (106, 22, 1, 55)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (107, 22, 2, 54)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (108, 22, 3, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (109, 22, 4, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (110, 22, 5, 54)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (111, 23, 1, 55)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (112, 23, 2, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (113, 23, 3, 61)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (114, 23, 4, 55)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (115, 23, 5, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (116, 24, 1, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (117, 24, 2, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (118, 24, 3, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (119, 24, 4, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (120, 24, 5, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (121, 25, 1, 59)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (122, 25, 2, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (123, 25, 3, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (124, 25, 4, 55)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (125, 25, 5, 55)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (126, 26, 1, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (127, 26, 2, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (128, 26, 3, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (129, 26, 4, 59)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (130, 26, 5, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (131, 27, 1, 61)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (132, 27, 2, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (133, 27, 3, 58)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (134, 27, 4, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (135, 27, 5, 57)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (136, 28, 1, 59)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (137, 28, 2, 54)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (138, 28, 3, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (139, 28, 4, 54)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (140, 28, 5, 54)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (141, 29, 1, 55)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (142, 29, 2, 55)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (143, 29, 3, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (144, 29, 4, 55)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (145, 29, 5, 60)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (146, 30, 1, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (147, 30, 2, 56)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (148, 30, 3, 61)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (149, 30, 4, NULL)
GO
INSERT [dbo].[jury_activity] ([jury_activity_id], [activity_id], [jury_id], [jury_activity_user_id]) VALUES (150, 30, 5, 56)
GO
SET IDENTITY_INSERT [dbo].[jury_activity] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 
GO
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (1, N'Участник')
GO
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (2, N'Модератор')
GO
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (3, N'Организатор')
GO
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (4, N'Жюри')
GO
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (5, N'Гость')
GO
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (2, N'Бобров', N'Терентий', N'Созонович', N'bowmanbs@mac.com', N't1Os4A', N'мужской', CAST(N'1976-07-02' AS Date), 45, N'9.53596e+009', NULL, NULL, N'foto40.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (3, N'Орехова', N'Николь', N'Дмитриевна', N'catalog@aol.com', N'wOMJfO$*00', N'женский', CAST(N'1977-06-28' AS Date), 86, N'9.27353e+009', NULL, NULL, N'foto41.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (4, N'Бурова', N'Анэля', N'Пётровна', N'privcan@hotmail.com', N'kymPeI&&%78', N'женский', CAST(N'1977-11-22' AS Date), 45, N'9.64283e+009', NULL, NULL, N'foto42.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (5, N'Фомичёва', N'Никки', N'Вениаминовна', N'rgiersig@verizon.net', N'tshF#2', N'женский', CAST(N'1979-03-29' AS Date), 93, N'9.14696e+009', NULL, NULL, N'foto43.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (6, N'Шилова', N'Габи', N'Федоровна', N'xnormal@gmail.com', N'|qpK#n4', N'женский', CAST(N'1979-10-20' AS Date), 44, N'9.72194e+009', NULL, NULL, N'foto44.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (7, N'Белякова', N'Юлия', N'Ильяовна', N'msusa@aol.com', N'su1W4D', N'женский', CAST(N'1980-03-15' AS Date), 20, N'9.75196e+009', NULL, NULL, N'foto45.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (8, N'Сысоева', N'Грета', N'Станиславовна', N'oneiros@hotmail.com', N'4@#UR9*tt', N'женский', CAST(N'1980-04-05' AS Date), 73, N'9.72285e+009', NULL, NULL, N'foto46.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (9, N'Горбунова', N'Роза', N'Адольфовна', N'gboss@yahoo.ca', N'CQHP{@hh', N'женский', CAST(N'1980-05-13' AS Date), 81, N'9.26512e+009', NULL, NULL, N'foto47.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (10, N'Субботина', N'Юзефа', N'Матвеевна', N'jmorris@verizon.net', N'xRu7M@', N'женский', CAST(N'1980-10-21' AS Date), 13, N'9.28026e+009', NULL, NULL, N'foto48.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (11, N'Денисова', N'Иоланта', N'Лукьевна', N'jginspace@live.com', N'QGV?VI7', N'женский', CAST(N'1980-11-14' AS Date), 61, N'9.37243e+009', NULL, NULL, N'foto49.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (12, N'Сидорова', N'Глафира', N'Игоревна', N'ajlitt@yahoo.com', N'MSysm5%', N'женский', CAST(N'1981-06-30' AS Date), 22, N'9.46822e+009', NULL, NULL, N'foto50.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (13, N'Маркова', N'Андриана', N'Константиновна', N'hager@outlook.com', N'j?jvud8', N'женский', CAST(N'1981-12-06' AS Date), 96, N'9.25071e+009', NULL, NULL, N'foto51.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (14, N'Куликова', N'Аза', N'Улебовна', N'mfburgo@me.com', N's*WTIN2', N'женский', CAST(N'1982-07-01' AS Date), 38, N'9.27692e+009', NULL, NULL, N'foto52.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (15, N'Стрелкова', N'Гертруда', N'Васильевна', N'rfisher@sbcglobal.net', N'JdBCQ*7', N'женский', CAST(N'1982-07-09' AS Date), 35, N'9.56221e+009', NULL, NULL, N'foto53.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (16, N'Карпова', N'Данута', N'Юрьевна', N'sinkou@live.com', N'*#$2I*GGf', N'женский', CAST(N'1983-05-19' AS Date), 5, N'9.13722e+009', NULL, NULL, N'foto54.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (17, N'Прохорова', N'Лали', N'Всеволодовна', N'vertigo@comcast.net', N'mQY7GN', N'женский', CAST(N'1983-11-25' AS Date), 69, N'9.70343e+009', NULL, NULL, N'foto55.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (18, N'Евсеева', N'Венера', N'Семёновна', N'campware@yahoo.ca', N'~7|3K1yy', N'женский', CAST(N'1983-11-29' AS Date), 12, N'9.87984e+009', NULL, NULL, N'foto56.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (19, N'Пестова', N'Каролина', N'Парфеньевна', N'karasik@comcast.net', N'Lkrjlu@5', N'женский', CAST(N'1984-05-03' AS Date), 12, N'9.61456e+009', NULL, NULL, N'foto57.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (20, N'Филатова', N'Нина', N'Антоновна', N'lamky@yahoo.com', N'EpT#2C', N'женский', CAST(N'1986-04-04' AS Date), 54, N'9.02747e+009', NULL, NULL, N'foto58.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (21, N'Морозова', N'Наоми', N'Якуновна', N'marcs@yahoo.ca', N'grTm#7', N'женский', CAST(N'1986-11-07' AS Date), 73, N'9.91673e+009', NULL, NULL, N'foto59.jpg', 1)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (22, N'Тимофеева', N'Вероника', N'Никитична', N'2mrndva1w03i@yahoo.com', N'fA5j8aHU33', N'женский', CAST(N'1972-09-10' AS Date), 59, N'7(116)060-19-37', 1, 1, N'foto9.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (23, N'Попова', N'Маргарита', N'Александровна', N'a139dszl0thv@gmail.com', N's62Zy42hDE', N'женский', CAST(N'1980-08-05' AS Date), 44, N'7(011)495-82-10', 1, 1, N'foto10.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (24, N'Абрамов', N'Александр', N'Алексеевич', N'afe028rbd3jl@outlook.com', N'Eh23iV8Ls3', N'мужской', CAST(N'1977-02-18' AS Date), 8, N'7(815)360-04-17', 2, 2, N'foto8.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (25, N'Соловьев', N'Михаил', N'Макарович', N'0k7jfh6ouslx@mail.com', N'Yvm2tF73C3', N'мужской', CAST(N'1961-09-26' AS Date), 10, N'7(378)681-79-31', 3, 3, N'foto11.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (26, N'Марков', N'Елисей', N'Максимович', N'gut7ivyz2kmq@mail.com', N'XM76e9Vu8y', N'мужской', CAST(N'1984-10-04' AS Date), 19, N'7(920)998-14-75', 2, 2, N'foto12.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (27, N'Михайлов', N'Артём', N'Тимофеевич', N'vbp61sncyui3@tutanota.com', N'5Ck23hpTS6', N'мужской', CAST(N'1974-08-15' AS Date), 67, N'7(806)930-30-84', 4, 4, N'foto13.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (28, N'Ефремов', N'Лука', N'Демидович', N'gdz4vioqec3w@mail.com', N'5eh43YF7Ck', N'мужской', CAST(N'1990-06-04' AS Date), 64, N'7(766)768-78-99', 1, 1, N'foto14.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (29, N'Федоров', N'Егор', N'Матвеевич', N'ftg784qdiacy@mail.com', N'rL7r8i77FF', N'мужской', CAST(N'1956-07-19' AS Date), 66, N'7(873)444-00-44', 5, 5, N'foto16.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (30, N'Романов', N'Дмитрий', N'Арсентьевич', N'cehp6l3gw90y@yahoo.com', N'Xc6L78gVi9', N'мужской', CAST(N'1988-02-04' AS Date), 55, N'7(775)127-77-37', 2, 2, N'foto17.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (31, N'Журавлев', N'Матвей', N'Андреевич', N'auog0ir57qxy@gmail.com', N'j89Sj9BEb2', N'мужской', CAST(N'1972-06-06' AS Date), 54, N'7(062)516-39-67', 4, 4, N'foto18.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (32, N'Кудрявцев', N'Даниэль', N'Маркович', N'jz1lwt2874fk@tutanota.com', N'VT53ru82Ny', N'мужской', CAST(N'1981-03-13' AS Date), 99, N'7(019)136-20-11', 4, 4, N'foto19.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (33, N'Абрамова', N'Алиса', N'Леонидовна', N'nocyvpk7fwm4@mail.com', N'b48AE5U4pv', N'женский', CAST(N'1987-10-20' AS Date), 91, N'7(398)127-62-39', 5, 5, N'foto20.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (34, N'Глушкова', N'Полина', N'Михайловна', N'ikot96mrynfq@yahoo.com', N'zuNC39K74e', N'женский', CAST(N'1982-01-28' AS Date), 47, N'7(811)214-96-51', 3, 3, N'foto21.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (35, N'Харитонова', N'Елизавета', N'Богдановна', N'sy7bjd9w3am8@tutanota.com', N'5cRH3iR66t', N'женский', CAST(N'1953-03-30' AS Date), 99, N'7(729)404-62-85', 3, 3, N'foto22.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (36, N'Медведев', N'Максим', N'Владимирович', N'day56vqslutx@gmail.com', N'DL23d8Zee8', N'мужской', CAST(N'1970-07-20' AS Date), 82, N'7(948)613-63-27', 3, 3, N'foto23.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (37, N'Балашов', N'Павел', N'Александрович', N'tbanx3e9zdos@outlook.com', N'2fU8Z7jAk7', N'мужской', CAST(N'1967-01-07' AS Date), 32, N'7(548)451-61-88', 5, 5, N'foto24.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (38, N'Панова', N'Анисия', N'Ильинична', N'0kt9zhu847rm@gmail.com', N'r45S3hBEm7', N'женский', CAST(N'1980-12-10' AS Date), 31, N'7(143)603-46-64', 5, 5, N'foto25.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (39, N'Соколова', N'Екатерина', N'Елисеевна', N's7p582f9rocv@outlook.com', N'p2d772YXzH', N'женский', CAST(N'1984-05-13' AS Date), 89, N'7(606)692-40-83', 2, 2, N'foto26.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (40, N'Антонов', N'Леонид', N'Степанович', N'guhxk5rd3287@mail.com', N'SX72yf8Yb4', N'мужской', CAST(N'1968-06-24' AS Date), 75, N'7(289)679-81-04', 4, 4, N'foto27.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (41, N'Верещагин', N'Игнат', N'Сергеевич', N'rezas3g4pdwx@gmail.com', N'yfU5R747pH', N'мужской', CAST(N'1974-08-24' AS Date), 69, N'7(369)033-74-07', 5, 5, N'foto28.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (42, N'Лаврентьева', N'Анна', N'Максимовна', N'kgzrhsn807ad@tutanota.com', N'29Z8rUSsh6', N'женский', CAST(N'1989-11-30' AS Date), 28, N'7(190)088-71-65', 2, 2, N'foto29.jpg', 2)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (43, N'Смирнова', N'Варвара', N'Васильевна', N'ja1m6ekwls0x@mail.com', N'Gm87XHb56b', N'женский', CAST(N'1996-11-13' AS Date), 74, N'7(336)944-96-15', NULL, NULL, N'foto1.jpg', 3)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (44, N'Киселев', N'Марк', N'Вячеславович', N'jn8s3ao96et5@yahoo.com', N'XzKSt947y2', N'мужской', CAST(N'1993-03-19' AS Date), 5, N'7(036)224-39-03', NULL, NULL, N'foto2.jpg', 3)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (45, N'Беликов', N'Роман', N'Тимофеевич', N'874gri1p0cte@mail.com', N'7XyP3i72dU', N'мужской', CAST(N'1963-02-09' AS Date), 97, N'7(340)927-01-93', NULL, NULL, N'foto3.jpg', 3)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (46, N'Гаврилова', N'Екатерина', N'Давидовна', N'bvg7f3c9uqr0@yahoo.com', N'9L3Amfy4M3', N'женский', CAST(N'1991-03-26' AS Date), 65, N'7(035)068-27-40', NULL, NULL, N'foto4.jpg', 3)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (47, N'Егоров', N'Иван', N'Тимофеевич', N'kymfd1no60xv@yahoo.com', N'vZP28j2g3B', N'мужской', CAST(N'1997-12-26' AS Date), 27, N'7(634)656-80-65', NULL, NULL, N'foto5.jpg', 3)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (48, N'Захаров', N'Артём', N'Михайлович', N'xem2iylgjqku@mail.com', N'bBFR23s95s', N'мужской', CAST(N'1971-06-28' AS Date), 47, N'7(920)492-73-70', NULL, NULL, N'foto6.jpg', 3)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (49, N'Комарова', N'Екатерина', N'Михайловна', N'kd932gmfr7ya@yahoo.com', N'9NfgC82Z3i', N'женский', CAST(N'1982-08-26' AS Date), 21, N'7(419)236-20-16', NULL, NULL, N'foto7.jpg', 3)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (50, N'Яковлева', N'Марина', N'Всеволодовна', N'z3t0fbmq5vpw@outlook.com', N'Yhf73iCT99', N'женский', CAST(N'1952-11-09' AS Date), 22, N'7(768)188-48-96', NULL, NULL, N'foto8.jpg', 3)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (51, N'Горячева', N'Кристина', N'Александровна', N'n4pkh3u0elx1@tutanota.com', N'82Du3fY9yE', N'женский', CAST(N'1996-02-15' AS Date), 13, N'7(919)270-51-91', NULL, NULL, N'foto9.jpg', 3)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (52, N'Данилов', N'Михаил', N'Сергеевич', N'7j0zpaig8hrb@tutanota.com', N'5B43uMfD9g', N'мужской', CAST(N'1960-07-21' AS Date), 28, N'7(386)022-85-86', NULL, NULL, N'foto10.jpg', 3)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (53, N'Суворов', N'Леонид', N'Алексеевич', N'fboehm@gmail.com', N'5BIgu5', N'мужской', CAST(N'1988-02-26' AS Date), 64, N'7(821)995-78-97', 5, NULL, N'foto11.jpg', 4)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (54, N'Петухов', N'Вилен', N'Ильяович', N'abigayle.daugherty@bartoletti.com', N'br@ILZ', N'мужской', CAST(N'1983-01-21' AS Date), 45, N'7(421)662-87-42', 5, NULL, N'foto12.jpg', 4)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (55, N'Миронов', N'Арсений', N'Романович', N'zking@effertz.org', N'7qb*6x', N'мужской', CAST(N'1981-03-22' AS Date), 21, N'7(873)779-08-49', 2, NULL, N'foto13.jpg', 4)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (56, N'Веселов', N'Прохор', N'Вадимович', N'ghackett@yahoo.com', N'nN?bR2', N'мужской', CAST(N'1987-01-23' AS Date), 31, N'7(968)137-20-49', 2, NULL, N'foto14.jpg', 4)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (57, N'Костин', N'Гордей', N'Пётрович', N'lafayette66@wilkinson.com', N'b3MkBi', N'мужской', CAST(N'1988-06-24' AS Date), 10, N'7(270)545-22-93', 1, NULL, N'foto15.jpg', 4)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (58, N'Самойлова', N'Мартина', N'Рудольфовна', N'ferry.alexandrine@marquardt.info', N'veCAgL', N'женский', CAST(N'1974-11-25' AS Date), 9, N'7(795)946-61-51', 5, NULL, N'foto16.jpg', 4)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (59, N'Шубина', N'Грета', N'Андреевна', N'amanda76@yahoo.com', N'k3vfwO', N'женский', CAST(N'1993-04-26' AS Date), 52, N'7(918)035-36-20', 5, NULL, N'foto17.jpg', 4)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (60, N'Воробьёва', N'Гелла', N'Филипповна', N'jdavis@will.com', N'Mou5kd', N'женский', CAST(N'1983-09-27' AS Date), 67, N'7(751)957-92-99', 3, NULL, N'foto18.jpg', 4)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (61, N'Никитина', N'Ирэна', N'Валерьевна', N'leffertz@champlin.com', N'~8xr}f', N'женский', CAST(N'1983-01-28' AS Date), 81, N'7(723)495-69-42', 2, NULL, N'foto19.jpg', 4)
GO
INSERT [dbo].[user] ([user_id], [user_last_name], [user_first_name], [user_middle_name], [user_email], [user_password], [user_gender], [user_date_of_birthday], [user_country_id], [user_phone], [user_direction_id], [user_event_id], [user_photo], [user_role_id]) VALUES (62, N'Кулакова', N'Индира', N'Григорьевна', N'zlemke@hotmail.com', N'}jbZCh', N'женский', CAST(N'1992-01-29' AS Date), 9, N'7(723)258-88-84', 3, NULL, N'foto20.jpg', 4)
GO
SET IDENTITY_INSERT [dbo].[user] OFF
GO
ALTER TABLE [dbo].[activity]  WITH CHECK ADD FOREIGN KEY([activity_user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[event_activity]  WITH CHECK ADD FOREIGN KEY([activity_id])
REFERENCES [dbo].[activity] ([activity_id])
GO
ALTER TABLE [dbo].[event_activity]  WITH CHECK ADD FOREIGN KEY([event_id])
REFERENCES [dbo].[event_business] ([event_id])
GO
ALTER TABLE [dbo].[event_business]  WITH CHECK ADD FOREIGN KEY([event_city_id])
REFERENCES [dbo].[city] ([city_id])
GO
ALTER TABLE [dbo].[event_business]  WITH CHECK ADD FOREIGN KEY([event_user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[jury_activity]  WITH CHECK ADD  CONSTRAINT [FK__jury_acti__activ__6754599E] FOREIGN KEY([activity_id])
REFERENCES [dbo].[activity] ([activity_id])
GO
ALTER TABLE [dbo].[jury_activity] CHECK CONSTRAINT [FK__jury_acti__activ__6754599E]
GO
ALTER TABLE [dbo].[jury_activity]  WITH CHECK ADD  CONSTRAINT [FK__jury_acti__jury___68487DD7] FOREIGN KEY([jury_id])
REFERENCES [dbo].[jury] ([jury_id])
GO
ALTER TABLE [dbo].[jury_activity] CHECK CONSTRAINT [FK__jury_acti__jury___68487DD7]
GO
ALTER TABLE [dbo].[jury_activity]  WITH CHECK ADD  CONSTRAINT [FK__jury_acti__jury___693CA210] FOREIGN KEY([jury_activity_user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[jury_activity] CHECK CONSTRAINT [FK__jury_acti__jury___693CA210]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([user_country_id])
REFERENCES [dbo].[country] ([country_id])
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([user_direction_id])
REFERENCES [dbo].[direction] ([direction_id])
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([user_event_id])
REFERENCES [dbo].[event] ([event_id])
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([user_role_id])
REFERENCES [dbo].[role] ([role_id])
GO
/****** Object:  StoredProcedure [dbo].[GetEvents]    Script Date: 5/6/2024 2:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetEvents]

AS
BEGIN

SELECT	dbo.event_business.event_name AS Мероприятие, dbo.activity.activity_name AS Направление, dbo.event_business.event_date AS Дата
FROM	dbo.activity INNER JOIN
		dbo.event_activity ON dbo.activity.activity_id = dbo.event_activity.activity_id INNER JOIN
		dbo.event_business ON dbo.event_activity.event_id = dbo.event_business.event_id

END
GO
/****** Object:  StoredProcedure [dbo].[GetUser]    Script Date: 5/6/2024 2:22:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[GetUser]

@login INT,
@password NVARCHAR(32)

AS
BEGIN

SELECT *
FROM [user]
WHERE user_id = @login AND user_password = @password

END
GO
