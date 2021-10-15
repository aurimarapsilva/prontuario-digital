USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_CertifyingBodySelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_CertifyingBodySelect]
END
GO
CREATE PROC [dbo].[usp_CertifyingBodySelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [Name], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[CertifyingBody]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_CertifyingBodyInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_CertifyingBodyInsert]
END
GO
CREATE PROC [dbo].[usp_CertifyingBodyInsert]
    @Name varchar(50),
    @IsUserDefined bit
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[CertifyingBody] ([Name], [IsDeleted], [IsUserDefined])
	SELECT @Name, 0, @IsUserDefined

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[CertifyingBody]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_CertifyingBodyUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_CertifyingBodyUpdate]
END
GO
CREATE PROC [dbo].[usp_CertifyingBodyUpdate]
    @Id int,
    @Name varchar(50),
    @IsUserDefined bit
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[CertifyingBody]
	SET    [Name] = @Name, [IsDeleted] = 0, [IsUserDefined] = @IsUserDefined
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[CertifyingBody]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_CertifyingBodyDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_CertifyingBodyDelete]
END
GO
CREATE PROC [dbo].[usp_CertifyingBodyDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[CertifyingBody]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_CollegeDegreeDocumentsSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_CollegeDegreeDocumentsSelect]
END
GO
CREATE PROC [dbo].[usp_CollegeDegreeDocumentsSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [GenericDocumentId], [CollegeDegreeTypeId], [Year], [InstitutionId], [CountryId], [IsDeleted]
	FROM   [dbo].[CollegeDegreeDocuments]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_CollegeDegreeDocumentsInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_CollegeDegreeDocumentsInsert]
END
GO
CREATE PROC [dbo].[usp_CollegeDegreeDocumentsInsert]
    @GenericDocumentId int,
    @CollegeDegreeTypeId int,
    @Year int,
    @InstitutionId int,
    @CountryId int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[CollegeDegreeDocuments] ([GenericDocumentId], [CollegeDegreeTypeId], [Year], [InstitutionId], [CountryId], [IsDeleted])
	SELECT @GenericDocumentId, @CollegeDegreeTypeId, @Year, @InstitutionId, @CountryId, 0

	-- Begin Return Select <- do not remove
	SELECT [Id], [GenericDocumentId], [CollegeDegreeTypeId], [Year], [InstitutionId], [CountryId], [IsDeleted]
	FROM   [dbo].[CollegeDegreeDocuments]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_CollegeDegreeDocumentsUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_CollegeDegreeDocumentsUpdate]
END
GO
CREATE PROC [dbo].[usp_CollegeDegreeDocumentsUpdate]
    @Id int,
    @GenericDocumentId int,
    @CollegeDegreeTypeId int,
    @Year int,
    @InstitutionId int,
    @CountryId int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[CollegeDegreeDocuments]
	SET    [GenericDocumentId] = @GenericDocumentId, [CollegeDegreeTypeId] = @CollegeDegreeTypeId, [Year] = @Year, [InstitutionId] = @InstitutionId, [CountryId] = @CountryId, [IsDeleted] = 0
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [GenericDocumentId], [CollegeDegreeTypeId], [Year], [InstitutionId], [CountryId], [IsDeleted]
	FROM   [dbo].[CollegeDegreeDocuments]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_CollegeDegreeDocumentsDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_CollegeDegreeDocumentsDelete]
END
GO
CREATE PROC [dbo].[usp_CollegeDegreeDocumentsDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[CollegeDegreeDocuments]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_CollegeDegreeTypesSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_CollegeDegreeTypesSelect]
END
GO
CREATE PROC [dbo].[usp_CollegeDegreeTypesSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [Description], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[CollegeDegreeTypes]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_CollegeDegreeTypesInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_CollegeDegreeTypesInsert]
END
GO
CREATE PROC [dbo].[usp_CollegeDegreeTypesInsert]
    @Description varchar(250),
    @IsUserDefined bit
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[CollegeDegreeTypes] ([Description], [IsDeleted], [IsUserDefined])
	SELECT @Description, 0, @IsUserDefined

	-- Begin Return Select <- do not remove
	SELECT [Id], [Description], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[CollegeDegreeTypes]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_CollegeDegreeTypesUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_CollegeDegreeTypesUpdate]
