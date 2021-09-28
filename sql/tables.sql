create table CollegeDegreeTypes
(
	Id int
		constraint CollegeDegreeTypes_pk
			primary key nonclustered,
	Description nvarchar,
	IsDeleted nvarchar,
	IsUserDefined nvarchar
)

create table Institutions
(
	Id int
		constraint Institutions_pk
			primary key nonclustered,
	Name nvarchar,
	IsDeleted nvarchar,
	IsUserDefined nvarchar
)

create table Countries
(
	Id int
		constraint Countries_pk
			primary key nonclustered,
	Name nvarchar,
	IsDeleted nvarchar
)

create table Authors
(
	Id int
		constraint Authors_pk
			primary key nonclustered,
	Name nvarchar,
	Email nvarchar,
	IsDeleted int
)

create table Magazines
(
	Id int
	    constraint Magazines_pk
			primary key nonclustered,
	Name nvarchar,
	URL int,
	IsDeleted int
)

create table TrainingEntities
(
	Id int
		constraint TrainingEntities_pk
			primary key nonclustered,
	Name nvarchar,
	IsDeleted int,
	IsUserDefined int
)

create table Editorial
(
	Id int
		constraint Editorial_pk
			primary key nonclustered,
	Name nvarchar,
	URL int,
	IsDeleted int,
	CountryId int
		constraint Country___fk
			references Countries
)

create table Languages
(
	Id int
		constraint Languages_pk
			primary key nonclustered,
	Name nvarchar,
	IsDeleted int,
	IsUserDefined int
)

create table CertifyingBody
(
	Id int
		constraint CertifyingBody_pk
			primary key nonclustered,
	Name nvarchar,
	IsDeleted int,
	IsUserDefined int
)

create table Tips
(
	Id int identity
		constraint Tips_pk
			primary key nonclustered,
	Name nvarchar,
	Content nvarchar,
	IsDeleted int,
	Timestamp timestamp null
)

create table Regulations
(
	Id int identity
		constraint Regulations_pk
			primary key nonclustered,
	Name nvarchar,
	Content nvarchar,
	IsDeleted int,
	Timestamp timestamp null
)

create table GenericDocument
(
	Id int identity
		constraint GenericDocument_pk
			primary key nonclustered,
	RegulationId int
		constraint GenericDocument_Regulations_Id_fk
			references Regulations,
	TipsId int
		constraint GenericDocument_Tips_Id_fk
			references Tips,
	IsDeleted int,
	Timestamp timestamp null
)

create table Files
(
	Id int identity
		constraint Files_pk
			primary key nonclustered,
	Name nvarchar,
	URL int,
	IsDeleted int,
	GenericDocumentId int
		constraint Files_GenericDocument_Id_fk
			references GenericDocument
)

create table CollegeDegreeDocuments
(
	Id int
		constraint CollegeDegreeDocuments_pk
			primary key nonclustered,
	GenericDocumentId int
		constraint CollegeDegreeDocuments_GenericDocument_Id_fk
			references GenericDocument,
	CollegeDegreeTypeId int
		constraint CollegeDegreeDocuments_CollegeDegreeTypes_Id_fk
			references CollegeDegreeTypes,
	Year date,
	InstitutionId int
		constraint CollegeDegreeDocuments_Institutions_Id_fk
			references Institutions,
	CountryId int
		constraint CollegeDegreeDocuments_Countries_Id_fk
			references Countries,
	IsDeleted int
)

create table LanguageKnowledgeLevels
(
	Id int
		constraint LanguageKnowledgeLevels_pk
			primary key nonclustered,
	Name nvarchar,
	IsDeleted int,
	IsUserDefined int
)
create table LevelsXKnowledgeArea
(
	Id int
		constraint LevelsXKnowledgeArea_pk
			primary key nonclustered,
	LanguageKnowledgeAreaId int,
	LanguageKnowledgeLevelId int
		constraint LevelsXKnowledgeArea_LanguageKnowledgeLevels_Id_fk
			references LanguageKnowledgeLevels,
	IsDeleted int
)

