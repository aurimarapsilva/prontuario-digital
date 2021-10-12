USE [ProntuarioDigital]
GO

/****** Object:  Table [dbo].[Authors]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[Authors](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[Name] [varchar](50) NOT NULL,
		[Email] [varchar](50) NOT NULL,
		[IsDeleted] [bit] NOT NULL,
	 CONSTRAINT [Authors_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[AuthorXArticle]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[AuthorXArticle](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[AuthorId] [int] NOT NULL,
		[ArticleId] [int] NOT NULL,
		[IsDeleted] [bit] NOT NULL
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[AuthorXBook]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[AuthorXBook](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[AuthorId] [int] NOT NULL,
		[BookId] [int] NOT NULL,
		[IsDeleted] [bit] NOT NULL,
	 CONSTRAINT [AuthorXBook_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[Books]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[Books](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[GenericDocumentId] [int] NOT NULL,
		[BookName] [varchar](50) NOT NULL,
		[EditorialId] [int] NOT NULL,
		[PublicationDate] [date] NOT NULL,
		[PublicationURL] [varchar](200) NOT NULL,
		[IsDeleted ] [bit] NOT NULL,
	 CONSTRAINT [Books_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[CertifyingBody]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[CertifyingBody](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[Name] [varchar](50) NOT NULL,
		[IsDeleted] [bit] NOT NULL,
		[IsUserDefined] [bit] NOT NULL,
	 CONSTRAINT [CertifyingBody_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[CollegeDegreeDocuments]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[CollegeDegreeDocuments](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[GenericDocumentId] [int] NOT NULL,
		[CollegeDegreeTypeId] [int] NOT NULL,
		[Year] [int] NOT NULL,
		[InstitutionId] [int] NOT NULL,
		[CountryId] [int] NOT NULL,
		[IsDeleted] [bit] NOT NULL,
	 CONSTRAINT [CollegeDegreeDocuments_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[CollegeDegreeTypes]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[CollegeDegreeTypes](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[Description] [varchar](250) NOT NULL,
		[IsDeleted] [bit] NOT NULL,
		[IsUserDefined] [bit] NOT NULL,
	 CONSTRAINT [CollegeDegreeTypes_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[Countries]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[Countries](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[Name] [varchar](50) NOT NULL,
		[IsDeleted] [bit] NOT NULL,
	 CONSTRAINT [Countries_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[Editorial]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[Editorial](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[Name] [varchar](50) NOT NULL,
		[URL] [varchar](200) NOT NULL,
		[IsDeleted] [bit] NOT NULL,
		[CountryId] [int] NOT NULL,
	 CONSTRAINT [Editorial_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[Files]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[Files](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[Consecutive] [int] NOT NULL,
		[Name] [varchar](50) NOT NULL,
		[URL] [varchar](200) NOT NULL,
		[IsDeleted] [bit] NOT NULL,
		[GenericDocumentId] [int] NOT NULL,
	 CONSTRAINT [Files_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[GenericDocument]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[GenericDocument](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[Consecutive] [int] NOT NULL,
		[RegulationId] [int] NOT NULL,
		[TipsId] [int] NOT NULL,
		[IsDeleted] [bit] NOT NULL,
		[Created] [datetime] NOT NULL,
		[Modified] [datetime] NOT NULL,
	 CONSTRAINT [GenericDocument_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[Institutions]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[Institutions](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[Name] [varchar](50) NULL,
		[IsDeleted] [bit] NULL,
		[IsUserDefined] [bit] NULL,
	 CONSTRAINT [Institutions_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[LanguageKnowledgeDocuments]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[LanguageKnowledgeDocuments](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[GenericDocumentId] [int] NOT NULL,
		[LanguageId] [int] NOT NULL,
		[CertifyingBoydId] [int] NOT NULL,
		[Year] [int] NOT NULL,
		[IsDeleted] [bit] NOT NULL,
	 CONSTRAINT [LanguageKnowledgeDocuments_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[LanguageKnowledgeLevels]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[LanguageKnowledgeLevels](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[Name] [varchar](50) NOT NULL,
		[IsDeleted] [bit] NOT NULL,
		[IsUserDefined] [bit] NOT NULL,
		[LanguageId] [int] NOT NULL,
		[Score] [varchar](15) NOT NULL,
	 CONSTRAINT [LanguageKnowledgeLevels_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[Languages]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[Languages](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[Name] [varchar](50) NOT NULL,
		[IsDeleted] [bit] NOT NULL,
		[IsUserDefined] [bit] NOT NULL,
	 CONSTRAINT [Languages_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[Magazines]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[Magazines](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[Name] [varchar](50) NOT NULL,
		[URL] [varchar](200) NOT NULL,
		[IsDeleted] [bit] NOT NULL,
	 CONSTRAINT [Magazines_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[MagazinesArticles]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[MagazinesArticles](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[GenericDocumentId] [int] NOT NULL,
		[ArticleName] [varchar](50) NOT NULL,
		[MagazineId] [int] NOT NULL,
		[PublicationDate] [date] NOT NULL,
		[PublicationUrl] [varchar](200) NOT NULL,
		[IsDeleted] [bit] NOT NULL,
	 CONSTRAINT [MagazinesArticles_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[Presentations]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[Presentations](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[GenericDocumentId] [int] NOT NULL,
		[EventDate] [date] NOT NULL,
		[Place] [varchar](50) NOT NULL,
		[Name] [varchar](50) NOT NULL,
		[Event] [varchar](50) NOT NULL,
		[IsDeleted] [bit] NOT NULL,
	 CONSTRAINT [PK_Presentations] PRIMARY KEY CLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[Regulations]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[Regulations](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[Consecutive] [int] NOT NULL,
		[Name] [varchar](50) NOT NULL,
		[Content] [varchar](250) NOT NULL,
		[IsDeleted] [bit] NOT NULL,
		[Created] [datetime] NOT NULL,
		[Modified] [datetime] NOT NULL,
	 CONSTRAINT [Regulations_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[ResearchProject]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[ResearchProject](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[GenericDocumentId] [int] NOT NULL,
		[ProjectCode] [int] NOT NULL,
		[ProjectName] [varchar](50) NOT NULL,
		[ProjectStartYear] [int] NOT NULL,
		[ProjectEndYear] [int] NOT NULL,
		[IsValited] [bit] NOT NULL,
		[IsDeleted] [bit] NOT NULL,
	 CONSTRAINT [ResearchProject_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[Tips]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[Tips](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[Consecutive] [int] NOT NULL,
		[Name] [varchar](50) NOT NULL,
		[Content] [varchar](250) NOT NULL,
		[IsDeleted] [bit] NOT NULL,
		[Created] [datetime] NOT NULL,
		[Modified] [datetime] NOT NULL,
	 CONSTRAINT [Tips_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[Training]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[Training](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[GenericDocumentId] [int] NOT NULL,
		[Name] [varchar](50) NOT NULL,
		[TrainingStarDate] [date] NOT NULL,
		[TrainingEndDate] [date] NOT NULL,
		[TrainingHours] [int] NOT NULL,
		[TrainingEntityId] [int] NOT NULL,
		[isDeleted] [bit] NOT NULL,
	 CONSTRAINT [PK_Training] PRIMARY KEY CLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Object:  Table [dbo].[TrainingEntities]    Script Date: 09/10/2021 17:00:48 ******/
	SET ANSI_NULLS ON
	GO
	SET QUOTED_IDENTIFIER ON
	GO
	CREATE TABLE [dbo].[TrainingEntities](
		[Id] [int] IDENTITY(1,1) NOT NULL,
		[Name] [varchar](50) NOT NULL,
		[IsDeleted] [bit] NOT NULL,
		[IsUserDefined] [bit] NOT NULL,
	 CONSTRAINT [TrainingEntities_pk] PRIMARY KEY NONCLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
	) ON [PRIMARY]
	GO