END
GO
CREATE PROC [dbo].[usp_CollegeDegreeTypesUpdate]
    @Id int,
    @Description varchar(250),
    @IsUserDefined bit
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[CollegeDegreeTypes]
	SET    [Description] = @Description, [IsDeleted] = 0, [IsUserDefined] = @IsUserDefined
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [Description], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[CollegeDegreeTypes]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_CollegeDegreeTypesDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_CollegeDegreeTypesDelete]
END
GO
CREATE PROC [dbo].[usp_CollegeDegreeTypesDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[CollegeDegreeTypes]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_CountriesSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_CountriesSelect]
END
GO
CREATE PROC [dbo].[usp_CountriesSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [Name], [IsDeleted]
	FROM   [dbo].[Countries]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_CountriesInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_CountriesInsert]
END
GO
CREATE PROC [dbo].[usp_CountriesInsert]
    @Name varchar(50)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[Countries] ([Name], [IsDeleted])
	SELECT @Name, 0

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [IsDeleted]
	FROM   [dbo].[Countries]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_CountriesUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_CountriesUpdate]
END
GO
CREATE PROC [dbo].[usp_CountriesUpdate]
    @Id int,
    @Name varchar(50)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Countries]
	SET    [Name] = @Name, [IsDeleted] = 0
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [IsDeleted]
	FROM   [dbo].[Countries]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_CountriesDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_CountriesDelete]
END
GO
CREATE PROC [dbo].[usp_CountriesDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Countries]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_EditorialSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_EditorialSelect]
END
GO
CREATE PROC [dbo].[usp_EditorialSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [Name], [URL], [IsDeleted], [CountryId]
	FROM   [dbo].[Editorial]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_EditorialInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_EditorialInsert]
END
GO
CREATE PROC [dbo].[usp_EditorialInsert]
    @Name varchar(50),
    @URL varchar(200),
    @CountryId int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[Editorial] ([Name], [URL], [IsDeleted], [CountryId])
	SELECT @Name, @URL, 0, @CountryId

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [URL], [IsDeleted], [CountryId]
	FROM   [dbo].[Editorial]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_EditorialUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_EditorialUpdate]
END
GO
CREATE PROC [dbo].[usp_EditorialUpdate]
    @Id int,
    @Name varchar(50),
    @URL varchar(200),
    @CountryId int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Editorial]
	SET    [Name] = @Name, [URL] = @URL, [IsDeleted] = 0, [CountryId] = @CountryId
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [URL], [IsDeleted], [CountryId]
	FROM   [dbo].[Editorial]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_EditorialDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_EditorialDelete]
END
GO
CREATE PROC [dbo].[usp_EditorialDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Editorial]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_FilesSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_FilesSelect]
END
GO
CREATE PROC [dbo].[usp_FilesSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [Name], [URL], [IsDeleted], [GenericDocumentId]
	FROM   [dbo].[Files]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_FilesInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_FilesInsert]
END
GO
CREATE PROC [dbo].[usp_FilesInsert]
    @Name varchar(50),
    @URL varchar(200),
    @GenericDocumentId int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[Files] ([Name], [URL], [IsDeleted], [GenericDocumentId])
	SELECT @Name, @URL, 0, @GenericDocumentId

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [URL], [IsDeleted], [GenericDocumentId]
	FROM   [dbo].[Files]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_FilesUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_FilesUpdate]
END
GO
CREATE PROC [dbo].[usp_FilesUpdate]
    @Id int,
    @Name varchar(50),
    @URL varchar(200),
    @GenericDocumentId int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Files]
	SET    [Name] = @Name, [URL] = @URL, [IsDeleted] = 0, [GenericDocumentId] = @GenericDocumentId
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [URL], [IsDeleted], [GenericDocumentId]
	FROM   [dbo].[Files]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_FilesDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_FilesDelete]
END
GO
CREATE PROC [dbo].[usp_FilesDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Files]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_GenericDocumentSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_GenericDocumentSelect]
END
GO
CREATE PROC [dbo].[usp_GenericDocumentSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [RegulationId], [TipsId], [IsDeleted], [Timestamp]
	FROM   [dbo].[GenericDocument]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_GenericDocumentInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_GenericDocumentInsert]
END
GO
CREATE PROC [dbo].[usp_GenericDocumentInsert]
    @RegulationId int,
    @TipsId int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[GenericDocument] ([RegulationId], [TipsId], [IsDeleted])
	SELECT @RegulationId, @TipsId, 0

	-- Begin Return Select <- do not remove
	SELECT [Id], [RegulationId], [TipsId], [IsDeleted], [Timestamp]
	FROM   [dbo].[GenericDocument]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_GenericDocumentUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_GenericDocumentUpdate]