create table LanguageKnowledgeAreas
(
	Id int,
	Name nvarchar,
	IsDeleted int,
	LanguageKnowledgeLevelId int
		constraint LanguageKnowledgeAreas_LevelsXKnowledgeArea_Id_fk
			references LevelsXKnowledgeArea
)

alter table LanguageKnowledgeAreas
	add constraint LanguageKnowledgeAreas_pk
		primary key nonclustered (Id)

alter table LevelsXKnowledgeArea
	add constraint LevelsXKnowledgeArea_LanguageKnowledgeAreas_Id_fk_2
		foreign key (LanguageKnowledgeAreaId) references LanguageKnowledgeAreas

create table LanguageKnowledgeDocuments
(
    Id int not null
        constraint LanguageKnowledgeDocuments_pk
            primary key nonclustered,
    GenericDocumentId int
        constraint LanguageKnowledgeDocuments_GenericDocument_Id_fk
            references GenericDocument,
    LanguageId int
        constraint LanguageKnowledgeDocuments_Languages_Id_fk
            references Languages,
    CertifyingBoydId  int
        constraint LanguageKnowledgeDocuments_CertifyingBody_Id_fk
            references CertifyingBody,
    Year  date,
    IsDeleted  int
)
create table LanguageKnowledgeAreaList
(
    Id                      int not null
        constraint LanguageKnowledgeAreaList_pk
            primary key nonclustered,
    LanguageDocumentId      int
        constraint LanguageKnowledgeAreaList_LanguageKnowledgeDocuments_Id_fk
            references LanguageKnowledgeDocuments,
    LanguageKnowledgeAreaId int
        constraint LanguageKnowledgeAreaList_LanguageKnowledgeAreas_Id_fk
            references LanguageKnowledgeAreas,
    IsDeleted               int
)

create table Books
(
	Id int
		constraint Books_pk
			primary key nonclustered,
	GenericDocumentId int
		constraint Books_GenericDocument_Id_fk
			references GenericDocument,
	BookName nvarchar,
	EditorialId int
		constraint Books_Editorial_Id_fk
			references Editorial,
	PublicationDate date,
	PublicationURL int,
	[IsDeleted ] int
)

create table AuthorXBook
(
	Id int
		constraint AuthorXBook_pk
			primary key nonclustered,
	AuthorId int
		constraint AuthorXBook_Authors_Id_fk
			references Authors,
	BookId int
		constraint AuthorXBook_Books_Id_fk
			references Books,
	IsDeleted int
)

create table MagazinesArticles
(
	Id int
       constraint MagazinesArticles_pk
			primary key nonclustered,,
	GenericDocumentId int
		constraint MagazinesArticles_GenericDocument_Id_fk
			references GenericDocument,
	ArticleName nvarchar,
	MagazineId int
		constraint MagazinesArticles_Magazines_Id_fk
			references Magazines,
	PublicationDate date,
	PublicationUrl int,
	IsDeleted int
)

create table AuthorXArticle
(
	Id int,
	AuthorId int
		constraint AuthorXArticle_Authors_Id_fk
			references Authors,
	ArticleId int
		constraint AuthorXArticle_MagazinesArticles_Id_fk
			references MagazinesArticles,
	IsDeleted int
)
create table Presentations
(
	Id int,
	GenericDocumentId int
		constraint Presentations_GenericDocument_Id_fk
			references GenericDocument,
	EventDate date,
	Place nvarchar,
	Name nvarchar,
	Event nvarchar,
	IsDeleted int
)

create table Training
(
	Id int,
	GenericDocumentId int
		constraint Training_GenericDocument_Id_fk
			references GenericDocument,
	Name nvarchar,
	TrainingStarDate date,
	TrainingEndDate date,
	TrainingHours int,
	TrainingEntityId int
		constraint Training_TrainingEntities_Id_fk
			references TrainingEntities
)
create table ResearchProject
(
	Id int
		constraint ResearchProject_pk
			primary key nonclustered,
	GenericDocumentId int
		constraint ResearchProject_GenericDocument_Id_fk
			references GenericDocument,
	ProjectCode int,
	ProjectName nvarchar,
	ProjectStartYear date,
	ProjectEndYear date,
	IsValited int,
	IsDeleted int
)

go