/****** Constraints & References    Script Date: 09/10/2021 17:00:48 ******/
	ALTER TABLE [dbo].[AuthorXArticle]  WITH CHECK ADD  CONSTRAINT [AuthorXArticle_Authors_Id_fk] FOREIGN KEY([AuthorId])
	REFERENCES [dbo].[Authors] ([Id])
	GO
	ALTER TABLE [dbo].[AuthorXArticle] CHECK CONSTRAINT [AuthorXArticle_Authors_Id_fk]
	GO
	ALTER TABLE [dbo].[AuthorXArticle]  WITH CHECK ADD  CONSTRAINT [AuthorXArticle_MagazinesArticles_Id_fk] FOREIGN KEY([ArticleId])
	REFERENCES [dbo].[MagazinesArticles] ([Id])
	GO
	ALTER TABLE [dbo].[AuthorXArticle] CHECK CONSTRAINT [AuthorXArticle_MagazinesArticles_Id_fk]
	GO
	ALTER TABLE [dbo].[AuthorXBook]  WITH CHECK ADD  CONSTRAINT [AuthorXBook_Authors_Id_fk] FOREIGN KEY([AuthorId])
	REFERENCES [dbo].[Authors] ([Id])
	GO
	ALTER TABLE [dbo].[AuthorXBook] CHECK CONSTRAINT [AuthorXBook_Authors_Id_fk]
	GO
	ALTER TABLE [dbo].[AuthorXBook]  WITH CHECK ADD  CONSTRAINT [AuthorXBook_Books_Id_fk] FOREIGN KEY([BookId])
	REFERENCES [dbo].[Books] ([Id])
	GO
	ALTER TABLE [dbo].[AuthorXBook] CHECK CONSTRAINT [AuthorXBook_Books_Id_fk]
	GO
	ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [Books_Editorial_Id_fk] FOREIGN KEY([EditorialId])
	REFERENCES [dbo].[Editorial] ([Id])
	GO
	ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [Books_Editorial_Id_fk]
	GO
	ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [Books_GenericDocument_Id_fk] FOREIGN KEY([GenericDocumentId])
	REFERENCES [dbo].[GenericDocument] ([Id])
	GO
	ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [Books_GenericDocument_Id_fk]
	GO
	ALTER TABLE [dbo].[CollegeDegreeDocuments]  WITH CHECK ADD  CONSTRAINT [CollegeDegreeDocuments_CollegeDegreeTypes_Id_fk] FOREIGN KEY([CollegeDegreeTypeId])
	REFERENCES [dbo].[CollegeDegreeTypes] ([Id])
	GO
	ALTER TABLE [dbo].[CollegeDegreeDocuments] CHECK CONSTRAINT [CollegeDegreeDocuments_CollegeDegreeTypes_Id_fk]
	GO
	ALTER TABLE [dbo].[CollegeDegreeDocuments]  WITH CHECK ADD  CONSTRAINT [CollegeDegreeDocuments_Countries_Id_fk] FOREIGN KEY([CountryId])
	REFERENCES [dbo].[Countries] ([Id])
	GO
	ALTER TABLE [dbo].[CollegeDegreeDocuments] CHECK CONSTRAINT [CollegeDegreeDocuments_Countries_Id_fk]
	GO
	ALTER TABLE [dbo].[CollegeDegreeDocuments]  WITH CHECK ADD  CONSTRAINT [CollegeDegreeDocuments_GenericDocument_Id_fk] FOREIGN KEY([GenericDocumentId])
	REFERENCES [dbo].[GenericDocument] ([Id])
	GO
	ALTER TABLE [dbo].[CollegeDegreeDocuments] CHECK CONSTRAINT [CollegeDegreeDocuments_GenericDocument_Id_fk]
	GO
	ALTER TABLE [dbo].[CollegeDegreeDocuments]  WITH CHECK ADD  CONSTRAINT [CollegeDegreeDocuments_Institutions_Id_fk] FOREIGN KEY([InstitutionId])
	REFERENCES [dbo].[Institutions] ([Id])
	GO
	ALTER TABLE [dbo].[CollegeDegreeDocuments] CHECK CONSTRAINT [CollegeDegreeDocuments_Institutions_Id_fk]
	GO
	ALTER TABLE [dbo].[Editorial]  WITH CHECK ADD  CONSTRAINT [Country___fk] FOREIGN KEY([CountryId])
	REFERENCES [dbo].[Countries] ([Id])
	GO
	ALTER TABLE [dbo].[Editorial] CHECK CONSTRAINT [Country___fk]
	GO
	ALTER TABLE [dbo].[Files]  WITH CHECK ADD  CONSTRAINT [Files_GenericDocument_Id_fk] FOREIGN KEY([GenericDocumentId])
	REFERENCES [dbo].[GenericDocument] ([Id])
	GO
	ALTER TABLE [dbo].[Files] CHECK CONSTRAINT [Files_GenericDocument_Id_fk]
	GO
	ALTER TABLE [dbo].[GenericDocument]  WITH CHECK ADD  CONSTRAINT [FK_GenericDocument_Regulations] FOREIGN KEY([RegulationId])
	REFERENCES [dbo].[Regulations] ([Id])
	GO
	ALTER TABLE [dbo].[GenericDocument] CHECK CONSTRAINT [FK_GenericDocument_Regulations]
	GO
	ALTER TABLE [dbo].[GenericDocument]  WITH CHECK ADD  CONSTRAINT [FK_GenericDocument_Tips] FOREIGN KEY([TipsId])
	REFERENCES [dbo].[Tips] ([Id])
	GO
	ALTER TABLE [dbo].[GenericDocument] CHECK CONSTRAINT [FK_GenericDocument_Tips]
	GO
	ALTER TABLE [dbo].[LanguageKnowledgeDocuments]  WITH CHECK ADD  CONSTRAINT [LanguageKnowledgeDocuments_CertifyingBody_Id_fk] FOREIGN KEY([CertifyingBoydId])
	REFERENCES [dbo].[CertifyingBody] ([Id])
	GO
	ALTER TABLE [dbo].[LanguageKnowledgeDocuments] CHECK CONSTRAINT [LanguageKnowledgeDocuments_CertifyingBody_Id_fk]
	GO
	ALTER TABLE [dbo].[LanguageKnowledgeDocuments]  WITH CHECK ADD  CONSTRAINT [LanguageKnowledgeDocuments_GenericDocument_Id_fk] FOREIGN KEY([GenericDocumentId])
	REFERENCES [dbo].[GenericDocument] ([Id])
	GO
	ALTER TABLE [dbo].[LanguageKnowledgeDocuments] CHECK CONSTRAINT [LanguageKnowledgeDocuments_GenericDocument_Id_fk]
	GO
	ALTER TABLE [dbo].[LanguageKnowledgeDocuments]  WITH CHECK ADD  CONSTRAINT [LanguageKnowledgeDocuments_Languages_Id_fk] FOREIGN KEY([LanguageId])
	REFERENCES [dbo].[Languages] ([Id])
	GO
	ALTER TABLE [dbo].[LanguageKnowledgeDocuments] CHECK CONSTRAINT [LanguageKnowledgeDocuments_Languages_Id_fk]
	GO
	ALTER TABLE [dbo].[LanguageKnowledgeLevels]  WITH CHECK ADD  CONSTRAINT [FK_LanguageKnowledgeLevels_Languages] FOREIGN KEY([LanguageId])
	REFERENCES [dbo].[Languages] ([Id])
	GO
	ALTER TABLE [dbo].[LanguageKnowledgeLevels] CHECK CONSTRAINT [FK_LanguageKnowledgeLevels_Languages]
	GO
	ALTER TABLE [dbo].[MagazinesArticles]  WITH CHECK ADD  CONSTRAINT [MagazinesArticles_GenericDocument_Id_fk] FOREIGN KEY([GenericDocumentId])
	REFERENCES [dbo].[GenericDocument] ([Id])
	GO
	ALTER TABLE [dbo].[MagazinesArticles] CHECK CONSTRAINT [MagazinesArticles_GenericDocument_Id_fk]
	GO
	ALTER TABLE [dbo].[MagazinesArticles]  WITH CHECK ADD  CONSTRAINT [MagazinesArticles_Magazines_Id_fk] FOREIGN KEY([MagazineId])
	REFERENCES [dbo].[Magazines] ([Id])
	GO
	ALTER TABLE [dbo].[MagazinesArticles] CHECK CONSTRAINT [MagazinesArticles_Magazines_Id_fk]
	GO
	ALTER TABLE [dbo].[Presentations]  WITH CHECK ADD  CONSTRAINT [Presentations_GenericDocument_Id_fk] FOREIGN KEY([GenericDocumentId])
	REFERENCES [dbo].[GenericDocument] ([Id])
	GO
	ALTER TABLE [dbo].[Presentations] CHECK CONSTRAINT [Presentations_GenericDocument_Id_fk]
	GO
	ALTER TABLE [dbo].[ResearchProject]  WITH CHECK ADD  CONSTRAINT [ResearchProject_GenericDocument_Id_fk] FOREIGN KEY([GenericDocumentId])
	REFERENCES [dbo].[GenericDocument] ([Id])
	GO
	ALTER TABLE [dbo].[ResearchProject] CHECK CONSTRAINT [ResearchProject_GenericDocument_Id_fk]
	GO
	ALTER TABLE [dbo].[Training]  WITH CHECK ADD  CONSTRAINT [Training_GenericDocument_Id_fk] FOREIGN KEY([GenericDocumentId])
	REFERENCES [dbo].[GenericDocument] ([Id])
	GO
	ALTER TABLE [dbo].[Training] CHECK CONSTRAINT [Training_GenericDocument_Id_fk]
	GO
	ALTER TABLE [dbo].[Training]  WITH CHECK ADD  CONSTRAINT [Training_TrainingEntities_Id_fk] FOREIGN KEY([TrainingEntityId])
	REFERENCES [dbo].[TrainingEntities] ([Id])
	GO
	ALTER TABLE [dbo].[Training] CHECK CONSTRAINT [Training_TrainingEntities_Id_fk]
	GO