END
GO
CREATE PROC [dbo].[usp_GenericDocumentUpdate]
    @Id int,
    @RegulationId int,
    @TipsId int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[GenericDocument]
	SET    [RegulationId] = @RegulationId, [TipsId] = @TipsId, [IsDeleted] = 0
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [RegulationId], [TipsId], [IsDeleted], [Timestamp]
	FROM   [dbo].[GenericDocument]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_GenericDocumentDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_GenericDocumentDelete]
END
GO
CREATE PROC [dbo].[usp_GenericDocumentDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[GenericDocument]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_InstitutionsSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_InstitutionsSelect]
END
GO
CREATE PROC [dbo].[usp_InstitutionsSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [Name], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[Institutions]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_InstitutionsInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_InstitutionsInsert]
END
GO
CREATE PROC [dbo].[usp_InstitutionsInsert]
    @Name varchar(50) = NULL,
    @IsUserDefined bit = NULL
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[Institutions] ([Name], [IsDeleted], [IsUserDefined])
	SELECT @Name, 0, @IsUserDefined

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[Institutions]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_InstitutionsUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_InstitutionsUpdate]
END
GO
CREATE PROC [dbo].[usp_InstitutionsUpdate]
    @Id int,
    @Name varchar(50) = NULL,
    @IsUserDefined bit = NULL
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Institutions]
	SET    [Name] = @Name, [IsDeleted] = 0, [IsUserDefined] = @IsUserDefined
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[Institutions]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_InstitutionsDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_InstitutionsDelete]
END
GO
CREATE PROC [dbo].[usp_InstitutionsDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Institutions]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_LanguageKnowledgeAreaListSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguageKnowledgeAreaListSelect]
END
GO
CREATE PROC [dbo].[usp_LanguageKnowledgeAreaListSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [LanguageDocumentId], [LanguageKnowledgeAreaId], [IsDeleted]
	FROM   [dbo].[LanguageKnowledgeAreaList]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_LanguageKnowledgeAreaListInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguageKnowledgeAreaListInsert]
END
GO
CREATE PROC [dbo].[usp_LanguageKnowledgeAreaListInsert]
    @LanguageDocumentId int,
    @LanguageKnowledgeAreaId int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[LanguageKnowledgeAreaList] ([LanguageDocumentId], [LanguageKnowledgeAreaId], [IsDeleted])
	SELECT @LanguageDocumentId, @LanguageKnowledgeAreaId, 0

	-- Begin Return Select <- do not remove
	SELECT [Id], [LanguageDocumentId], [LanguageKnowledgeAreaId], [IsDeleted]
	FROM   [dbo].[LanguageKnowledgeAreaList]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_LanguageKnowledgeAreaListUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguageKnowledgeAreaListUpdate]
END
GO
CREATE PROC [dbo].[usp_LanguageKnowledgeAreaListUpdate]
    @Id int,
    @LanguageDocumentId int,
    @LanguageKnowledgeAreaId int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[LanguageKnowledgeAreaList]
	SET    [LanguageDocumentId] = @LanguageDocumentId, [LanguageKnowledgeAreaId] = @LanguageKnowledgeAreaId, [IsDeleted] = 0
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [LanguageDocumentId], [LanguageKnowledgeAreaId], [IsDeleted]
	FROM   [dbo].[LanguageKnowledgeAreaList]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_LanguageKnowledgeAreaListDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguageKnowledgeAreaListDelete]
END
GO
CREATE PROC [dbo].[usp_LanguageKnowledgeAreaListDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[LanguageKnowledgeAreaList]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_LanguageKnowledgeDocumentsSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguageKnowledgeDocumentsSelect]
END
GO
CREATE PROC [dbo].[usp_LanguageKnowledgeDocumentsSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [GenericDocumentId], [LanguageId], [CertifyingBoydId], [Year], [IsDeleted]
	FROM   [dbo].[LanguageKnowledgeDocuments]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_LanguageKnowledgeDocumentsInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguageKnowledgeDocumentsInsert]
END
GO
CREATE PROC [dbo].[usp_LanguageKnowledgeDocumentsInsert]
    @GenericDocumentId int,
    @LanguageId int,
    @CertifyingBoydId int,
    @Year int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[LanguageKnowledgeDocuments] ([GenericDocumentId], [LanguageId], [CertifyingBoydId], [Year], [IsDeleted])
	SELECT @GenericDocumentId, @LanguageId, @CertifyingBoydId, @Year, 0

	-- Begin Return Select <- do not remove
	SELECT [Id], [GenericDocumentId], [LanguageId], [CertifyingBoydId], [Year], [IsDeleted]
	FROM   [dbo].[LanguageKnowledgeDocuments]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_LanguageKnowledgeDocumentsUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguageKnowledgeDocumentsUpdate]
