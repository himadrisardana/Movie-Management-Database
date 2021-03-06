USE [master]
GO
IF EXISTS ( SELECT name 
			FROM sys.databases
			WHERE name='movie_management')
	DROP database [movie_management]
GO

CREATE database [movie_management]
GO
ALTER DATABASE [movie_management] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [movie_management] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [movie_management] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [movie_management] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [movie_management] SET ARITHABORT OFF 
GO
ALTER DATABASE [movie_management] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [movie_management] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [movie_management] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [movie_management] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [movie_management] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [movie_management] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [movie_management] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [movie_management] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [movie_management] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [movie_management] SET  ENABLE_BROKER 
GO
ALTER DATABASE [movie_management] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [movie_management] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [movie_management] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [movie_management] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [movie_management] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [movie_management] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [movie_management] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [movie_management] SET RECOVERY FULL 
GO
ALTER DATABASE [movie_management] SET  MULTI_USER 
GO
ALTER DATABASE [movie_management] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [movie_management] SET DB_CHAINING OFF 
GO
ALTER DATABASE [movie_management] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [movie_management] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [movie_management] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'movie_management', N'ON'
GO
ALTER DATABASE [movie_management] SET QUERY_STORE = OFF
GO
USE [movie_management]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [movie_management]
GO
/****** Object:  Table [dbo].[actors]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actors](
	[actor_id] [int] NOT NULL,
	[awards_won] [int] NULL,
 CONSTRAINT [Key13] PRIMARY KEY CLUSTERED 
(
	[actor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[awards]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[awards](
	[award_name] [varchar](20) NOT NULL,
	[nomination _status] [bit] NOT NULL,
	[won_Status] [bit] NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [Key2] PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[classification_to_movies]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[classification_to_movies](
	[classification_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [Key26] PRIMARY KEY CLUSTERED 
(
	[classification_id] ASC,
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[company_production]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company_production](
	[company_name] [varchar](30) NULL,
	[company_id] [smallint] IDENTITY(1,1) NOT NULL,
	[website] [varchar](30) NULL,
	[email-id] [varchar](30) NULL,
 CONSTRAINT [Key17] PRIMARY KEY CLUSTERED 
(
	[company_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[countries]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[countries](
	[country_id] [int] IDENTITY(1,1) NOT NULL,
	[country_name] [varchar](50) NULL,
 CONSTRAINT [Key4] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[countries_to_movies]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[countries_to_movies](
	[movie_id] [int] NOT NULL,
	[country_id] [int] NOT NULL,
 CONSTRAINT [Key8] PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC,
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[directors]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[directors](
	[director_id] [int] NOT NULL,
	[movies_directed] [int] NULL,
 CONSTRAINT [Key14] PRIMARY KEY CLUSTERED 
(
	[director_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[genres]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genres](
	[genre_id] [int] IDENTITY(1,1) NOT NULL,
	[genre_name] [char](15) NULL,
 CONSTRAINT [Key11] PRIMARY KEY CLUSTERED 
(
	[genre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[languages]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[languages](
	[language_id] [int] IDENTITY(1,1) NOT NULL,
	[language_name] varchar(30) NULL,
 CONSTRAINT [Key10] PRIMARY KEY CLUSTERED 
(
	[language_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[languages_to_movies]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[languages_to_movies](
	[language_id] [int] NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [Key27] PRIMARY KEY CLUSTERED 
(
	[language_id] ASC,
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movie_company]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_company](
	[company_id] [smallint] NOT NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [Key22] PRIMARY KEY CLUSTERED 
(
	[company_id] ASC,
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movie_description]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_description](
	[storyline] [varchar](100) NULL,
	[plot_summary] [varchar](300) NULL,
	[plot_synopsys] [varchar](200) NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [Key12] PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movie_link]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie_link](
	[amazon_video] [varchar](300) NULL,
	[on_disc] [varchar](200) NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [Key18] PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movies]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movies](
	[movie_id] [int] IDENTITY(1,1) NOT NULL,
	[movie_name] [varchar](50) NOT NULL,
	[movie_year] [smallint] NOT NULL,
	[release_date] [date] NOT NULL,
	[runtime] [time](7) NOT NULL,
 CONSTRAINT [Key1] PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movies_to_actors]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movies_to_actors](
	[movie_id] [int] NOT NULL,
	[actor_id] [int] NOT NULL,
 CONSTRAINT [Key19] PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC,
	[actor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movies_to_directors]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movies_to_directors](
	[movie_id] [int] NOT NULL,
	[director_id] [int] NOT NULL,
 CONSTRAINT [Key20] PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC,
	[director_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Movies_to_soundmix]    Script Date: 18-04-2017 01:39:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies_to_soundmix](
	[movie_id] [int] NOT NULL,
	[soudmix_id] [int] NOT NULL,
 CONSTRAINT [Key23] PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC,
	[soudmix_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movies_to_writers]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movies_to_writers](
	[movie_id] [int] NOT NULL,
	[writer_id] [int] NOT NULL,
 CONSTRAINT [Key21] PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC,
	[writer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[movie-user]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movie-user](
	[movie_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[mov-user_id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MPAA_classification]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MPAA_classification](
	[classification] [char](5) NULL,
	[classification_id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [Key16] PRIMARY KEY CLUSTERED 
(
	[classification_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[person]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person](
	[person_id] [int] IDENTITY(1,1) NOT NULL,
	[full_name] [varchar](20) NOT NULL,
	[biography] [varchar](200) NULL,
	[date_of_birth] [date] NULL,
	[city_of_birth] [char](20) NULL,
 CONSTRAINT [Key24] PRIMARY KEY CLUSTERED 
(
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ratings]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ratings](
	[imdb_rating] [decimal](3, 1) NOT NULL,
	[metascore] [int] NULL,
	[votes] [bigint] NULL,
	[mov-user_id] [int] NOT NULL,
 CONSTRAINT [Key6] PRIMARY KEY CLUSTERED 
(
	[mov-user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[reviews]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[review_timestamp] [datetime] NOT NULL,
	[review_body] [varchar](100) NOT NULL,
	[mov-user_id] [int] NOT NULL,
 CONSTRAINT [Key5] PRIMARY KEY CLUSTERED 
(
	[mov-user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[soundmix_technologies]    Script Date: 18-04-2017 01:39:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[soundmix_technologies](
	[soundmix_id] [int] IDENTITY(1,1) NOT NULL,
	[soundmix] [varchar](10) NULL,
 CONSTRAINT [Key3] PRIMARY KEY CLUSTERED 
(
	[soundmix_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[soundtracks]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[soundtracks](
	[soundtrack_id] [int] IDENTITY(1,1) NOT NULL,
	[soundtrack_name] [varchar](30) NULL,
	[movie_id] [int] NOT NULL,
 CONSTRAINT [Key9] PRIMARY KEY CLUSTERED 
(
	[soundtrack_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[users]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[email_id] [varchar](320) NOT NULL,
	[gender] [char](1) NULL,
	[password] [varchar](10) NOT NULL,
	[date_of_birth] [date] NULL,
	[zip] [smallint] NULL,
	[country_of_residence] [varchar](50) NULL,
	[full_name] [varchar](50) NULL,
 CONSTRAINT [Key7] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[writers]    Script Date: 18-04-2017 03:33:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[writers](
	[writer_id] [int] NOT NULL,
	[literary_awards_won] [int] NULL,
	[years_in_industry] [int] NULL,
 CONSTRAINT [Key15] PRIMARY KEY CLUSTERED 
(
	[writer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[company_production] ON 

INSERT [dbo].[company_production] ([company_name], [company_id], [website], [email-id]) VALUES (N'ABC Productions', 1, N'www.abcproduction.com', N'abcprod@production.com')
INSERT [dbo].[company_production] ([company_name], [company_id], [website], [email-id]) VALUES (N'Star House', 2, N'www.StarhouseCA.com', N'house@star.com')
INSERT [dbo].[company_production] ([company_name], [company_id], [website], [email-id]) VALUES (N'Hollywood Studios', 3, N'www.StudiosLL.com', N'StudiosLL@hotmail.com')
INSERT [dbo].[company_production] ([company_name], [company_id], [website], [email-id]) VALUES (N'RhodeIsland Cooperations', 4, N'www.FoxStudiosRI.com', N'RICooperations@gmail.com')
INSERT [dbo].[company_production] ([company_name], [company_id], [website], [email-id]) VALUES (N'BBCWorld', 5, N'www.BBCWorld.com', N'World@BBC.com')
SET IDENTITY_INSERT [dbo].[company_production] OFF
SET IDENTITY_INSERT [dbo].[countries] ON 

INSERT [dbo].[countries] ([country_id], [country_name]) VALUES (1, N'United States of America')
INSERT [dbo].[countries] ([country_id], [country_name]) VALUES (2, N'India')
INSERT [dbo].[countries] ([country_id], [country_name]) VALUES (3, N'Germany')
INSERT [dbo].[countries] ([country_id], [country_name]) VALUES (4, N'France')
INSERT [dbo].[countries] ([country_id], [country_name]) VALUES (5, N'England')
INSERT [dbo].[countries] ([country_id], [country_name]) VALUES (6, N'China')
SET IDENTITY_INSERT [dbo].[countries] OFF
SET IDENTITY_INSERT [dbo].[genres] ON 

INSERT [dbo].[genres] ([genre_id], [genre_name]) VALUES (1, N'Romantic')
INSERT [dbo].[genres] ([genre_id], [genre_name]) VALUES (2, N'Drama')
INSERT [dbo].[genres] ([genre_id], [genre_name]) VALUES (3, N'Crime')
INSERT [dbo].[genres] ([genre_id], [genre_name]) VALUES (4, N'Horror')
INSERT [dbo].[genres] ([genre_id], [genre_name]) VALUES (5, N'Mystery')
SET IDENTITY_INSERT [dbo].[genres] OFF
SET IDENTITY_INSERT [dbo].[languages] ON 

INSERT [dbo].[languages] ([language_id], [language_name]) VALUES (1, N'English')
INSERT [dbo].[languages] ([language_id], [language_name]) VALUES (2, N'French')
INSERT [dbo].[languages] ([language_id], [language_name]) VALUES (3, N'German')
INSERT [dbo].[languages] ([language_id], [language_name]) VALUES (4, N'Korean')
INSERT [dbo].[languages] ([language_id], [language_name]) VALUES (5, N'Mandarin')
SET IDENTITY_INSERT [dbo].[languages] OFF
SET IDENTITY_INSERT [dbo].[movies] ON 

INSERT [dbo].[movies] ([movie_id], [movie_name], [movie_year], [release_date], [runtime]) VALUES (1, N' The Shawshank Redemption', 1994, CAST(N'1994-01-11' AS Date), CAST(N'02:01:56' AS Time))
INSERT [dbo].[movies] ([movie_id], [movie_name], [movie_year], [release_date], [runtime]) VALUES (2, N'The Godfather', 1972, CAST(N'1972-03-21' AS Date), CAST(N'02:03:51' AS Time))
INSERT [dbo].[movies] ([movie_id], [movie_name], [movie_year], [release_date], [runtime]) VALUES (3, N'Arabian Nights', 1936, CAST(N'1936-04-22' AS Date), CAST(N'03:02:36' AS Time))
INSERT [dbo].[movies] ([movie_id], [movie_name], [movie_year], [release_date], [runtime]) VALUES (4, N'The Dark Knight', 1974, CAST(N'1974-03-21' AS Date), CAST(N'01:59:06' AS Time))
INSERT [dbo].[movies] ([movie_id], [movie_name], [movie_year], [release_date], [runtime]) VALUES (5, N'The Dark Knight Rises', 1978, CAST(N'1978-02-22' AS Date), CAST(N'01:58:46' AS Time))
SET IDENTITY_INSERT [dbo].[movies] OFF
SET IDENTITY_INSERT [dbo].[MPAA_classification] ON 

INSERT [dbo].[MPAA_classification] ([classification], [classification_id]) VALUES (N'G    ', 1)
INSERT [dbo].[MPAA_classification] ([classification], [classification_id]) VALUES (N'PG   ', 2)
INSERT [dbo].[MPAA_classification] ([classification], [classification_id]) VALUES (N'PG-13', 3)
INSERT [dbo].[MPAA_classification] ([classification], [classification_id]) VALUES (N'R    ', 4)
INSERT [dbo].[MPAA_classification] ([classification], [classification_id]) VALUES (N'NC-17', 5)

SET IDENTITY_INSERT [dbo].[MPAA_classification] OFF
SET IDENTITY_INSERT [dbo].[person] ON 

INSERT [dbo].[person] ([person_id], [full_name], [biography], [date_of_birth], [city_of_birth]) VALUES (1, N'Marlon Brando', N'Marlon Brando is widely considered the greatest movie actor of all time, rivaled only by the more theatrically oriented Laurence Olivier in terms of esteem. ', CAST(N'1924-04-24' AS Date), N'Nebrasaka           ')
INSERT [dbo].[person] ([person_id], [full_name], [biography], [date_of_birth], [city_of_birth]) VALUES (2, N'Al Pacino', N'One of the greatest actors in all of film history, Al Pacino established himself during one of film''s greatest decades, the 1970s', CAST(N'1940-05-06' AS Date), N'Manhattan           ')
INSERT [dbo].[person] ([person_id], [full_name], [biography], [date_of_birth], [city_of_birth]) VALUES (3, N'James Caan', N'A masculine and enigmatic actor whose life and movie career have had more ups and downs than the average rollercoaster ', CAST(N'1940-03-01' AS Date), N'The Bronx           ')
INSERT [dbo].[person] ([person_id], [full_name], [biography], [date_of_birth], [city_of_birth]) VALUES (4, N'Robert Duvall', N'Veteran actor and director Robert Selden Duvall was born on January 5, 1931, in San Diego, CA,', CAST(N'1931-04-23' AS Date), N'San Diego           ')
INSERT [dbo].[person] ([person_id], [full_name], [biography], [date_of_birth], [city_of_birth]) VALUES (5, N'Rudy Bond', N' Bond was raised in Philadelphia. He got his start at the Neighborhood Players.', CAST(N'1912-03-14' AS Date), N'Denver              ')
SET IDENTITY_INSERT [dbo].[person] OFF
SET IDENTITY_INSERT [dbo].[soundmix_technologies] ON 

INSERT [dbo].[soundmix_technologies] ([soundmix_id], [soundmix]) VALUES (1, N'dolby')
INSERT [dbo].[soundmix_technologies] ([soundmix_id], [soundmix]) VALUES (2, N'mono')
INSERT [dbo].[soundmix_technologies] ([soundmix_id], [soundmix]) VALUES (3, N'DTS')
INSERT [dbo].[soundmix_technologies] ([soundmix_id], [soundmix]) VALUES (4, N'DTS-Sterio')
INSERT [dbo].[soundmix_technologies] ([soundmix_id], [soundmix]) VALUES (5, N'dts-sound ')
SET IDENTITY_INSERT [dbo].[soundmix_technologies] OFF
SET IDENTITY_INSERT [dbo].[users] ON 

INSERT [dbo].[users] ([user_id], [email_id], [gender], [password], [date_of_birth], [zip], [country_of_residence], [full_name]) VALUES (1, N'rasu.das@gmail.com', N'F', N'werre', CAST(N'1994-02-12' AS Date), 2120, N'USA', N'Raseswari Das')
INSERT [dbo].[users] ([user_id], [email_id], [gender], [password], [date_of_birth], [zip], [country_of_residence], [full_name]) VALUES (2, N'himiSardana@gmail.com', N'F', N'wereee', CAST(N'1994-03-04' AS Date), 2125, N'USA', N'Himadri Sardana')
INSERT [dbo].[users] ([user_id], [email_id], [gender], [password], [date_of_birth], [zip], [country_of_residence], [full_name]) VALUES (3, N'sweetgirl@gmail.com', N'F', N'princess', CAST(N'1972-03-04' AS Date), 2120, N'USA', N'Riti Goel')
INSERT [dbo].[users] ([user_id], [email_id], [gender], [password], [date_of_birth], [zip], [country_of_residence], [full_name]) VALUES (4, N'prateekbatman@gmail.com', N'M', N'eer', CAST(N'1920-04-05' AS Date), 2150, N'USA', N'Prateek Adhikaree')
INSERT [dbo].[users] ([user_id], [email_id], [gender], [password], [date_of_birth], [zip], [country_of_residence], [full_name]) VALUES (5, N'mayankrockingguy@yahoo.com', N'M', N'yyyywed', CAST(N'1987-06-11' AS Date), 2145, N'USA', N'Mayank Kashyap')
SET IDENTITY_INSERT [dbo].[users] OFF/****** Object:  Index [IX_Relationship2]    Script Date: 18-04-2017 03:33:20 ******/
CREATE NONCLUSTERED INDEX [IX_Relationship2] ON [dbo].[awards]
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relationship13]    Script Date: 18-04-2017 03:33:20 ******/
CREATE NONCLUSTERED INDEX [IX_Relationship13] ON [dbo].[classification_to_movies]
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relationship14]    Script Date: 18-04-2017 03:33:20 ******/
CREATE NONCLUSTERED INDEX [IX_Relationship14] ON [dbo].[languages_to_movies]
(
	[language_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relationship15]    Script Date: 18-04-2017 03:33:20 ******/
CREATE NONCLUSTERED INDEX [IX_Relationship15] ON [dbo].[languages_to_movies]
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relationship8]    Script Date: 18-04-2017 03:33:20 ******/
CREATE NONCLUSTERED INDEX [IX_Relationship8] ON [dbo].[movie_description]
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relationship6]    Script Date: 18-04-2017 03:33:20 ******/
CREATE NONCLUSTERED INDEX [IX_Relationship6] ON [dbo].[movie_link]
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [Key25]    Script Date: 18-04-2017 03:33:20 ******/
ALTER TABLE [dbo].[movie-user] ADD  CONSTRAINT [Key25] PRIMARY KEY NONCLUSTERED 
(
	[mov-user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [mov-user_id]    Script Date: 18-04-2017 03:33:20 ******/
ALTER TABLE [dbo].[movie-user] ADD  CONSTRAINT [mov-user_id] UNIQUE NONCLUSTERED 
(
	[mov-user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relationship8]    Script Date: 18-04-2017 03:33:20 ******/
CREATE NONCLUSTERED INDEX [IX_Relationship8] ON [dbo].[movie-user]
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relationship9]    Script Date: 18-04-2017 03:33:20 ******/
CREATE NONCLUSTERED INDEX [IX_Relationship9] ON [dbo].[movie-user]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Relationship12]    Script Date: 18-04-2017 03:33:20 ******/
CREATE NONCLUSTERED INDEX [IX_Relationship12] ON [dbo].[soundtracks]
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[actors]  WITH CHECK ADD  CONSTRAINT [actor<---person] FOREIGN KEY([actor_id])
REFERENCES [dbo].[person] ([person_id])
GO
ALTER TABLE [dbo].[actors] CHECK CONSTRAINT [actor<---person]
GO
ALTER TABLE [dbo].[awards]  WITH CHECK ADD  CONSTRAINT [are appreciated by] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([movie_id])
GO
ALTER TABLE [dbo].[awards] CHECK CONSTRAINT [are appreciated by]
GO
ALTER TABLE [dbo].[classification_to_movies]  WITH CHECK ADD  CONSTRAINT [are classified by] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([movie_id])
GO
ALTER TABLE [dbo].[classification_to_movies] CHECK CONSTRAINT [are classified by]
GO
ALTER TABLE [dbo].[classification_to_movies]  WITH CHECK ADD  CONSTRAINT [classified] FOREIGN KEY([classification_id])
REFERENCES [dbo].[MPAA_classification] ([classification_id])
GO
ALTER TABLE [dbo].[classification_to_movies] CHECK CONSTRAINT [classified]
GO
ALTER TABLE [dbo].[countries_to_movies]  WITH CHECK ADD  CONSTRAINT [origin] FOREIGN KEY([country_id])
REFERENCES [dbo].[countries] ([country_id])
GO
ALTER TABLE [dbo].[countries_to_movies] CHECK CONSTRAINT [origin]
GO
ALTER TABLE [dbo].[countries_to_movies]  WITH CHECK ADD  CONSTRAINT [origin in] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([movie_id])
GO
ALTER TABLE [dbo].[countries_to_movies] CHECK CONSTRAINT [origin in]
GO
ALTER TABLE [dbo].[directors]  WITH CHECK ADD  CONSTRAINT [director <-- person] FOREIGN KEY([director_id])
REFERENCES [dbo].[person] ([person_id])
GO
ALTER TABLE [dbo].[directors] CHECK CONSTRAINT [director <-- person]
GO
ALTER TABLE [dbo].[languages_to_movies]  WITH CHECK ADD  CONSTRAINT [are in] FOREIGN KEY([language_id])
REFERENCES [dbo].[languages] ([language_id])
GO
ALTER TABLE [dbo].[languages_to_movies] CHECK CONSTRAINT [are in]
GO
ALTER TABLE [dbo].[languages_to_movies]  WITH CHECK ADD  CONSTRAINT [are in different languages] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([movie_id])
GO
ALTER TABLE [dbo].[languages_to_movies] CHECK CONSTRAINT [are in different languages]
GO
ALTER TABLE [dbo].[movie_company]  WITH CHECK ADD  CONSTRAINT [are produced by] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([movie_id])
GO
ALTER TABLE [dbo].[movie_company] CHECK CONSTRAINT [are produced by]
GO
ALTER TABLE [dbo].[movie_company]  WITH CHECK ADD  CONSTRAINT [produced by] FOREIGN KEY([company_id])
REFERENCES [dbo].[company_production] ([company_id])
GO
ALTER TABLE [dbo].[movie_company] CHECK CONSTRAINT [produced by]
GO
ALTER TABLE [dbo].[movie_description]  WITH CHECK ADD  CONSTRAINT [are described by] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([movie_id])
GO
ALTER TABLE [dbo].[movie_description] CHECK CONSTRAINT [are described by]
GO
ALTER TABLE [dbo].[movie_link]  WITH CHECK ADD  CONSTRAINT [urls] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([movie_id])
GO
ALTER TABLE [dbo].[movie_link] CHECK CONSTRAINT [urls]
GO
ALTER TABLE [dbo].[movies_to_actors]  WITH CHECK ADD  CONSTRAINT [acted by] FOREIGN KEY([actor_id])
REFERENCES [dbo].[actors] ([actor_id])
GO
ALTER TABLE [dbo].[movies_to_actors] CHECK CONSTRAINT [acted by]
GO
ALTER TABLE [dbo].[movies_to_actors]  WITH CHECK ADD  CONSTRAINT [are acted by] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([movie_id])
GO
ALTER TABLE [dbo].[movies_to_actors] CHECK CONSTRAINT [are acted by]
GO
ALTER TABLE [dbo].[movies_to_directors]  WITH CHECK ADD  CONSTRAINT [are directed by] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([movie_id])
GO
ALTER TABLE [dbo].[movies_to_directors] CHECK CONSTRAINT [are directed by]
GO
ALTER TABLE [dbo].[movies_to_directors]  WITH CHECK ADD  CONSTRAINT [directed by] FOREIGN KEY([director_id])
REFERENCES [dbo].[directors] ([director_id])
GO
ALTER TABLE [dbo].[movies_to_directors] CHECK CONSTRAINT [directed by]
GO
ALTER TABLE [dbo].[movies_to_writers]  WITH CHECK ADD  CONSTRAINT [are written by] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([movie_id])
GO
ALTER TABLE [dbo].[movies_to_writers] CHECK CONSTRAINT [are written by]
GO
ALTER TABLE [dbo].[movies_to_writers]  WITH CHECK ADD  CONSTRAINT [written by] FOREIGN KEY([writer_id])
REFERENCES [dbo].[writers] ([writer_id])
GO
ALTER TABLE [dbo].[movies_to_writers] CHECK CONSTRAINT [written by]
GO
ALTER TABLE [dbo].[movie-user]  WITH CHECK ADD  CONSTRAINT [review movies] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([user_id])
GO
ALTER TABLE [dbo].[movie-user] CHECK CONSTRAINT [review movies]
GO
ALTER TABLE [dbo].[movie-user]  WITH CHECK ADD  CONSTRAINT [reviewed by] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([movie_id])
GO
ALTER TABLE [dbo].[movie-user] CHECK CONSTRAINT [reviewed by]
GO
ALTER TABLE [dbo].[ratings]  WITH CHECK ADD  CONSTRAINT [gives ratings] FOREIGN KEY([mov-user_id])
REFERENCES [dbo].[movie-user] ([mov-user_id])
GO
ALTER TABLE [dbo].[ratings] CHECK CONSTRAINT [gives ratings]
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [gives reviews] FOREIGN KEY([mov-user_id])
REFERENCES [dbo].[movie-user] ([mov-user_id])
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [gives reviews]
GO
ALTER TABLE [dbo].[soundtracks]  WITH CHECK ADD  CONSTRAINT [have songs] FOREIGN KEY([movie_id])
REFERENCES [dbo].[movies] ([movie_id])
GO
ALTER TABLE [dbo].[soundtracks] CHECK CONSTRAINT [have songs]
GO
ALTER TABLE [dbo].[writers]  WITH CHECK ADD  CONSTRAINT [writer<----person] FOREIGN KEY([writer_id])
REFERENCES [dbo].[person] ([person_id])
GO
ALTER TABLE [dbo].[writers] CHECK CONSTRAINT [writer<----person]
GO
USE [master]
GO
ALTER DATABASE [movie_management] SET  READ_WRITE 
GO