END
GO
CREATE PROC [dbo].[usp_LanguageKnowledgeDocumentsUpdate]
    @Id int,
    @GenericDocumentId int,
    @LanguageId int,
    @CertifyingBoydId int,
    @Year int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[LanguageKnowledgeDocuments]
	SET    [GenericDocumentId] = @GenericDocumentId, [LanguageId] = @LanguageId, [CertifyingBoydId] = @CertifyingBoydId, [Year] = @Year, [IsDeleted] = 0
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [GenericDocumentId], [LanguageId], [CertifyingBoydId], [Year], [IsDeleted]
	FROM   [dbo].[LanguageKnowledgeDocuments]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_LanguageKnowledgeDocumentsDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguageKnowledgeDocumentsDelete]
END
GO
CREATE PROC [dbo].[usp_LanguageKnowledgeDocumentsDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[LanguageKnowledgeDocuments]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_LanguagesSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguagesSelect]
END
GO
CREATE PROC [dbo].[usp_LanguagesSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [Name], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[Languages]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_LanguagesInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguagesInsert]
END
GO
CREATE PROC [dbo].[usp_LanguagesInsert]
    @Name varchar(50),
    @IsUserDefined bit
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[Languages] ([Name], [IsDeleted], [IsUserDefined])
	SELECT @Name, 0, @IsUserDefined

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[Languages]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_LanguagesUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguagesUpdate]
END
GO
CREATE PROC [dbo].[usp_LanguagesUpdate]
    @Id int,
    @Name varchar(50),
    @IsUserDefined bit
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Languages]
	SET    [Name] = @Name, [IsDeleted] = 0, [IsUserDefined] = @IsUserDefined
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[Languages]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_LanguagesDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguagesDelete]
END
GO
CREATE PROC [dbo].[usp_LanguagesDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Languages]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_PresentationsSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_PresentationsSelect]
END
GO
CREATE PROC [dbo].[usp_PresentationsSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [GenericDocumentId], [EventDate], [Place], [Name], [Event], [IsDeleted]
	FROM   [dbo].[Presentations]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_PresentationsInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_PresentationsInsert]
END
GO
CREATE PROC [dbo].[usp_PresentationsInsert]
    @GenericDocumentId int,
    @EventDate date,
    @Place varchar(50),
    @Name varchar(50),
    @Event varchar(50)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[Presentations] ([GenericDocumentId], [EventDate], [Place], [Name], [Event], [IsDeleted])
	SELECT @GenericDocumentId, @EventDate, @Place, @Name, @Event, 0

	-- Begin Return Select <- do not remove
	SELECT [Id], [GenericDocumentId], [EventDate], [Place], [Name], [Event], [IsDeleted]
	FROM   [dbo].[Presentations]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_PresentationsUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_PresentationsUpdate]
END
GO
CREATE PROC [dbo].[usp_PresentationsUpdate]
    @Id int,
    @GenericDocumentId int,
    @EventDate date,
    @Place varchar(50),
    @Name varchar(50),
    @Event varchar(50)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Presentations]
	SET    [GenericDocumentId] = @GenericDocumentId, [EventDate] = @EventDate, [Place] = @Place, [Name] = @Name, [Event] = @Event, [IsDeleted] = 0
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [GenericDocumentId], [EventDate], [Place], [Name], [Event], [IsDeleted]
	FROM   [dbo].[Presentations]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_PresentationsDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_PresentationsDelete]
END
GO
CREATE PROC [dbo].[usp_PresentationsDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Presentations]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_RegulationsSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_RegulationsSelect]
END
GO
CREATE PROC [dbo].[usp_RegulationsSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [Name], [Content], [IsDeleted], [Timestamp]
	FROM   [dbo].[Regulations]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_RegulationsInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_RegulationsInsert]
END
GO
CREATE PROC [dbo].[usp_RegulationsInsert]
    @Name varchar(50),
    @Content varchar(250)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[Regulations] ([Name], [Content], [IsDeleted])
	SELECT @Name, @Content, 0

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [Content], [IsDeleted], [Timestamp]
	FROM   [dbo].[Regulations]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_RegulationsUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_RegulationsUpdate]
END
GO
CREATE PROC [dbo].[usp_RegulationsUpdate]
    @Id int,
    @Name varchar(50),
    @Content varchar(250)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Regulations]
	SET    [Name] = @Name, [Content] = @Content, [IsDeleted] = 0
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [Content], [IsDeleted], [Timestamp]
	FROM   [dbo].[Regulations]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_RegulationsDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_RegulationsDelete]
END
GO
CREATE PROC [dbo].[usp_RegulationsDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Regulations]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_ResearchProjectSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_ResearchProjectSelect]
END
GO
CREATE PROC [dbo].[usp_ResearchProjectSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [GenericDocumentId], [ProjectCode], [ProjectName], [ProjectStartYear], [ProjectEndYear], [IsValited], [IsDeleted]
	FROM   [dbo].[ResearchProject]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_ResearchProjectInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_ResearchProjectInsert]
END
GO
CREATE PROC [dbo].[usp_ResearchProjectInsert]
    @GenericDocumentId int,
    @ProjectCode int,
    @ProjectName varchar(50),
    @ProjectStartYear int,
    @ProjectEndYear int,
    @IsValited bit
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[ResearchProject] ([GenericDocumentId], [ProjectCode], [ProjectName], [ProjectStartYear], [ProjectEndYear], [IsValited], [IsDeleted])
	SELECT @GenericDocumentId, @ProjectCode, @ProjectName, @ProjectStartYear, @ProjectEndYear, @IsValited, 0

	-- Begin Return Select <- do not remove
	SELECT [Id], [GenericDocumentId], [ProjectCode], [ProjectName], [ProjectStartYear], [ProjectEndYear], [IsValited], [IsDeleted]
	FROM   [dbo].[ResearchProject]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_ResearchProjectUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_ResearchProjectUpdate]
END
GO
CREATE PROC [dbo].[usp_ResearchProjectUpdate]
    @Id int,
    @GenericDocumentId int,
    @ProjectCode int,
    @ProjectName varchar(50),
    @ProjectStartYear int,
    @ProjectEndYear int,
    @IsValited bit
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[ResearchProject]
	SET    [GenericDocumentId] = @GenericDocumentId, [ProjectCode] = @ProjectCode, [ProjectName] = @ProjectName, [ProjectStartYear] = @ProjectStartYear, [ProjectEndYear] = @ProjectEndYear, [IsValited] = @IsValited, [IsDeleted] = 0
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [GenericDocumentId], [ProjectCode], [ProjectName], [ProjectStartYear], [ProjectEndYear], [IsValited], [IsDeleted]
	FROM   [dbo].[ResearchProject]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_ResearchProjectDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_ResearchProjectDelete]
END
GO
CREATE PROC [dbo].[usp_ResearchProjectDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[ResearchProject]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_TipsSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_TipsSelect]
END
GO
CREATE PROC [dbo].[usp_TipsSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [Name], [Content], [IsDeleted], [Timestamp]
	FROM   [dbo].[Tips]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_TipsInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_TipsInsert]
END
GO
CREATE PROC [dbo].[usp_TipsInsert]
    @Name varchar(50),
    @Content varchar(250)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[Tips] ([Name], [Content], [IsDeleted])
	SELECT @Name, @Content, 0

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [Content], [IsDeleted], [Timestamp]
	FROM   [dbo].[Tips]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_TipsUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_TipsUpdate]
END
GO
CREATE PROC [dbo].[usp_TipsUpdate]
    @Id int,
    @Name varchar(50),
    @Content varchar(250)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Tips]
	SET    [Name] = @Name, [Content] = @Content, [IsDeleted] = 0
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [Content], [IsDeleted], [Timestamp]
	FROM   [dbo].[Tips]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_TipsDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_TipsDelete]
END
GO
CREATE PROC [dbo].[usp_TipsDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Tips]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_TrainingSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_TrainingSelect]
END
GO
CREATE PROC [dbo].[usp_TrainingSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [GenericDocumentId], [Name], [TrainingStarDate], [TrainingEndDate], [TrainingHours], [TrainingEntityId], [isDeleted]
	FROM   [dbo].[Training]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_TrainingInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_TrainingInsert]
END
GO
CREATE PROC [dbo].[usp_TrainingInsert]
    @GenericDocumentId int,
    @Name varchar(50),
    @TrainingStarDate date,
    @TrainingEndDate date,
    @TrainingHours int,
    @TrainingEntityId int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[Training] ([GenericDocumentId], [Name], [TrainingStarDate], [TrainingEndDate], [TrainingHours], [TrainingEntityId], [isDeleted])
	SELECT @GenericDocumentId, @Name, @TrainingStarDate, @TrainingEndDate, @TrainingHours, @TrainingEntityId, 0

	-- Begin Return Select <- do not remove
	SELECT [Id], [GenericDocumentId], [Name], [TrainingStarDate], [TrainingEndDate], [TrainingHours], [TrainingEntityId], [isDeleted]
	FROM   [dbo].[Training]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_TrainingUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_TrainingUpdate]
END
GO
CREATE PROC [dbo].[usp_TrainingUpdate]
    @Id int,
    @GenericDocumentId int,
    @Name varchar(50),
    @TrainingStarDate date,
    @TrainingEndDate date,
    @TrainingHours int,
    @TrainingEntityId int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Training]
	SET    [GenericDocumentId] = @GenericDocumentId, [Name] = @Name, [TrainingStarDate] = @TrainingStarDate, [TrainingEndDate] = @TrainingEndDate, [TrainingHours] = @TrainingHours, [TrainingEntityId] = @TrainingEntityId, [isDeleted] = 0
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [GenericDocumentId], [Name], [TrainingStarDate], [TrainingEndDate], [TrainingHours], [TrainingEntityId], [isDeleted]
	FROM   [dbo].[Training]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_TrainingDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_TrainingDelete]
END
GO
CREATE PROC [dbo].[usp_TrainingDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Training]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------



USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_TrainingEntitiesSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_TrainingEntitiesSelect]
END
GO
CREATE PROC [dbo].[usp_TrainingEntitiesSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [Name], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[TrainingEntities]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_TrainingEntitiesInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_TrainingEntitiesInsert]
END
GO
CREATE PROC [dbo].[usp_TrainingEntitiesInsert]
    @Name varchar(50),
    @IsUserDefined bit
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[TrainingEntities] ([Name], [IsDeleted], [IsUserDefined])
	SELECT @Name, 0, @IsUserDefined

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[TrainingEntities]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_TrainingEntitiesUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_TrainingEntitiesUpdate]
END
GO
CREATE PROC [dbo].[usp_TrainingEntitiesUpdate]
    @Id int,
    @Name varchar(50),
    @IsUserDefined bit
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[TrainingEntities]
	SET    [Name] = @Name, [IsDeleted] = 0, [IsUserDefined] = @IsUserDefined
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[TrainingEntities]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_TrainingEntitiesDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_TrainingEntitiesDelete]
END
GO
CREATE PROC [dbo].[usp_TrainingEntitiesDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[TrainingEntities]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

/***********************************
Begin more complex Stored Procedures
***********************************/

/* BOOKS */

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_AuthorsSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_AuthorsSelect]
END
GO
CREATE PROC [dbo].[usp_AuthorsSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [Name], [Email], [IsDeleted]
	FROM   [dbo].[Authors]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_AuthorsInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_AuthorsInsert]
END
GO
CREATE PROC [dbo].[usp_AuthorsInsert]
    @Name varchar(50),
    @Email varchar(50)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[Authors] ([Name], [Email], [IsDeleted])
	SELECT @Name, @Email, 0

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [Email], [IsDeleted]
	FROM   [dbo].[Authors]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_AuthorsUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_AuthorsUpdate]
END
GO
CREATE PROC [dbo].[usp_AuthorsUpdate]
    @Id int,
    @Name varchar(50),
    @Email varchar(50)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Authors]
	SET    [Name] = @Name, [Email] = @Email, [IsDeleted] = 0
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [Email], [IsDeleted]
	FROM   [dbo].[Authors]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_AuthorsDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_AuthorsDelete]
END
GO
CREATE PROC [dbo].[usp_AuthorsDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Authors]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_BooksSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_BooksSelect]
END
GO
CREATE PROC [dbo].[usp_BooksSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [GenericDocumentId], [BookName], [EditorialId], [PublicationDate], [PublicationURL], [IsDeleted ]
	FROM   [dbo].[Books]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_BooksInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_BooksInsert]
END
GO
CREATE PROC [dbo].[usp_BooksInsert]
    @GenericDocumentId int,
    @BookName varchar(50),
    @EditorialId int,
    @PublicationDate date,
    @PublicationURL varchar(200)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[Books] ([GenericDocumentId], [BookName], [EditorialId], [PublicationDate], [PublicationURL], [IsDeleted ])
	SELECT @GenericDocumentId, @BookName, @EditorialId, @PublicationDate, @PublicationURL, 0

	-- Begin Return Select <- do not remove
	SELECT [Id], [GenericDocumentId], [BookName], [EditorialId], [PublicationDate], [PublicationURL], [IsDeleted ]
	FROM   [dbo].[Books]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_BooksUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_BooksUpdate]
END
GO
CREATE PROC [dbo].[usp_BooksUpdate]
    @Id int,
    @GenericDocumentId int,
    @BookName varchar(50),
    @EditorialId int,
    @PublicationDate date,
    @PublicationURL varchar(200)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Books]
	SET    [GenericDocumentId] = @GenericDocumentId, [BookName] = @BookName, [EditorialId] = @EditorialId, [PublicationDate] = @PublicationDate, [PublicationURL] = @PublicationURL, [IsDeleted ] = 0
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [GenericDocumentId], [BookName], [EditorialId], [PublicationDate], [PublicationURL], [IsDeleted ]
	FROM   [dbo].[Books]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_BooksDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_BooksDelete]
END
GO
CREATE PROC [dbo].[usp_BooksDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Books]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_AuthorXBookSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_AuthorXBookSelect]
END
GO
CREATE PROC [dbo].[usp_AuthorXBookSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [AuthorId], [BookId], [IsDeleted]
	FROM   [dbo].[AuthorXBook]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_AuthorXBookInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_AuthorXBookInsert]
END
GO
CREATE PROC [dbo].[usp_AuthorXBookInsert]
    @AuthorId int,
    @BookId int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[AuthorXBook] ([AuthorId], [BookId], [IsDeleted])
	SELECT @AuthorId, @BookId, 0

	-- Begin Return Select <- do not remove
	SELECT [Id], [AuthorId], [BookId], [IsDeleted]
	FROM   [dbo].[AuthorXBook]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_AuthorXBookUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_AuthorXBookUpdate]
END
GO
CREATE PROC [dbo].[usp_AuthorXBookUpdate]
    @Id int,
    @AuthorId int,
    @BookId int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[AuthorXBook]
	SET    [AuthorId] = @AuthorId, [BookId] = @BookId, [IsDeleted] = 0
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [AuthorId], [BookId], [IsDeleted]
	FROM   [dbo].[AuthorXBook]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_AuthorXBookDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_AuthorXBookDelete]
END
GO
CREATE PROC [dbo].[usp_AuthorXBookDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[AuthorXBook]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

/* ARTICLES + MAGAINES */
USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_MagazinesSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_MagazinesSelect]
END
GO
CREATE PROC [dbo].[usp_MagazinesSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [Name], [URL], [IsDeleted]
	FROM   [dbo].[Magazines]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_MagazinesInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_MagazinesInsert]
END
GO
CREATE PROC [dbo].[usp_MagazinesInsert]
    @Name varchar(50),
    @URL varchar(200)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[Magazines] ([Name], [URL], [IsDeleted])
	SELECT @Name, @URL, 0

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [URL], [IsDeleted]
	FROM   [dbo].[Magazines]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_MagazinesUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_MagazinesUpdate]
END
GO
CREATE PROC [dbo].[usp_MagazinesUpdate]
    @Id int,
    @Name varchar(50),
    @URL varchar(200)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Magazines]
	SET    [Name] = @Name, [URL] = @URL, [IsDeleted] = 0
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [URL], [IsDeleted]
	FROM   [dbo].[Magazines]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_MagazinesDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_MagazinesDelete]
END
GO
CREATE PROC [dbo].[usp_MagazinesDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[Magazines]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_MagazinesArticlesSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_MagazinesArticlesSelect]
END
GO
CREATE PROC [dbo].[usp_MagazinesArticlesSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [GenericDocumentId], [ArticleName], [MagazineId], [PublicationDate], [PublicationUrl], [IsDeleted]
	FROM   [dbo].[MagazinesArticles]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_MagazinesArticlesInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_MagazinesArticlesInsert]
END
GO
CREATE PROC [dbo].[usp_MagazinesArticlesInsert]
    @GenericDocumentId int,
    @ArticleName varchar(50),
    @MagazineId int,
    @PublicationDate date,
    @PublicationUrl varchar(200)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[MagazinesArticles] ([GenericDocumentId], [ArticleName], [MagazineId], [PublicationDate], [PublicationUrl], [IsDeleted])
	SELECT @GenericDocumentId, @ArticleName, @MagazineId, @PublicationDate, @PublicationUrl, 0

	-- Begin Return Select <- do not remove
	SELECT [Id], [GenericDocumentId], [ArticleName], [MagazineId], [PublicationDate], [PublicationUrl], [IsDeleted]
	FROM   [dbo].[MagazinesArticles]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_MagazinesArticlesUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_MagazinesArticlesUpdate]
END
GO
CREATE PROC [dbo].[usp_MagazinesArticlesUpdate]
    @Id int,
    @GenericDocumentId int,
    @ArticleName varchar(50),
    @MagazineId int,
    @PublicationDate date,
    @PublicationUrl varchar(200)
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[MagazinesArticles]
	SET    [GenericDocumentId] = @GenericDocumentId, [ArticleName] = @ArticleName, [MagazineId] = @MagazineId, [PublicationDate] = @PublicationDate, [PublicationUrl] = @PublicationUrl, [IsDeleted] = 0
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [GenericDocumentId], [ArticleName], [MagazineId], [PublicationDate], [PublicationUrl], [IsDeleted]
	FROM   [dbo].[MagazinesArticles]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_MagazinesArticlesDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_MagazinesArticlesDelete]
END
GO
CREATE PROC [dbo].[usp_MagazinesArticlesDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[MagazinesArticles]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------


/* LANGUAGE + KNOWLEDGE AREAS */

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_LanguageKnowledgeAreasSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguageKnowledgeAreasSelect]
END
GO
CREATE PROC [dbo].[usp_LanguageKnowledgeAreasSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [Name], [IsDeleted], [LanguageKnowledgeLevelId]
	FROM   [dbo].[LanguageKnowledgeAreas]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_LanguageKnowledgeAreasInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguageKnowledgeAreasInsert]
END
GO
CREATE PROC [dbo].[usp_LanguageKnowledgeAreasInsert]
    @Name varchar(50),
    @LanguageKnowledgeLevelId int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[LanguageKnowledgeAreas] ([Name], [IsDeleted], [LanguageKnowledgeLevelId])
	SELECT @Name, 0, @LanguageKnowledgeLevelId

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [IsDeleted], [LanguageKnowledgeLevelId]
	FROM   [dbo].[LanguageKnowledgeAreas]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_LanguageKnowledgeAreasUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguageKnowledgeAreasUpdate]
END
GO
CREATE PROC [dbo].[usp_LanguageKnowledgeAreasUpdate]
    @Id int,
    @Name varchar(50),
    @LanguageKnowledgeLevelId int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[LanguageKnowledgeAreas]
	SET    [Name] = @Name, [IsDeleted] = 0, [LanguageKnowledgeLevelId] = @LanguageKnowledgeLevelId
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [IsDeleted], [LanguageKnowledgeLevelId]
	FROM   [dbo].[LanguageKnowledgeAreas]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_LanguageKnowledgeAreasDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguageKnowledgeAreasDelete]
END
GO
CREATE PROC [dbo].[usp_LanguageKnowledgeAreasDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[LanguageKnowledgeAreas]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

USE [ProntuarioDigital];
GO

IF OBJECT_ID('[dbo].[usp_LanguageKnowledgeLevelsSelect]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguageKnowledgeLevelsSelect]
END
GO
CREATE PROC [dbo].[usp_LanguageKnowledgeLevelsSelect]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	SELECT [Id], [Name], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[LanguageKnowledgeLevels]
	WHERE  ([Id] = @Id OR @Id IS NULL)

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_LanguageKnowledgeLevelsInsert]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguageKnowledgeLevelsInsert]
END
GO
CREATE PROC [dbo].[usp_LanguageKnowledgeLevelsInsert]
    @Name varchar(50),
    @IsUserDefined bit
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	INSERT INTO [dbo].[LanguageKnowledgeLevels] ([Name], [IsDeleted], [IsUserDefined])
	SELECT @Name, 0, @IsUserDefined

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[LanguageKnowledgeLevels]
	WHERE  [Id] = SCOPE_IDENTITY()
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_LanguageKnowledgeLevelsUpdate]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguageKnowledgeLevelsUpdate]
END
GO
CREATE PROC [dbo].[usp_LanguageKnowledgeLevelsUpdate]
    @Id int,
    @Name varchar(50),
    @IsUserDefined bit
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[LanguageKnowledgeLevels]
	SET    [Name] = @Name, [IsDeleted] = 0, [IsUserDefined] = @IsUserDefined
	WHERE  [Id] = @Id

	-- Begin Return Select <- do not remove
	SELECT [Id], [Name], [IsDeleted], [IsUserDefined]
	FROM   [dbo].[LanguageKnowledgeLevels]
	WHERE  [Id] = @Id
	-- End Return Select <- do not remove

	COMMIT
GO
IF OBJECT_ID('[dbo].[usp_LanguageKnowledgeLevelsDelete]') IS NOT NULL
BEGIN
    DROP PROC [dbo].[usp_LanguageKnowledgeLevelsDelete]
END
GO
CREATE PROC [dbo].[usp_LanguageKnowledgeLevelsDelete]
    @Id int
AS
	SET NOCOUNT ON
	SET XACT_ABORT ON

	BEGIN TRAN

	UPDATE [dbo].[LanguageKnowledgeLevels]
	SET    [IsDeleted] = 1
	WHERE  [Id] = @Id

	COMMIT
GO
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

