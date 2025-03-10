/****** Object:  Database [care-angel-main-dev]    Script Date: 3/4/2025 10:25:30 AM ******/
CREATE DATABASE [care-angel-main-dev]  (EDITION = 'Standard', SERVICE_OBJECTIVE = 'ElasticPool', MAXSIZE = 2 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS, LEDGER = OFF;
GO
ALTER DATABASE [care-angel-main-dev] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [care-angel-main-dev] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [care-angel-main-dev] SET ANSI_NULLS ON 
GO
ALTER DATABASE [care-angel-main-dev] SET ANSI_PADDING ON 
GO
ALTER DATABASE [care-angel-main-dev] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [care-angel-main-dev] SET ARITHABORT ON 
GO
ALTER DATABASE [care-angel-main-dev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [care-angel-main-dev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [care-angel-main-dev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [care-angel-main-dev] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [care-angel-main-dev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [care-angel-main-dev] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [care-angel-main-dev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [care-angel-main-dev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [care-angel-main-dev] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [care-angel-main-dev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [care-angel-main-dev] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [care-angel-main-dev] SET  MULTI_USER 
GO
ALTER DATABASE [care-angel-main-dev] SET ENCRYPTION ON
GO
ALTER DATABASE [care-angel-main-dev] SET QUERY_STORE = ON
GO
ALTER DATABASE [care-angel-main-dev] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 367), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = ALL, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/****** Object:  DatabaseScopedCredential [CAREANGELACCESS_Main1_Credential]    Script Date: 3/4/2025 10:25:31 AM ******/
CREATE DATABASE SCOPED CREDENTIAL [CAREANGELACCESS_Main1_Credential] WITH IDENTITY = N'datafactory'
GO
/****** Object:  DatabaseScopedCredential [CAREANGELMainLegacySecurityDatafactoryUser]    Script Date: 3/4/2025 10:25:31 AM ******/
CREATE DATABASE SCOPED CREDENTIAL [CAREANGELMainLegacySecurityDatafactoryUser] WITH IDENTITY = N'datafactory'
GO
/****** Object:  DatabaseScopedCredential [https://caaudit.blob.core.windows.net/sqldbauditlogs]    Script Date: 3/4/2025 10:25:31 AM ******/
CREATE DATABASE SCOPED CREDENTIAL [https://caaudit.blob.core.windows.net/sqldbauditlogs] WITH IDENTITY = N'SHARED ACCESS SIGNATURE'
GO
/****** Object:  User [FILEUPLOAD]    Script Date: 3/4/2025 10:25:31 AM ******/
CREATE USER [FILEUPLOAD] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [datafactory]    Script Date: 3/4/2025 10:25:31 AM ******/
CREATE USER [datafactory] FOR LOGIN [datafactory] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ca.cmms.service]    Script Date: 3/4/2025 10:25:31 AM ******/
CREATE USER [ca.cmms.service] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [BMORO]    Script Date: 3/4/2025 10:25:31 AM ******/
CREATE USER [BMORO] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [adminportal_sandbox]    Script Date: 3/4/2025 10:25:31 AM ******/
CREATE USER [adminportal_sandbox] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'datafactory'
GO
/****** Object:  Schema [aaanew]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [aaanew]
GO
/****** Object:  Schema [CareChat]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [CareChat]
GO
/****** Object:  Schema [ccsss]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [ccsss]
GO
/****** Object:  Schema [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33]
GO
/****** Object:  Schema [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb]
GO
/****** Object:  Schema [EHDEV]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [EHDEV]
GO
/****** Object:  Schema [EmpowerHealth]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [EmpowerHealth]
GO
/****** Object:  Schema [ETL]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [ETL]
GO
/****** Object:  Schema [ETLTEST]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [ETLTEST]
GO
/****** Object:  Schema [FileUpload]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [FileUpload]
GO
/****** Object:  Schema [IVR]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [IVR]
GO
/****** Object:  Schema [LegacyMain]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [LegacyMain]
GO
/****** Object:  Schema [main]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [main]
GO
/****** Object:  Schema [MESSAGING]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [MESSAGING]
GO
/****** Object:  Schema [OPS]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [OPS]
GO
/****** Object:  Schema [sas]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [sas]
GO
/****** Object:  Schema [Temp]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [Temp]
GO
/****** Object:  Schema [TempStageProd]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [TempStageProd]
GO
/****** Object:  Schema [UHC]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [UHC]
GO
/****** Object:  Schema [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SCHEMA [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc]
GO
/****** Object:  Sequence [dbo].[TestIdentityCount]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE SEQUENCE [dbo].[TestIdentityCount] 
 AS [int]
 START WITH 1
 INCREMENT BY 2
 MINVALUE -2147483648
 MAXVALUE 2147483647
 CACHE 
GO
/****** Object:  UserDefinedTableType [dbo].[AlertParams]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE TYPE [dbo].[AlertParams] AS TABLE(
	[questionId] [bigint] NULL,
	[vitalTypeId] [int] NULL,
	[frequency] [int] NULL,
	[alertType] [int] NULL,
	[languageId] [int] NULL,
	[descriptionUrl] [varchar](max) NULL,
	[content] [varchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[InstructionParams]    Script Date: 3/4/2025 10:25:32 AM ******/
CREATE TYPE [dbo].[InstructionParams] AS TABLE(
	[MixedNormal] [bigint] NULL,
	[MixedVerbose] [bigint] NULL,
	[Numeric] [bigint] NULL,
	[InsertForConcise] [bit] NULL DEFAULT ((0))
)
GO
/****** Object:  UserDefinedTableType [dbo].[InstructionResults]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE TYPE [dbo].[InstructionResults] AS TABLE(
	[MixedNormal] [bigint] NULL,
	[MixedVerbose] [bigint] NULL,
	[Numeric] [bigint] NULL,
	[InsertForConcise] [bit] NULL,
	[ID] [bigint] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[OptionParams]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE TYPE [dbo].[OptionParams] AS TABLE(
	[LanguageId] [int] NULL,
	[Option] [nvarchar](max) NULL,
	[AudioUrl] [nvarchar](max) NULL,
	[WebText] [nvarchar](max) NULL,
	[SmsText] [nvarchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[OptionResults]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE TYPE [dbo].[OptionResults] AS TABLE(
	[OptionId] [bigint] NULL,
	[ConcatString] [nvarchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[PromptParams]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE TYPE [dbo].[PromptParams] AS TABLE(
	[LanguageId] [int] NULL,
	[Text] [nvarchar](max) NULL,
	[AudioUrl] [nvarchar](max) NULL,
	[AudioDescription] [nvarchar](max) NULL,
	[PromptContentweb] [nvarchar](max) NULL,
	[PromptContentsms] [nvarchar](max) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[PromptResults]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE TYPE [dbo].[PromptResults] AS TABLE(
	[PromptId] [bigint] NULL,
	[ConcatString] [nvarchar](max) NULL
)
GO
/****** Object:  UserDefinedFunction [IVR].[GetCallAttemptsByRecipient]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [IVR].[GetCallAttemptsByRecipient](@RecipientId BIGINT, 
                                              @StartDate   DATETIME, 
                                              @EndDate     DATETIME) 
		RETURNS VARCHAR(10) AS 
		BEGIN
            -- Declare the return variable here
			DECLARE @TotalComplete INT, @Result VARCHAR(10);
		SELECT @TotalComplete = COUNT(CASE
										  WHEN rc.STATUS IN(0, 1, 5, 6, 11)
										  THEN 1
										  ELSE NULL
									  END)
		FROM dbo.RecipientCall rc
		WHERE rc.CRRID = @RecipientId
			  AND rc.DTUTC_Created BETWEEN @StartDate AND @EndDate;

		-- Return the result of the function
		SET @Result = CAST(@TotalComplete AS VARCHAR(5));
		RETURN @Result;
END;
GO
/****** Object:  UserDefinedFunction [IVR].[udf_FileUploadId_Get]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create FUNCTION [IVR].[udf_FileUploadId_Get]  
(  
@SchedulerId INT  
)  
RETURNS VARCHAR (255)  
AS  
BEGIN  
    RETURN (SELECT [FileuploadID]  
     FROM main.[AutomatedCallsSchedule] (nolock) 
  WHERE [ID] = @SchedulerId AND [FileuploadID] <> '' AND [FileuploadID] <> '-1')  
END
GO
/****** Object:  UserDefinedFunction [IVR].[udf_GetActiveChannelByRecipient]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [IVR].[udf_GetActiveChannelByRecipient]
(
    @CareRecipientId BIGINT,
	@ConsentRequired BIT,
	@ChannelId INT
)Returns BIT
AS
BEGIN
   
	DECLARE @ValueExist INT = 0
	DECLARE @Result BIT = 0

	SET @ValueExist =  (SELECT COUNT(1) FROM IVR.RecipientChannels
						WHERE CareRecipientId = @CareRecipientId AND ChannelId = @ChannelId)
	
	IF (@ValueExist = 0 AND @ConsentRequired =0) 
	BEGIN
		SET @Result = 1
	END
	ELSE
	BEGIN	
		SELECT TOP 1 @Result = IsActive FROM IVR.RecipientChannels
			WHERE CareRecipientId = @CareRecipientId AND ChannelId = @ChannelId
	END
	RETURN @Result
END
GO
/****** Object:  UserDefinedFunction [main].[udf_SbuClientNameGroup_Get]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [main].[udf_SbuClientNameGroup_Get] (@SBURID BIGINT, @ClientName VARCHAR(100)) RETURNS INT
AS
BEGIN

DECLARE @SBUGroupRID INT = NULL

IF @ClientName IS NOT NULL 

BEGIN

SET @SBUGroupRID = (SELECT TOP 1 SbuGroupId FROM [main].[PartnerClientNameGroup] WHERE SBURID = @SBURID AND ClientName = @ClientName)

END

RETURN @SBUGroupRID

END
GO
/****** Object:  UserDefinedFunction [main].[udf_SbuGroupState_Get]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [main].[udf_SbuGroupState_Get] (@SBURID BIGINT, @StateCode VARCHAR(3)) RETURNS INT
AS
BEGIN

DECLARE @SBUGroupRID INT = NULL

IF LEN(@StateCode) = 2 

BEGIN

SET @SBUGroupRID = (SELECT TOP 1 SBUGroupRID FROM [main].[PartnerGroupState] WHERE SBURID = @SBURID AND Code = @StateCode)

END

RETURN @SBUGroupRID

END
GO
/****** Object:  UserDefinedFunction [main].[udf_SbuState_Get]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [main].[udf_SbuState_Get] (@SBURID BIGINT, @StateCode VARCHAR(3)) RETURNS INT
AS
BEGIN

DECLARE @SBUID INT = NULL

IF LEN(@StateCode) = 2 

BEGIN

SET @SBUID = COALESCE((SELECT TOP 1 Sburid FROM [main].[PartnerState] WHERE ParentSburid = @SBURID AND StateCode = @StateCode), @SBURID)

END
ELSE  

BEGIN 
SET @SBUID = @SBURID
END

RETURN @SBUID

END
GO
/****** Object:  UserDefinedFunction [main].[udf_SchemaByPartner_Get]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [main].[udf_SchemaByPartner_Get] ( @PartnerId bigint ) 
RETURNS VARCHAR (50)
AS 
BEGIN 
    RETURN ( SELECT  DataSchema AS [Schema] 
	               FROM main.Partner 
		   WHERE id = @PartnerId )
END
GO
/****** Object:  ExternalDataSource [CAREANGEL_CLINICAL2]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE EXTERNAL DATA SOURCE [CAREANGEL_CLINICAL2] WITH (TYPE = RDBMS, LOCATION = N'noprodcaredatabases.database.windows.net', CREDENTIAL = [CAREANGELMainLegacySecurityDatafactoryUser], DATABASE_NAME = N'care-angel-clinical-dev')
GO
/****** Object:  ExternalDataSource [CAREANGEL_MAIN_LEGACY]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE EXTERNAL DATA SOURCE [CAREANGEL_MAIN_LEGACY] WITH (TYPE = RDBMS, LOCATION = N'noprodcaredatabases.database.windows.net', CREDENTIAL = [CAREANGELMainLegacySecurityDatafactoryUser], DATABASE_NAME = N'CAREANGEL_DEV_MAIN')
GO
/****** Object:  Table [main].[Partner]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[Partner](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[DisplayInAdminPortal] [bit] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LogoUrl] [varchar](255) NULL,
	[DataSchema] [varchar](100) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_Partner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[PartnerEndUsers]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[PartnerEndUsers](
	[PartnerID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[PartnerGroupID] [bigint] NULL,
	[PartnerProgramID] [bigint] NULL,
	[PartnerInvitationCampaignID] [bigint] NULL,
	[IsActive] [bit] NULL,
	[PropBag] [xml] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PartnerEndUsers] PRIMARY KEY CLUSTERED 
(
	[PartnerID] ASC,
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[R]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[R](
	[RID] [bigint] NOT NULL,
	[RTypeID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsTesting] [bit] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_R] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[CareRecipients]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[CareRecipients](
	[RID] [bigint] NOT NULL,
	[IsProfileComplete] [bit] NOT NULL,
	[PhotoUrl] [nvarchar](255) NULL,
	[Language] [nvarchar](50) NOT NULL,
	[Timezone] [nvarchar](50) NULL,
	[ZipCode] [nvarchar](10) NULL,
	[StartDate] [datetime] NULL,
	[SuspendedFrom] [datetime] NULL,
	[SuspendedTo] [datetime] NULL,
	[PausedReason] [nvarchar](255) NULL,
	[EMRSystemName] [nvarchar](255) NULL,
	[MRN] [nvarchar](255) NULL,
	[ExternalID] [nvarchar](255) NULL,
	[CustomField1] [varchar](100) NULL,
	[CustomField2] [varchar](100) NULL,
	[CustomField3] [varchar](100) NULL,
	[CustomField4] [varchar](100) NULL,
	[CustomField5] [varchar](100) NULL,
	[CustomField6] [varchar](100) NULL,
	[CustomField7] [varchar](100) NULL,
	[CustomField8] [varchar](100) NULL,
	[SegmentID] [varchar](3) NULL,
	[TypeID] [int] NULL,
	[IsCreatedFromPortal] [bit] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_CareRecipients] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [main].[PopulationBase]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [main].[PopulationBase] 
AS

WITH A AS(
	SELECT CR.RID
		, CR.Language
		, CR.ZipCode 
		, CR.Timezone
		, CR.ExternalID
		, R.IsActive
		, R.IsTesting
		, LastModifiedOn = GREATEST(CR.LastModifiedOn, R.LastModifiedOn) 
		, CreatedOn = GREATEST(CR.CreatedOn, R.CreatedOn) 
	FROM main.[CareRecipients] CR
	INNER JOIN main.[R] R
		ON CR.RID = R.RID
)

SELECT A.IsActive
	, A.IsTesting
	, LanguageID = CASE
						WHEN COALESCE(NULLIF(A.Language,''),'') = ''     THEN 0
						WHEN A.Language LIKE '%en%'			THEN 1
						WHEN A.Language LIKE '%spanish%'	THEN 2
						ELSE A.Language
					END
	, TimezoneID = NULLIF(A.Timezone,'')
--	, FirstName = NULLIF(P.FName,'')
--	, MiddleName = NULLIF(P.MName,'')
--	, LastName = NULLIF(P.LName,'')
--	, Gender = CASE
--					WHEN P.Gender = 1	THEN 1
--					WHEN P.Gender = 0	THEN 0
--					ELSE NULL
--				END 
--	, DateOfBirth = NULLIF(P.DOB,'')
	, ExternalID = NULLIF(A.ExternalID,'')
--	, CreatedOn = COALESCE(P.CreatedOn, GREATEST(A.LastModifiedOn, P.LastModifiedOn))
--	, LastModifiedOn = GREATEST(A.DTUTC_Modified, P.LastModifiedOn) 
	, CreatedOn
	, LastModifiedOn
	, OriginRID = A.RID
	, OriginZipCodeID = CASE 
							WHEN ISNUMERIC(A.Zipcode) = 0 THEN NULL
							ELSE CAST(NULLIF(A.Zipcode,'') AS nvarchar(5))
						END
FROM A
--LEFT JOIN main.[PersonInfo] P 
--	ON A.RID = P.RID
GO
/****** Object:  View [main].[PopulationBasePartner]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [main].[PopulationBasePartner] 
AS

Select [RID] as EndUserRID
	,SE.[PartnerID] AS SBURID
	,SE.CreatedOn
	,SE.LastModifiedOn
from main.PartnerEndUsers SE
join main.[PopulationBase] PB
	on SE.RID = PB.OriginRID
join main.[Partner] P
	on SE.PartnerID = P.ID
GO
/****** Object:  Table [main].[CarePlanRecipients]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[CarePlanRecipients](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CarePlanID] [bigint] NOT NULL,
	[CareRecipientID] [bigint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CustomFlowGroupsId] [bigint] NULL,
	[Status] [smallint] NOT NULL,
	[OverRiding] [bit] NOT NULL,
	[Channel] [smallint] NOT NULL,
	[Frequency] [int] NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[AutomatedCallsSchedule]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[AutomatedCallsSchedule](
	[CallRecipientRID] [bigint] NOT NULL,
	[PhoneNumber] [varchar](11) NULL,
	[InputArguments] [xml] NULL,
	[IsRecurring] [bit] NOT NULL,
	[CallOutGraph] [xml] NULL,
	[DTUTC_NextExecutionTime] [datetime] NOT NULL,
	[IsLocked] [bit] NOT NULL,
	[DTUTC_SuspendedFrom] [datetime] NULL,
	[DTUTC_SuspendedTo] [datetime] NULL,
	[CreatedByRID] [bigint] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[workflowtemplate] [nvarchar](40) NOT NULL,
	[Retry] [int] NOT NULL,
	[Shift] [tinyint] NULL,
	[InstanceId] [int] NULL,
	[IsCustomFlow] [bit] NULL,
	[WeekDay] [int] NULL,
	[Call] [int] NULL,
	[IvrClient] [nvarchar](40) NULL,
	[DisableVoicemail] [bit] NULL,
	[DTUTC_LastExecuted] [datetime] NULL,
	[CampaignID] [varchar](255) NOT NULL,
	[PopulationGroupID] [varchar](255) NOT NULL,
	[FileuploadID] [varchar](255) NULL,
 CONSTRAINT [PK_AutomatedCallsSchedule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[CarePlanRecipientsSchedule]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[CarePlanRecipientsSchedule](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CarePlanRecipientsID] [bigint] NOT NULL,
	[AutomatedCallsScheduleID] [bigint] NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[CarePlan]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[CarePlan](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PartnerID] [bigint] NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](4000) NULL,
	[CarePlanGroupID] [int] NULL,
	[Duration] [int] NOT NULL,
	[UnitMeasure] [smallint] NOT NULL,
	[Schedule] [smallint] NOT NULL,
	[Segment] [smallint] NOT NULL,
	[Scope] [int] NOT NULL,
	[Exclude] [bit] NULL,
	[FlowTemplate] [nvarchar](40) NULL,
	[Attempts] [varchar](4000) NULL,
	[Continuous] [bit] NOT NULL,
	[LanguageId] [tinyint] NOT NULL,
	[Frequency] [int] NOT NULL,
	[TextToSpeech] [bit] NULL,
	[Voice] [varchar](20) NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[IsDeactivated] [bit] NULL,
 CONSTRAINT [PK_CarePlan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [IVR].[CarePlanRecipient]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
Migrated based on view [IVR][VI_CustomFlowRecipient]
*/
CREATE VIEW [IVR].[CarePlanRecipient] AS
SELECT 
    cp.[Id],
    cp.[Name],
    cp.[Description],
    cp.[CarePlanGroupID],
    cp.[Duration],
    cp.[UnitMeasure],
    cp.[Schedule],
    cp.[Segment],
    cp.[Scope],
    cp.[FlowTemplate],
    cpr.[Id] AS CarePlanRecipientId,
    cpr.[CareRecipientId],
    cpr.[StartDate],
    cpr.[EndDate],
    cpr.[Status] AS CarePlanRecipientStatus,
    cpr.[OverRiding],
    cpr.[Channel],
    cpr.[CustomFlowGroupsId],
    cpr.[CreatedOn],
    cp.[LanguageId],
    (
        SELECT TOP 1 ACS.ivrclient 
        FROM [main].[CarePlanRecipients] cpr2
        INNER JOIN [main].[CarePlanRecipientsSchedule] CPRS ON cpr2.Id = CPRS.CarePlanRecipientsID
        INNER JOIN [main].[AutomatedCallsSchedule] ACS ON CPRS.AutomatedCallsScheduleId = ACS.Id
        WHERE cpr.CareRecipientId = cpr2.CareRecipientId
          AND cpr.CarePlanID = cpr2.CarePlanID
    ) AS Client
FROM 
    [main].[CarePlan] cp
LEFT JOIN 
    [main].[CarePlanRecipients] cpr ON cp.Id = cpr.CarePlanId;
GO
/****** Object:  Table [EmpowerHealth].[PersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EmpowerHealth].[PersonInfo](
	[SBURID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[FName] [nvarchar](100) NULL,
	[MName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[MaidenName] [nvarchar](100) NULL,
	[SingleName] [nvarchar](100) NULL,
	[XofYName] [nvarchar](100) NULL,
	[Title] [nvarchar](50) NULL,
	[Ordinal] [nvarchar](50) NULL,
	[Nickname] [nvarchar](100) NULL,
	[DOB] [date] NULL,
	[Gender] [int] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_PersonInfo] PRIMARY KEY CLUSTERED 
(
	[RID] ASC,
	[SBURID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [EmpowerHealth].[vPersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [EmpowerHealth].[vPersonInfo] AS	
            SELECT [RID] ,
		        [FName] ,
		        [MName] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN REPLACE(TRIM(REPLACE(LName, 'JR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN REPLACE(TRIM(REPLACE(LName, 'SR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN REPLACE(TRIM(REPLACE(LName, 'I', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN REPLACE(TRIM(REPLACE(LName, 'II', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN REPLACE(TRIM(REPLACE(LName, 'III', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN REPLACE(TRIM(REPLACE(LName, 'IV', '')), '  ', ' ')
			        ELSE [LName]
		        END AS [LName] ,
		        [MaidenName] ,
		        [SingleName] ,
		        [XofYName] ,
		        [Title] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN 'JR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN 'SR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN 'I'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN 'II'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN 'III'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN 'IV'
			        ELSE [Ordinal]
		        END AS [Ordinal] ,
		        [Nickname] ,
		        [DOB] ,
		        [Gender] ,
		        [DTUTC_Created] ,
		        [DTUTC_Modified] ,
		        [PropBag]
	    FROM EmpowerHealth.PersonInfo
GO
/****** Object:  Table [UHC].[PersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [UHC].[PersonInfo](
	[SBURID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[FName] [nvarchar](100) NULL,
	[MName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[MaidenName] [nvarchar](100) NULL,
	[SingleName] [nvarchar](100) NULL,
	[XofYName] [nvarchar](100) NULL,
	[Title] [nvarchar](50) NULL,
	[Ordinal] [nvarchar](50) NULL,
	[Nickname] [nvarchar](100) NULL,
	[DOB] [date] NULL,
	[Gender] [int] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_PersonInfo] PRIMARY KEY CLUSTERED 
(
	[SBURID] ASC,
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [UHC].[vPersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [UHC].[vPersonInfo] AS	
            SELECT [RID] ,
		        [FName] ,
		        [MName] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN REPLACE(TRIM(REPLACE(LName, 'JR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN REPLACE(TRIM(REPLACE(LName, 'SR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN REPLACE(TRIM(REPLACE(LName, 'I', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN REPLACE(TRIM(REPLACE(LName, 'II', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN REPLACE(TRIM(REPLACE(LName, 'III', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN REPLACE(TRIM(REPLACE(LName, 'IV', '')), '  ', ' ')
			        ELSE [LName]
		        END AS [LName] ,
		        [MaidenName] ,
		        [SingleName] ,
		        [XofYName] ,
		        [Title] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN 'JR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN 'SR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN 'I'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN 'II'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN 'III'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN 'IV'
			        ELSE [Ordinal]
		        END AS [Ordinal] ,
		        [Nickname] ,
		        [DOB] ,
		        [Gender] ,
		        [DTUTC_Created] ,
		        [DTUTC_Modified] ,
		        [PropBag]
	    FROM UHC.PersonInfo
GO
/****** Object:  Table [ccsss].[PersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ccsss].[PersonInfo](
	[SBURID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[FName] [nvarchar](100) NULL,
	[MName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[MaidenName] [nvarchar](100) NULL,
	[SingleName] [nvarchar](100) NULL,
	[XofYName] [nvarchar](100) NULL,
	[Title] [nvarchar](50) NULL,
	[Ordinal] [nvarchar](50) NULL,
	[Nickname] [nvarchar](100) NULL,
	[DOB] [date] NULL,
	[Gender] [int] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_PersonInfo] PRIMARY KEY CLUSTERED 
(
	[SBURID] ASC,
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [ccsss].[vPersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [ccsss].[vPersonInfo] AS	
            SELECT [RID] ,
		        [FName] ,
		        [MName] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN REPLACE(TRIM(REPLACE(LName, 'JR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN REPLACE(TRIM(REPLACE(LName, 'SR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN REPLACE(TRIM(REPLACE(LName, 'I', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN REPLACE(TRIM(REPLACE(LName, 'II', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN REPLACE(TRIM(REPLACE(LName, 'III', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN REPLACE(TRIM(REPLACE(LName, 'IV', '')), '  ', ' ')
			        ELSE [LName]
		        END AS [LName] ,
		        [MaidenName] ,
		        [SingleName] ,
		        [XofYName] ,
		        [Title] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN 'JR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN 'SR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN 'I'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN 'II'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN 'III'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN 'IV'
			        ELSE [Ordinal]
		        END AS [Ordinal] ,
		        [Nickname] ,
		        [DOB] ,
		        [Gender] ,
		        [DTUTC_Created] ,
		        [DTUTC_Modified] ,
		        [PropBag]
	    FROM ccsss.PersonInfo
GO
/****** Object:  Table [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[PersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[PersonInfo](
	[SBURID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[FName] [nvarchar](100) NULL,
	[MName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[MaidenName] [nvarchar](100) NULL,
	[SingleName] [nvarchar](100) NULL,
	[XofYName] [nvarchar](100) NULL,
	[Title] [nvarchar](50) NULL,
	[Ordinal] [nvarchar](50) NULL,
	[Nickname] [nvarchar](100) NULL,
	[DOB] [date] NULL,
	[Gender] [int] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_PersonInfo] PRIMARY KEY CLUSTERED 
(
	[SBURID] ASC,
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[vPersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[vPersonInfo] AS	
            SELECT [RID] ,
		        [FName] ,
		        [MName] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN REPLACE(TRIM(REPLACE(LName, 'JR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN REPLACE(TRIM(REPLACE(LName, 'SR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN REPLACE(TRIM(REPLACE(LName, 'I', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN REPLACE(TRIM(REPLACE(LName, 'II', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN REPLACE(TRIM(REPLACE(LName, 'III', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN REPLACE(TRIM(REPLACE(LName, 'IV', '')), '  ', ' ')
			        ELSE [LName]
		        END AS [LName] ,
		        [MaidenName] ,
		        [SingleName] ,
		        [XofYName] ,
		        [Title] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN 'JR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN 'SR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN 'I'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN 'II'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN 'III'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN 'IV'
			        ELSE [Ordinal]
		        END AS [Ordinal] ,
		        [Nickname] ,
		        [DOB] ,
		        [Gender] ,
		        [DTUTC_Created] ,
		        [DTUTC_Modified] ,
		        [PropBag]
	    FROM xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc.PersonInfo
GO
/****** Object:  Table [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[PersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[PersonInfo](
	[SBURID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[FName] [nvarchar](100) NULL,
	[MName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[MaidenName] [nvarchar](100) NULL,
	[SingleName] [nvarchar](100) NULL,
	[XofYName] [nvarchar](100) NULL,
	[Title] [nvarchar](50) NULL,
	[Ordinal] [nvarchar](50) NULL,
	[Nickname] [nvarchar](100) NULL,
	[DOB] [date] NULL,
	[Gender] [int] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_PersonInfo] PRIMARY KEY CLUSTERED 
(
	[SBURID] ASC,
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[vPersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[vPersonInfo] AS	
            SELECT [RID] ,
		        [FName] ,
		        [MName] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN REPLACE(TRIM(REPLACE(LName, 'JR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN REPLACE(TRIM(REPLACE(LName, 'SR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN REPLACE(TRIM(REPLACE(LName, 'I', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN REPLACE(TRIM(REPLACE(LName, 'II', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN REPLACE(TRIM(REPLACE(LName, 'III', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN REPLACE(TRIM(REPLACE(LName, 'IV', '')), '  ', ' ')
			        ELSE [LName]
		        END AS [LName] ,
		        [MaidenName] ,
		        [SingleName] ,
		        [XofYName] ,
		        [Title] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN 'JR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN 'SR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN 'I'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN 'II'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN 'III'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN 'IV'
			        ELSE [Ordinal]
		        END AS [Ordinal] ,
		        [Nickname] ,
		        [DOB] ,
		        [Gender] ,
		        [DTUTC_Created] ,
		        [DTUTC_Modified] ,
		        [PropBag]
	    FROM cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb.PersonInfo
GO
/****** Object:  Table [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[PersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[PersonInfo](
	[SBURID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[FName] [nvarchar](100) NULL,
	[MName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[MaidenName] [nvarchar](100) NULL,
	[SingleName] [nvarchar](100) NULL,
	[XofYName] [nvarchar](100) NULL,
	[Title] [nvarchar](50) NULL,
	[Ordinal] [nvarchar](50) NULL,
	[Nickname] [nvarchar](100) NULL,
	[DOB] [date] NULL,
	[Gender] [int] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_PersonInfo] PRIMARY KEY CLUSTERED 
(
	[SBURID] ASC,
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[vPersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[vPersonInfo] AS	
            SELECT [RID] ,
		        [FName] ,
		        [MName] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN REPLACE(TRIM(REPLACE(LName, 'JR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN REPLACE(TRIM(REPLACE(LName, 'SR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN REPLACE(TRIM(REPLACE(LName, 'I', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN REPLACE(TRIM(REPLACE(LName, 'II', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN REPLACE(TRIM(REPLACE(LName, 'III', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN REPLACE(TRIM(REPLACE(LName, 'IV', '')), '  ', ' ')
			        ELSE [LName]
		        END AS [LName] ,
		        [MaidenName] ,
		        [SingleName] ,
		        [XofYName] ,
		        [Title] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN 'JR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN 'SR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN 'I'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN 'II'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN 'III'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN 'IV'
			        ELSE [Ordinal]
		        END AS [Ordinal] ,
		        [Nickname] ,
		        [DOB] ,
		        [Gender] ,
		        [DTUTC_Created] ,
		        [DTUTC_Modified] ,
		        [PropBag]
	    FROM cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33.PersonInfo
GO
/****** Object:  Table [sas].[PersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sas].[PersonInfo](
	[SBURID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[FName] [nvarchar](100) NULL,
	[MName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[MaidenName] [nvarchar](100) NULL,
	[SingleName] [nvarchar](100) NULL,
	[XofYName] [nvarchar](100) NULL,
	[Title] [nvarchar](50) NULL,
	[Ordinal] [nvarchar](50) NULL,
	[Nickname] [nvarchar](100) NULL,
	[DOB] [date] NULL,
	[Gender] [int] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_PersonInfo] PRIMARY KEY CLUSTERED 
(
	[SBURID] ASC,
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [sas].[vPersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [sas].[vPersonInfo] AS	
            SELECT [RID] ,
		        [FName] ,
		        [MName] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN REPLACE(TRIM(REPLACE(LName, 'JR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN REPLACE(TRIM(REPLACE(LName, 'SR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN REPLACE(TRIM(REPLACE(LName, 'I', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN REPLACE(TRIM(REPLACE(LName, 'II', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN REPLACE(TRIM(REPLACE(LName, 'III', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN REPLACE(TRIM(REPLACE(LName, 'IV', '')), '  ', ' ')
			        ELSE [LName]
		        END AS [LName] ,
		        [MaidenName] ,
		        [SingleName] ,
		        [XofYName] ,
		        [Title] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN 'JR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN 'SR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN 'I'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN 'II'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN 'III'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN 'IV'
			        ELSE [Ordinal]
		        END AS [Ordinal] ,
		        [Nickname] ,
		        [DOB] ,
		        [Gender] ,
		        [DTUTC_Created] ,
		        [DTUTC_Modified] ,
		        [PropBag]
	    FROM sas.PersonInfo
GO
/****** Object:  Table [aaanew].[PersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [aaanew].[PersonInfo](
	[SBURID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[FName] [nvarchar](100) NULL,
	[MName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[MaidenName] [nvarchar](100) NULL,
	[SingleName] [nvarchar](100) NULL,
	[XofYName] [nvarchar](100) NULL,
	[Title] [nvarchar](50) NULL,
	[Ordinal] [nvarchar](50) NULL,
	[Nickname] [nvarchar](100) NULL,
	[DOB] [date] NULL,
	[Gender] [int] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_PersonInfo] PRIMARY KEY CLUSTERED 
(
	[SBURID] ASC,
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [aaanew].[vPersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [aaanew].[vPersonInfo] AS	
            SELECT [RID] ,
		        [FName] ,
		        [MName] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN REPLACE(TRIM(REPLACE(LName, 'JR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN REPLACE(TRIM(REPLACE(LName, 'SR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN REPLACE(TRIM(REPLACE(LName, 'I', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN REPLACE(TRIM(REPLACE(LName, 'II', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN REPLACE(TRIM(REPLACE(LName, 'III', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN REPLACE(TRIM(REPLACE(LName, 'IV', '')), '  ', ' ')
			        ELSE [LName]
		        END AS [LName] ,
		        [MaidenName] ,
		        [SingleName] ,
		        [XofYName] ,
		        [Title] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN 'JR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN 'SR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN 'I'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN 'II'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN 'III'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN 'IV'
			        ELSE [Ordinal]
		        END AS [Ordinal] ,
		        [Nickname] ,
		        [DOB] ,
		        [Gender] ,
		        [DTUTC_Created] ,
		        [DTUTC_Modified] ,
		        [PropBag]
	    FROM aaanew.PersonInfo
GO
/****** Object:  Table [EHDEV].[PersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [EHDEV].[PersonInfo](
	[SBURID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[FName] [nvarchar](100) NULL,
	[MName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[MaidenName] [nvarchar](100) NULL,
	[SingleName] [nvarchar](100) NULL,
	[XofYName] [nvarchar](100) NULL,
	[Title] [nvarchar](50) NULL,
	[Ordinal] [nvarchar](50) NULL,
	[Nickname] [nvarchar](100) NULL,
	[DOB] [date] NULL,
	[Gender] [int] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_PersonInfo] PRIMARY KEY CLUSTERED 
(
	[SBURID] ASC,
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [EHDEV].[vPersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [EHDEV].[vPersonInfo] AS	
            SELECT [RID] ,
		        [FName] ,
		        [MName] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN REPLACE(TRIM(REPLACE(LName, 'JR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN REPLACE(TRIM(REPLACE(LName, 'SR', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN REPLACE(TRIM(REPLACE(LName, 'I', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN REPLACE(TRIM(REPLACE(LName, 'II', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN REPLACE(TRIM(REPLACE(LName, 'III', '')), '  ', ' ')
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN REPLACE(TRIM(REPLACE(LName, 'IV', '')), '  ', ' ')
			        ELSE [LName]
		        END AS [LName] ,
		        [MaidenName] ,
		        [SingleName] ,
		        [XofYName] ,
		        [Title] ,
		        CASE
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'JR' THEN 'JR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'SR' THEN 'SR'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'I' THEN 'I'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'II' THEN 'II'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'III' THEN 'III'
			        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2)) = 'IV' THEN 'IV'
			        ELSE [Ordinal]
		        END AS [Ordinal] ,
		        [Nickname] ,
		        [DOB] ,
		        [Gender] ,
		        [DTUTC_Created] ,
		        [DTUTC_Modified] ,
		        [PropBag]
	    FROM EHDEV.PersonInfo
GO
/****** Object:  View [EmpowerHealth].[PersonInfo_View]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [EmpowerHealth].[PersonInfo_View]
                        AS 
                            SELECT  
                            [RID]
                            ,[FName]
                            ,[MName]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                                ELSE [LName]
                                END AS [LName]
                            ,[MaidenName]
                            ,[SingleName]
                            ,[XofYName]
                            ,[Title]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                                ELSE [Ordinal]
                                END AS [Ordinal]
                            ,[Nickname]
                            ,[DOB]
                            ,[Gender]
                            ,[DTUTC_Created]
                            ,[DTUTC_Modified]
                            ,[PropBag]
                        FROM 
                        [EmpowerHealth].PersonInfo
GO
/****** Object:  View [UHC].[PersonInfo_View]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [UHC].[PersonInfo_View]
                        AS 
                            SELECT  
                            [RID]
                            ,[FName]
                            ,[MName]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                                ELSE [LName]
                                END AS [LName]
                            ,[MaidenName]
                            ,[SingleName]
                            ,[XofYName]
                            ,[Title]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                                ELSE [Ordinal]
                                END AS [Ordinal]
                            ,[Nickname]
                            ,[DOB]
                            ,[Gender]
                            ,[DTUTC_Created]
                            ,[DTUTC_Modified]
                            ,[PropBag]
                        FROM 
                        [UHC].PersonInfo
GO
/****** Object:  View [ccsss].[PersonInfo_View]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [ccsss].[PersonInfo_View]
                        AS 
                            SELECT  
                            [RID]
                            ,[FName]
                            ,[MName]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                                ELSE [LName]
                                END AS [LName]
                            ,[MaidenName]
                            ,[SingleName]
                            ,[XofYName]
                            ,[Title]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                                ELSE [Ordinal]
                                END AS [Ordinal]
                            ,[Nickname]
                            ,[DOB]
                            ,[Gender]
                            ,[DTUTC_Created]
                            ,[DTUTC_Modified]
                            ,[PropBag]
                        FROM 
                        [ccsss].PersonInfo
GO
/****** Object:  View [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[PersonInfo_View]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[PersonInfo_View]
                        AS 
                            SELECT  
                            [RID]
                            ,[FName]
                            ,[MName]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                                ELSE [LName]
                                END AS [LName]
                            ,[MaidenName]
                            ,[SingleName]
                            ,[XofYName]
                            ,[Title]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                                ELSE [Ordinal]
                                END AS [Ordinal]
                            ,[Nickname]
                            ,[DOB]
                            ,[Gender]
                            ,[DTUTC_Created]
                            ,[DTUTC_Modified]
                            ,[PropBag]
                        FROM 
                        [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].PersonInfo
GO
/****** Object:  View [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[PersonInfo_View]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[PersonInfo_View]
                        AS 
                            SELECT  
                            [RID]
                            ,[FName]
                            ,[MName]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                                ELSE [LName]
                                END AS [LName]
                            ,[MaidenName]
                            ,[SingleName]
                            ,[XofYName]
                            ,[Title]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                                ELSE [Ordinal]
                                END AS [Ordinal]
                            ,[Nickname]
                            ,[DOB]
                            ,[Gender]
                            ,[DTUTC_Created]
                            ,[DTUTC_Modified]
                            ,[PropBag]
                        FROM 
                        [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].PersonInfo
GO
/****** Object:  View [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[PersonInfo_View]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[PersonInfo_View]
                        AS 
                            SELECT  
                            [RID]
                            ,[FName]
                            ,[MName]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                                ELSE [LName]
                                END AS [LName]
                            ,[MaidenName]
                            ,[SingleName]
                            ,[XofYName]
                            ,[Title]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                                ELSE [Ordinal]
                                END AS [Ordinal]
                            ,[Nickname]
                            ,[DOB]
                            ,[Gender]
                            ,[DTUTC_Created]
                            ,[DTUTC_Modified]
                            ,[PropBag]
                        FROM 
                        [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].PersonInfo
GO
/****** Object:  View [sas].[PersonInfo_View]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [sas].[PersonInfo_View]
                        AS 
                            SELECT  
                            [RID]
                            ,[FName]
                            ,[MName]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                                ELSE [LName]
                                END AS [LName]
                            ,[MaidenName]
                            ,[SingleName]
                            ,[XofYName]
                            ,[Title]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                                ELSE [Ordinal]
                                END AS [Ordinal]
                            ,[Nickname]
                            ,[DOB]
                            ,[Gender]
                            ,[DTUTC_Created]
                            ,[DTUTC_Modified]
                            ,[PropBag]
                        FROM 
                        [sas].PersonInfo
GO
/****** Object:  View [aaanew].[PersonInfo_View]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [aaanew].[PersonInfo_View]
                        AS 
                            SELECT  
                            [RID]
                            ,[FName]
                            ,[MName]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                                ELSE [LName]
                                END AS [LName]
                            ,[MaidenName]
                            ,[SingleName]
                            ,[XofYName]
                            ,[Title]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                                ELSE [Ordinal]
                                END AS [Ordinal]
                            ,[Nickname]
                            ,[DOB]
                            ,[Gender]
                            ,[DTUTC_Created]
                            ,[DTUTC_Modified]
                            ,[PropBag]
                        FROM 
                        [aaanew].PersonInfo
GO
/****** Object:  View [EHDEV].[PersonInfo_View]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [EHDEV].[PersonInfo_View]
                        AS 
                            SELECT  
                            [RID]
                            ,[FName]
                            ,[MName]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                                ELSE [LName]
                                END AS [LName]
                            ,[MaidenName]
                            ,[SingleName]
                            ,[XofYName]
                            ,[Title]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                                ELSE [Ordinal]
                                END AS [Ordinal]
                            ,[Nickname]
                            ,[DOB]
                            ,[Gender]
                            ,[DTUTC_Created]
                            ,[DTUTC_Modified]
                            ,[PropBag]
                        FROM 
                        [EHDEV].PersonInfo
GO
/****** Object:  Table [main].[PartnerGroupEndUsers]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[PartnerGroupEndUsers](
	[RID] [bigint] NOT NULL,
	[PartnerID] [bigint] NOT NULL,
	[PartnerGroupID] [bigint] NOT NULL,
	[PropBag] [xml] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_PartnerGroupEndUsers] PRIMARY KEY CLUSTERED 
(
	[RID] ASC,
	[PartnerGroupID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [main].[vRecipientPartners]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [main].[vRecipientPartners]
AS 
SELECT  
    [cr].[RID],
	[pe].[PartnerID],
	[pge].[PartnerGroupID],
	[r].[IsActive],
	[r].[IsTesting]
FROM main.CareRecipients cr WITH (NOLOCK)
INNER JOIN main.R r WITH (NOLOCK) ON  cr.RID = r.RID
LEFT JOIN main.PartnerEndUsers pe WITH (NOLOCK) ON [pe].RID = cr.RID
LEFT JOIN main.PartnerGroupEndUsers pge WITH (NOLOCK) ON cr.RID = pge.RID

GO
/****** Object:  Table [FileUpload].[OHS_Hist]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FileUpload].[OHS_Hist](
	[MBR_PGM_ID] [varchar](200) NULL,
	[PGM_TYP_DESC_HSR] [varchar](200) NULL,
	[SBSCR_ID_TXT] [varchar](200) NULL,
	[SRC_MBR_ID] [varchar](200) NULL,
	[SA_MEMBER_LAST_NM] [varchar](200) NULL,
	[SA_MEMBER_FIRST_NM] [varchar](200) NULL,
	[SA_MEMBER_MIDDLE_NM] [varchar](200) NULL,
	[SA_MEMBER_DOB] [varchar](200) NULL,
	[SA_MEMBER_GENDER] [varchar](200) NULL,
	[PHONE_HOME] [varchar](200) NULL,
	[PHONE_CELL] [varchar](200) NULL,
	[PHONE_ALT_HOME] [varchar](200) NULL,
	[PHONE_ALT_CELL] [varchar](200) NULL,
	[EMAIL] [varchar](200) NULL,
	[ADDR_LINE_1] [varchar](200) NULL,
	[ADDR_LINE_2] [varchar](200) NULL,
	[CITY] [varchar](200) NULL,
	[STATE] [varchar](200) NULL,
	[ZIP] [varchar](200) NULL,
	[Care_Manager_Last_Name] [varchar](200) NULL,
	[Care_Manager_First_Name] [varchar](200) NULL,
	[AutoGen_DATETIMESTAMP] [varchar](200) NULL,
	[Solution] [varchar](200) NULL,
	[ReportingAccountName] [varchar](200) NULL,
	[Policy_ID] [varchar](200) NULL,
	[MBR_DEVC] [varchar](200) NULL,
	[Trans_status] [varchar](200) NULL,
	[InsertDt] [datetime] NULL,
	[FileName] [varchar](200) NULL,
	[Policy_Name] [varchar](200) NULL,
	[PGM_TYP_ID] [varchar](10) NULL,
	[PGM_TYP_NAME] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [FileUpload].[udf_OHS_Get]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [FileUpload].[udf_OHS_Get](@externalId varchar(20)) returns table as 
return 
WITH cte AS(
    SELECT 
        SRC_MBR_ID
        ,PGM_TYP_DESC_HSR
        ,MBR_PGM_ID
        ,ROW_NUMBER() OVER(PARTITION BY SRC_MBR_ID ORDER BY InsertDt DESC ,PGM_TYP_DESC_HSR  DESC) as rn
    FROM FileUpload.OHS_Hist
    WHERE SRC_MBR_ID = @externalId
)
SELECT SRC_MBR_ID
        ,PGM_TYP_DESC_HSR 
        ,MBR_PGM_ID
FROM cte c 
WHERE rn = 1
GO
/****** Object:  Table [main].[PartnerGroup]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[PartnerGroup](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PartnerID] [bigint] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
	[PARENTRID] [bigint] NULL,
	[IsDefault] [bit] NULL,
 CONSTRAINT [PK_PartnerGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[CareGivers]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[CareGivers](
	[RID] [bigint] NOT NULL,
	[PhotoUrl] [nvarchar](255) NULL,
	[Language] [nvarchar](50) NULL,
	[Timezone] [nvarchar](50) NULL,
	[NotificationType] [int] NULL,
	[LastLogin] [datetime] NULL,
	[DTUTC_PlanEnd] [datetime] NULL,
	[PlanType] [int] NULL,
	[ExternalId] [nvarchar](255) NULL,
	[Designation] [nvarchar](10) NULL,
	[GiverType] [smallint] NULL,
	[CustomField1] [varchar](255) NULL,
	[CustomField2] [varchar](255) NULL,
	[CustomField3] [varchar](255) NULL,
	[CustomField4] [varchar](255) NULL,
	[IsPartnerDefaultGiver] [bit] NULL,
	[CareRoleID] [int] NULL,
	[SpecialtyID] [int] NULL,
	[TypeID] [int] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_CareGivers] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[PersonEmailAddresses]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[PersonEmailAddresses](
	[RID] [bigint] NOT NULL,
	[EmailAddressID] [bigint] NOT NULL,
	[EmailAddressUsageID] [int] NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[PropBag] [xml] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_PersonEmailAddresses] PRIMARY KEY CLUSTERED 
(
	[RID] ASC,
	[EmailAddressID] ASC,
	[EmailAddressUsageID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[EmailAddresses]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[EmailAddresses](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [nvarchar](150) NOT NULL,
	[IsValid] [bit] NOT NULL,
	[PropBag] [xml] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_EmailAddresses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ETLTEST].[PersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ETLTEST].[PersonInfo](
	[SBURID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[FName] [nvarchar](100) NULL,
	[MName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[MaidenName] [nvarchar](100) NULL,
	[SingleName] [nvarchar](100) NULL,
	[XofYName] [nvarchar](100) NULL,
	[Title] [nvarchar](50) NULL,
	[Ordinal] [nvarchar](50) NULL,
	[Nickname] [nvarchar](100) NULL,
	[DOB] [date] NULL,
	[Gender] [int] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_PersonInfo] PRIMARY KEY CLUSTERED 
(
	[SBURID] ASC,
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [main].[PersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [main].[PersonInfo] WITH SCHEMABINDING                   AS
	                SELECT [RID]
                                ,[FName]
                                ,[MName]
                                ,CASE 
                                    WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                                    WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                                    WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                                    WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                                    WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                                    WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                                    ELSE [LName]
                                    END AS [LName]
                                ,[MaidenName]
                                ,[SingleName]
                                ,[XofYName]
                                ,[Title]
                                ,CASE 
                                    WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                                    WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                                    WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                                    WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                                    WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                                    WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                                    ELSE [Ordinal]
                                    END AS [Ordinal]
                                ,[Nickname]
                                ,[DOB]
                                ,[Gender]
                                ,[DTUTC_Created]
                                ,[DTUTC_Modified]
                                ,[PropBag]
	                FROM EmpowerHealth.PersonInfo pi UNION ALL 
                        SELECT [RID]
                    ,[FName]
                    ,[MName]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                        ELSE [LName]
                        END AS [LName]
                    ,[MaidenName]
                    ,[SingleName]
                    ,[XofYName]
                    ,[Title]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                        ELSE [Ordinal]
                        END AS [Ordinal]
                    ,[Nickname]
                    ,[DOB]
                    ,[Gender]
                    ,[DTUTC_Created]
                    ,[DTUTC_Modified]
                    ,[PropBag]
                FROM UHC.PersonInfo UNION ALL 
                        SELECT [RID]
                    ,[FName]
                    ,[MName]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                        ELSE [LName]
                        END AS [LName]
                    ,[MaidenName]
                    ,[SingleName]
                    ,[XofYName]
                    ,[Title]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                        ELSE [Ordinal]
                        END AS [Ordinal]
                    ,[Nickname]
                    ,[DOB]
                    ,[Gender]
                    ,[DTUTC_Created]
                    ,[DTUTC_Modified]
                    ,[PropBag]
                FROM ccsss.PersonInfo UNION ALL 
                        SELECT [RID]
                    ,[FName]
                    ,[MName]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                        ELSE [LName]
                        END AS [LName]
                    ,[MaidenName]
                    ,[SingleName]
                    ,[XofYName]
                    ,[Title]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                        ELSE [Ordinal]
                        END AS [Ordinal]
                    ,[Nickname]
                    ,[DOB]
                    ,[Gender]
                    ,[DTUTC_Created]
                    ,[DTUTC_Modified]
                    ,[PropBag]
                FROM xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc.PersonInfo UNION ALL 
                        SELECT [RID]
                    ,[FName]
                    ,[MName]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                        ELSE [LName]
                        END AS [LName]
                    ,[MaidenName]
                    ,[SingleName]
                    ,[XofYName]
                    ,[Title]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                        ELSE [Ordinal]
                        END AS [Ordinal]
                    ,[Nickname]
                    ,[DOB]
                    ,[Gender]
                    ,[DTUTC_Created]
                    ,[DTUTC_Modified]
                    ,[PropBag]
                FROM cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb.PersonInfo UNION ALL 
                        SELECT [RID]
                    ,[FName]
                    ,[MName]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                        ELSE [LName]
                        END AS [LName]
                    ,[MaidenName]
                    ,[SingleName]
                    ,[XofYName]
                    ,[Title]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                        ELSE [Ordinal]
                        END AS [Ordinal]
                    ,[Nickname]
                    ,[DOB]
                    ,[Gender]
                    ,[DTUTC_Created]
                    ,[DTUTC_Modified]
                    ,[PropBag]
                FROM cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33.PersonInfo UNION ALL 
                        SELECT [RID]
                    ,[FName]
                    ,[MName]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                        ELSE [LName]
                        END AS [LName]
                    ,[MaidenName]
                    ,[SingleName]
                    ,[XofYName]
                    ,[Title]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                        ELSE [Ordinal]
                        END AS [Ordinal]
                    ,[Nickname]
                    ,[DOB]
                    ,[Gender]
                    ,[DTUTC_Created]
                    ,[DTUTC_Modified]
                    ,[PropBag]
                FROM sas.PersonInfo UNION ALL 
                        SELECT [RID]
                    ,[FName]
                    ,[MName]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                        ELSE [LName]
                        END AS [LName]
                    ,[MaidenName]
                    ,[SingleName]
                    ,[XofYName]
                    ,[Title]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                        ELSE [Ordinal]
                        END AS [Ordinal]
                    ,[Nickname]
                    ,[DOB]
                    ,[Gender]
                    ,[DTUTC_Created]
                    ,[DTUTC_Modified]
                    ,[PropBag]
                FROM aaanew.PersonInfo UNION ALL 
                        SELECT [RID]
                    ,[FName]
                    ,[MName]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                        ELSE [LName]
                        END AS [LName]
                    ,[MaidenName]
                    ,[SingleName]
                    ,[XofYName]
                    ,[Title]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                        ELSE [Ordinal]
                        END AS [Ordinal]
                    ,[Nickname]
                    ,[DOB]
                    ,[Gender]
                    ,[DTUTC_Created]
                    ,[DTUTC_Modified]
                    ,[PropBag]
                FROM EHDEV.PersonInfo UNION ALL 
                        SELECT [RID]
                    ,[FName]
                    ,[MName]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR'  THEN REPLACE(TRIM(REPLACE(LName,'JR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR'  THEN REPLACE(TRIM(REPLACE(LName,'SR','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I'   THEN REPLACE(TRIM(REPLACE(LName,'I','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II'  THEN REPLACE(TRIM(REPLACE(LName,'II','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN REPLACE(TRIM(REPLACE(LName,'III','')),'  ',' ')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV'  THEN REPLACE(TRIM(REPLACE(LName,'IV','')),'  ',' ')
                        ELSE [LName]
                        END AS [LName]
                    ,[MaidenName]
                    ,[SingleName]
                    ,[XofYName]
                    ,[Title]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'JR' THEN 'JR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'SR' THEN 'SR'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'I' THEN 'I'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'II' THEN 'II'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'III' THEN 'III'
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), ' ', '.'), 2))   = 'IV' THEN 'IV'
                        ELSE [Ordinal]
                        END AS [Ordinal]
                    ,[Nickname]
                    ,[DOB]
                    ,[Gender]
                    ,[DTUTC_Created]
                    ,[DTUTC_Modified]
                    ,[PropBag]
                FROM ETLTEST.PersonInfo
GO
/****** Object:  Table [main].[Phones]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[Phones](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PhoneCountryCode] [varchar](10) NOT NULL,
	[PhoneNumber] [varchar](16) NOT NULL,
	[PhoneExtension] [varchar](10) NULL,
	[FIPSCode] [varchar](10) NULL,
	[IsValid] [bit] NOT NULL,
	[PropBag] [xml] NULL,
	[CarrierTypeID] [int] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Phones] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uc_main_PhoneNumber] UNIQUE NONCLUSTERED 
(
	[PhoneCountryCode] ASC,
	[PhoneNumber] ASC,
	[PhoneExtension] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[PersonPhones]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[PersonPhones](
	[RID] [bigint] NOT NULL,
	[PhoneID] [bigint] NOT NULL,
	[PhoneUsageID] [int] NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[PropBag] [xml] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
	[PhoneStatusID] [int] NULL,
 CONSTRAINT [PK_PersonPhones] PRIMARY KEY CLUSTERED 
(
	[RID] ASC,
	[PhoneID] ASC,
	[PhoneUsageID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[GiversRecipients]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[GiversRecipients](
	[CareGiverID] [bigint] NOT NULL,
	[CareRecipientID] [bigint] NOT NULL,
	[Relation] [nvarchar](255) NOT NULL,
	[Participation] [tinyint] NOT NULL,
	[Notifications] [tinyint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[GiverRelation] [nvarchar](255) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_GiverRecipients] PRIMARY KEY CLUSTERED 
(
	[CareGiverID] ASC,
	[CareRecipientID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [main].[CareGiverDemographics]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [main].[CareGiverDemographics]
	AS
SELECT  
	 [gr].RID as ID
	,[pi].FName
	,[pi].LName
	,[pi].MName
	,[pi].DOB
	,[p].Name PartnerName
	,pcg.PartnerID
	,emailadd.EmailAddress as EmailAddress
	,phoneNum.PhoneNumber
	,Gender = CASE WHEN [pi].Gender = 0 THEN 'M'
				 WHEN [pi].Gender = 1 Then 'F'
			ELSE ' ' END  
	,r.IsActive as IsActive
	,r.IsTesting as IsTesting
	,gr.CreatedOn as DateCreated
	,gr.LastModifiedOn as DateModified
	,gr.CareRoleId
	,gr.Designation
	,gr.ExternalId
	,gr.SpecialtyId
	,gr.IsPartnerDefaultGiver
	,p.DisplayInAdminPortal as IsActivePartner
	,PartnerGroupFirst = (select top 1 gf.Name from main.PartnerGroupEndUsers ef
							join main.PartnerGroup gf on ef.PartnerGroupID = gf.ID
							where ef.RID = gr.RID)
	,ActiveCareRecipients = (select count(*)
				FROM main.[GiversRecipients] gri
				JOIN main.CareRecipients cri on gri.CareRecipientID = cri.RID
				JOIN MAIN.R R1 ON CRI.RID = R1.RID
				 where gri.CareGiverID = [gr].RID and R1.IsActive = 1 and gri.IsActive = 1 and R1.IsTesting = 0
	)
FROM [main].[CareGivers] [gr] 
JOIN [main].R r on gr.Rid = r.RID
JOIN [main].[PartnerEndUsers] pcg on gr.RID = pcg.RID	
JOIN main.[Partner] [p] on pcg.PartnerID = [p].ID
LEFT JOIN main.[PersonInfo] [pi]  ON gr.RID = [pi].RID
LEFT JOIN main.[PersonEmailAddresses] remail ON gr.RID = remail.RID
LEFT JOIN main.[EmailAddresses] emailadd ON remail.EmailAddressID = emailadd.ID
LEFT JOIN main.[Phones] phoneNum ON phoneNum.ID = (select top 1 PhoneID from main.PersonPhones where RID = [gr].RID AND PhoneUsageId <> 4)
GO
/****** Object:  View [main].[CareRecipientDemographics]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [main].[CareRecipientDemographics]
AS
	SELECT 
	crs.RID as ID, 
	[pi].FName AS FirstName, 
	[pi].MName AS MiddleName,
	[pi].LName AS LastName,
	[pi].Ordinal,
	[pi].DOB, 
	[pi].Gender, 
	crs.StartDate, 
	gg.PartnerID, 
	r.IsTesting, 
	GivPi.FName AS GiverFirstName,  
	GivPi.LName AS GiverLastName, 
	gr.CareGiverID, 
	phoneNum.PhoneNumber, 
	r.IsActive, 
	[pi].DTUTC_Created AS RecipientDtutcCreated, 
	[pi].DTUTC_Modified AS RecipientDtutcModified,   
	csbu.Name AS PartnerName, 
	csbug.Name AS GroupName, 
	csbug.ID AS GroupId, 
	DATEDIFF(year, [pi].DOB,  GetUtcDate()) AS Age, 
	crs.IsProfileComplete
FROM   main.CareRecipients AS crs
INNER JOIN main.R r on crs.RID = r.RID 
INNER JOIN main.[PartnerGroupEndUsers] gg on crs.RID = gg.RID
LEFT JOIN main.PersonInfo AS [pi] ON [pi].RID = gg.RID
LEFT JOIN main.GiversRecipients AS gr ON gr.CareRecipientID = crs.RID AND gr.IsAdmin = 1 
LEFT JOIN main.PersonInfo AS GivPi ON gr.CareGiverID = GivPi.RID 
LEFT JOIN main.Phones AS phoneNum ON phoneNum.ID =
                      (SELECT TOP (1) PhoneID
                       FROM      main.PersonPhones p
                       WHERE   (p.RID = crs.RID)
                       ORDER BY IsPrimary DESC, CASE WHEN PhoneUsageID = 3 THEN 1 WHEN PhoneUsageID = 1 THEN 2 ELSE 5 END) 
LEFT JOIN main.PartnerGroup AS csbug ON gg.PartnerGroupID = csbug.ID
LEFT JOIN main.Partner AS csbu ON gg.PartnerID = csbu.ID 
GO
/****** Object:  Table [main].[PersonAddresses]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[PersonAddresses](
	[RID] [bigint] NOT NULL,
	[AddressID] [int] NOT NULL,
	[AddressUsageID] [int] NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[PropBag] [xml] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Person_Addresses] PRIMARY KEY CLUSTERED 
(
	[RID] ASC,
	[AddressID] ASC,
	[AddressUsageID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[Addresses]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[Addresses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AddressLine1] [nvarchar](255) NOT NULL,
	[AddressLine2] [nvarchar](150) NULL,
	[AddressLine3] [nvarchar](150) NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[ZipCode] [nvarchar](20) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[IsValid] [bit] NOT NULL,
	[PropBag] [xml] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_main_Addresses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [uc_main_Address] UNIQUE NONCLUSTERED 
(
	[AddressLine1] ASC,
	[AddressLine2] ASC,
	[AddressLine3] ASC,
	[City] ASC,
	[State] ASC,
	[ZipCode] ASC,
	[CountryCode] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [main].[CareRecipientDemographicsBAK]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [main].[CareRecipientDemographicsBAK]
   AS
   SELECT 
		 [RID] = crs.RID 
		,[FirstName] = [pi].FName 
		,[MiddleName] = [pi].MName
		,[LastName] = [pi].LName
		,[Ordinal] = [pi].Ordinal
		,[DOB] = [pi].DOB 
		,[Gender] = [pi].Gender 
		,[StartDate] = crs.StartDate 
		,[PartnerID] = gg.PartnerID 
		,[IsTesting] = r.IsTesting 
		,[GiverFirstName] = GivPi.FName  
		,[GiverLastName] = GivPi.LName 
		,[CareGiverID] = gr.CareGiverID 
		,[PhoneNumber] = phoneNum.PhoneNumber 
		,[IsActive] = r.IsActive 
		,[PartnerName] = csbu.[Name] 
		,[GroupName] = csbug.[Name] 
		,[GroupID] = csbug.ID 
		,[Age] = DATEDIFF(year, [pi].DOB,  GetUtcDate()) 
		,[HContract] = [crs].[CustomField4]
		,[PBP] = [crs].[CustomField5]
		,[AppointmentPlan] = [crs].[CustomField6]
		,[InsuranceCompany] = [crs].[CustomField7]
		,[ProspectSourceCode] = [crs].[CustomField1]
		,[MedicareNumber] = [crs].[CustomField2]
		,[ExtraField3] = [crs].[CustomField3]
		,[ExternalID] = [crs].[ExternalID]
		,[SegmentID] = [crs].[SegmentId] 
		,[AddressLine1] = a.AddressLine1
		,[AddressLine2] = a.AddressLine2
		,[AddressLine3] = a.AddressLine3
		,[City] = a.City
		,[StateCode] = a.[State]
		,[ZipCode] = a.ZipCode
		,[CountryCode] = a.CountryCode
		,[CarePlan] = cp.[Name]
	FROM [main].CareRecipients AS crs  WITH (NOLOCK)
	INNER JOIN [main].[R] r  WITH (NOLOCK) on crs.RID = r.RID 
	INNER JOIN [main].[PartnerGroupEndUsers] gg  WITH (NOLOCK) on crs.RID = gg.RID
	LEFT JOIN [main].[PersonInfo] AS [pi]  WITH (NOLOCK) ON [pi].RID = gg.RID
	OUTER APPLY (select top 1 gr0.* from [main].[GiversRecipients] AS gr0  WITH (NOLOCK) where gr0.CareRecipientID = crs.RID AND gr0.IsAdmin = 1 ) gr
	LEFT JOIN [main].[PersonInfo] AS GivPi  WITH (NOLOCK) ON gr.CareGiverID = GivPi.RID 
	LEFT JOIN [main].[PartnerGroup] AS csbug  WITH (NOLOCK) ON gg.PartnerGroupID = csbug.ID
	LEFT JOIN [main].[Partner] AS csbu ON gg.PartnerID = csbu.ID 
	OUTER APPLY (
		SELECT TOP 1 ra.AddressID
		FROM [main].[PersonAddresses] ra WITH (NOLOCK) 
		WHERE ra.RID = crs.RID AND ra.[IsPrimary] = 1
	) AS pa
	LEFT JOIN [main].[Addresses] a  ON a.ID = pa.AddressID
	OUTER APPLY (
		SELECT TOP 1  acs.workflowtemplate as CarePlanID
		FROM [main].[AutomatedCallsSchedule] acs  WITH (NOLOCK)
		WHERE ISNUMERIC(acs.workflowtemplate) = 1
		AND acs.CallRecipientRID = crs.RID
		AND acs.IsLocked = 0
		AND GETUTCDATE() <= acs.DTUTC_NextExecutionTime
	) AS acs
	LEFT JOIN [main].CarePlan cp on cp.ID = acs.CarePlanID
	OUTER APPLY (
		SELECT TOP 1
			pp.PhoneID
		FROM [main].[PersonPhones] pp  WITH (NOLOCK)
		WHERE pp.RID = crs.RID
		ORDER BY pp.IsPrimary DESC, 
				 CASE 
					WHEN pp.PhoneUsageID = 3 THEN 1 
					WHEN pp.PhoneUsageID = 1 THEN 2 
					ELSE 5 
				 END
	) AS PP	
	LEFT JOIN [main].[Phones] phoneNum on pp.PhoneID = phoneNum.ID	
	
GO
/****** Object:  View [main].[PartnerPartnerGroupCareplan]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [main].[PartnerPartnerGroupCareplan] 
AS(
	SELECT SC.PartnerID AS SBURID
			,SC.ID AS CustomFlowId
			,SBUGroupID = G.ID
	FROM main.CarePlan SC
	JOIN main.PartnerGroup G
		ON SC.PartnerID = G.PartnerID
)
GO
/****** Object:  View [main].[PopulationBaseGivers]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [main].[PopulationBaseGivers]
AS

SELECT GR.[CareGiverID]
      ,GR.[CareRecipientID]
      ,GR.[Relation]
      ,GR.[Participation]
      ,GR.[Notifications]
      ,GR.[IsActive]
      ,GR.[GiverRelation]
      ,GR.[IsAdmin]
FROM main.[GiversRecipients] GR
JOIN main.[PopulationBase] PB
	on PB. [OriginRID]= GR.CareRecipientID
JOIN main.[CareGivers] G
	ON G.[RID]= GR.CareGiverID
GO
/****** Object:  Table [CareChat].[Instance]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CareChat].[Instance](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ScheduleId] [bigint] NULL,
	[ChatId] [varchar](100) NULL,
	[WorkflowId] [bigint] NULL,
	[TwilioConversationId] [varchar](100) NULL,
	[InvitationChannel] [varchar](100) NULL,
	[InvitationCarePlan] [int] NULL,
	[InvitationScheduleId] [bigint] NULL,
	[InvitationClient] [varchar](100) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RecipientCall]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [dbo].[RecipientCall]
(
	[WorkflowId] [bigint] NOT NULL,
	[CRRID] [bigint] NOT NULL,
	[Status] [smallint] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[CountCall] [bit] NOT NULL,
	[workflowName] [varchar](50) NULL,
	[CallRecordingUrl] [nvarchar](4000) NULL,
	[IvrClient] [nvarchar](40) NULL,
	[RecordingDuration] [bigint] NULL,
	[ScheduleId] [bigint] NULL,
	[PhoneNumber] [varchar](16) NULL
)
WITH (DATA_SOURCE = [CAREANGEL_CLINICAL2],SCHEMA_NAME = N'dbo',OBJECT_NAME = N'RecipientCall')
GO
/****** Object:  Table [dbo].[RecipientStudy]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [dbo].[RecipientStudy]
(
	[Id] [bigint] NOT NULL,
	[CRRID] [bigint] NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Method] [tinyint] NOT NULL,
	[Shift] [tinyint] NULL,
	[Status] [smallint] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[SuppliedByRID] [bigint] NOT NULL,
	[CountCall] [bit] NULL,
	[Notes] [nvarchar](255) NULL,
	[DroppedVital] [bigint] NULL,
	[WorkFlowId] [bigint] NULL,
	[VitalReadingsHashId] [bigint] NULL,
	[DTUTC_Modified] [datetime] NULL
)
WITH (DATA_SOURCE = [CAREANGEL_CLINICAL2],SCHEMA_NAME = N'dbo',OBJECT_NAME = N'RecipientStudy')
GO
/****** Object:  Table [dbo].[RecipientStudyVitalReadings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [dbo].[RecipientStudyVitalReadings]
(
	[StudyId] [bigint] NOT NULL,
	[VitalTypeId] [int] NOT NULL,
	[VitalValue] [nvarchar](255) NOT NULL,
	[VitalLevel] [tinyint] NULL,
	[VitalAlert] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[PromptId] [bigint] NULL,
	[Content] [nvarchar](4000) NULL
)
WITH (DATA_SOURCE = [CAREANGEL_CLINICAL2],SCHEMA_NAME = N'dbo',OBJECT_NAME = N'RecipientStudyVitalReadings')
GO
/****** Object:  Table [dbo].[SystemPrompts]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemPrompts](
	[Id] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [FileUpload].[FPTMBI_scriptconsent_Hist]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FileUpload].[FPTMBI_scriptconsent_Hist](
	[MBR_ID_CD] [varchar](200) NULL,
	[FNAME] [nvarchar](500) NULL,
	[LNAME] [nvarchar](500) NULL,
	[DOB] [varchar](500) NULL,
	[ADDR_LINE_1] [nvarchar](500) NULL,
	[ADDR_LINE_2] [nvarchar](500) NULL,
	[CITY_NM] [nvarchar](500) NULL,
	[ST_CD] [nvarchar](500) NULL,
	[ZIP_CD] [nvarchar](500) NULL,
	[GENDER_CD] [nvarchar](500) NULL,
	[PHONE_NUM] [nvarchar](500) NULL,
	[PRESCRIPTION_1] [nvarchar](500) NULL,
	[PRESCRIPTION_2] [nvarchar](500) NULL,
	[PRESCRIPTION_3] [nvarchar](500) NULL,
	[PRESCRIPTION_4] [nvarchar](500) NULL,
	[PRESCRIPTION_5] [nvarchar](500) NULL,
	[PRESCRIPTION_6] [nvarchar](500) NULL,
	[PRESCRIPTION_7] [nvarchar](500) NULL,
	[PRESCRIPTION_8] [nvarchar](500) NULL,
	[PRESCRIPTION_9] [nvarchar](500) NULL,
	[PRESCRIPTION_10] [nvarchar](500) NULL,
	[EFFECTIVE_DATE] [nvarchar](500) NULL,
	[InsertDt] [datetime] NULL,
	[Filename] [nvarchar](150) NULL,
	[PRESCRIPTION_1_NUMBER] [varchar](500) NULL,
	[PRESCRIPTION_2_NUMBER] [varchar](500) NULL,
	[PRESCRIPTION_3_NUMBER] [varchar](500) NULL,
	[PRESCRIPTION_4_NUMBER] [varchar](500) NULL,
	[PRESCRIPTION_5_NUMBER] [varchar](500) NULL,
	[PRESCRIPTION_6_NUMBER] [varchar](500) NULL,
	[PRESCRIPTION_7_NUMBER] [varchar](500) NULL,
	[PRESCRIPTION_8_NUMBER] [varchar](500) NULL,
	[PRESCRIPTION_9_NUMBER] [varchar](500) NULL,
	[PRESCRIPTION_10_NUMBER] [varchar](500) NULL,
	[FileuploadID] [uniqueidentifier] NULL,
	[PRESCRIPTION_1_HFF_ELIGIBLE] [varchar](200) NULL,
	[PRESCRIPTION_1_AUTO_REFILL_FLAG] [varchar](200) NULL,
	[PRESCRIPTION_2_HFF_ELIGIBLE] [varchar](200) NULL,
	[PRESCRIPTION_2_AUTO_REFILL_FLAG] [varchar](200) NULL,
	[PRESCRIPTION_3_HFF_ELIGIBLE] [varchar](200) NULL,
	[PRESCRIPTION_3_AUTO_REFILL_FLAG] [varchar](200) NULL,
	[PRESCRIPTION_4_HFF_ELIGIBLE] [varchar](200) NULL,
	[PRESCRIPTION_4_AUTO_REFILL_FLAG] [varchar](200) NULL,
	[PRESCRIPTION_5_HFF_ELIGIBLE] [varchar](200) NULL,
	[PRESCRIPTION_5_AUTO_REFILL_FLAG] [varchar](200) NULL,
	[PRESCRIPTION_6_HFF_ELIGIBLE] [varchar](200) NULL,
	[PRESCRIPTION_6_AUTO_REFILL_FLAG] [varchar](200) NULL,
	[PRESCRIPTION_7_HFF_ELIGIBLE] [varchar](200) NULL,
	[PRESCRIPTION_7_AUTO_REFILL_FLAG] [varchar](200) NULL,
	[PRESCRIPTION_8_HFF_ELIGIBLE] [varchar](200) NULL,
	[PRESCRIPTION_8_AUTO_REFILL_FLAG] [varchar](200) NULL,
	[PRESCRIPTION_9_HFF_ELIGIBLE] [varchar](200) NULL,
	[PRESCRIPTION_9_AUTO_REFILL_FLAG] [varchar](200) NULL,
	[PRESCRIPTION_10_HFF_ELIGIBLE] [varchar](200) NULL,
	[PRESCRIPTION_10_AUTO_REFILL_FLAG] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [FileUpload].[HealPlanLob]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FileUpload].[HealPlanLob](
	[CO_DIM_STATE] [varchar](2) NULL,
	[HEALTHPLAN_LOB] [varchar](50) NULL,
	[Medicaid-NonMedicaid] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [FileUpload].[PersonalExternalInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FileUpload].[PersonalExternalInfo](
	[partnerId] [int] NULL,
	[SourcetableName] [varchar](50) NULL,
	[SourceFieldName] [varchar](2000) NULL,
	[SourceFieldAlias] [varchar](50) NULL,
	[SourceFieldIsWhereCondition] [bit] NULL,
	[isSourceTableNameAFuntion] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [FileUpload].[Reemohealth_enrollment_Hist]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FileUpload].[Reemohealth_enrollment_Hist](
	[FirstName] [varchar](200) NULL,
	[MiddleInitial] [varchar](200) NULL,
	[LastName] [varchar](200) NULL,
	[DateofBirth] [varchar](200) NULL,
	[Gender] [varchar](200) NULL,
	[AddressLine1] [varchar](200) NULL,
	[AddressLine2] [varchar](200) NULL,
	[City] [varchar](200) NULL,
	[State] [varchar](200) NULL,
	[ZipCode] [varchar](200) NULL,
	[County] [varchar](200) NULL,
	[PrimaryPhone] [varchar](200) NULL,
	[UniqueID] [varchar](200) NULL,
	[Program] [varchar](200) NULL,
	[FileCreationDate] [varchar](200) NULL,
	[InsertDt] [datetime] NULL,
	[Filename] [varchar](200) NULL,
	[FileuploadID] [uniqueidentifier] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [FileUpload].[Wider_Circle_Connect_for_Life_Hist]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [FileUpload].[Wider_Circle_Connect_for_Life_Hist](
	[FirstName] [varchar](100) NULL,
	[MiddleInitial] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[DateofBirth] [varchar](100) NULL,
	[Gender] [varchar](100) NULL,
	[Ethnicity] [varchar](100) NULL,
	[AddressLine1] [varchar](100) NULL,
	[AddressLine2] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[ZipCode] [varchar](100) NULL,
	[PrimaryPhone] [varchar](100) NULL,
	[SecondaryPhone] [varchar](100) NULL,
	[Emailaddress] [varchar](100) NULL,
	[UniqueID] [varchar](100) NULL,
	[GroupName] [varchar](100) NULL,
	[FacilitatorName] [varchar](100) NULL,
	[EventDate] [varchar](100) NULL,
	[EventName] [varchar](100) NULL,
	[EventType] [varchar](100) NULL,
	[VenueStreet] [varchar](100) NULL,
	[VenueCity] [varchar](100) NULL,
	[VenueState] [varchar](100) NULL,
	[VenueZip] [varchar](100) NULL,
	[EventPhone] [varchar](100) NULL,
	[EventPIN] [varchar](100) NULL,
	[EventStatus] [varchar](100) NULL,
	[FileCreationDate] [varchar](100) NULL,
	[ClientName] [varchar](100) NULL,
	[EventTime] [varchar](100) NULL,
	[InsertDt] [datetime] NULL,
	[FileName] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[AddressesMaps]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[AddressesMaps](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AddressId] [int] NOT NULL,
	[StreetNumber] [nvarchar](50) NOT NULL,
	[StreetName] [nvarchar](255) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[ZipCode] [nvarchar](20) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AddressesMaps] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[CallBackConfig]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[CallBackConfig](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PhoneNumber] [nvarchar](16) NOT NULL,
	[CallBackFlow] [nvarchar](50) NOT NULL,
	[PartnerId] [bigint] NULL,
	[Description] [varchar](200) NULL,
	[GroupId] [bigint] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[CallInstance]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[CallInstance](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[InstanceData] [varchar](max) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
	[FinishedOn] [datetime] NULL,
 CONSTRAINT [PK_IVR.CallInstance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IVR].[CallStatus]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[CallStatus](
	[RecipientId] [bigint] NOT NULL,
	[CallStatus] [int] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[SchedulerId] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RecipientId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[CallTemplate]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[CallTemplate](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Template] [varchar](max) NOT NULL,
	[Exclude] [bit] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_CallTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IVR].[Clients]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[Clients](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Channel] [varchar](10) NULL,
	[Client] [varchar](15) NULL,
	[Provider] [varchar](10) NULL,
	[IsActive] [bit] NULL,
	[SendSMSCustom] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[DateFormats]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[DateFormats](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Format] [varchar](50) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[Active] [bit] NULL,
	[FormatType] [varchar](20) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[GiverAlerts]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[GiverAlerts](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CareGiverID] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[AlertText] [nvarchar](max) NOT NULL,
	[AlertType] [smallint] NOT NULL,
	[PropBag] [xml] NOT NULL,
	[Addressed] [bit] NOT NULL,
	[DisplayPopup] [bit] NULL,
 CONSTRAINT [PK_GiverAlerts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IVR].[GiverNotifications]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[GiverNotifications](
	[CareGiverID] [bigint] NOT NULL,
	[VitalTypeID] [bigint] NOT NULL,
	[NotificationFrequency] [smallint] NOT NULL,
	[NotificationMethods] [smallint] NULL,
 CONSTRAINT [PK_IVR.GiverNotifications] PRIMARY KEY CLUSTERED 
(
	[CareGiverID] ASC,
	[VitalTypeID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[GiverRelationPrompts]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[GiverRelationPrompts](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Description] [varchar](255) NULL,
	[PromptId] [int] NULL,
	[CareCircleRelationId] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[HContractPbpList]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[HContractPbpList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hcontract] [varchar](10) NULL,
	[Pbp] [varchar](10) NULL,
	[ListId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[LostCalls]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[LostCalls](
	[RecipientId] [bigint] NOT NULL,
	[CountLostCalls] [int] NULL,
	[CountPauses] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RecipientId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[MappingWordsToNumbers]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[MappingWordsToNumbers](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Word] [varchar](50) NOT NULL,
	[Number] [varchar](50) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[Active] [bit] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[OPTUM_API_CarePlan]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[OPTUM_API_CarePlan](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CarePlanId] [bigint] NULL,
	[Type] [tinyint] NULL,
	[AssessmentTemplateID] [varchar](10) NULL,
	[BuilderAssessmentID] [varchar](10) NULL,
	[RunApiOptum] [varchar](255) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[OPTUM_API_Mapping_v2]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[OPTUM_API_Mapping_v2](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OptumCampaign] [varchar](10) NULL,
	[OptumQuestionID] [varchar](50) NULL,
	[OptumQuestionType] [varchar](10) NULL,
	[OptumValue] [varchar](50) NULL,
	[EHQuestionID] [bigint] NULL,
	[EHVital] [bigint] NULL,
	[EHValue] [varchar](200) NULL,
	[EHWorkflowname] [varchar](200) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_OPTUM_API_Mapping_v2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[OPTUM_API_MappingICUE]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[OPTUM_API_MappingICUE](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActivityType] [varchar](15) NULL,
	[ActivityResolutionOutcomeType] [varchar](5) NULL,
	[Description] [varchar](500) NULL,
	[Vital] [bigint] NULL,
	[CallStatus] [tinyint] NULL,
	[VitalValue] [tinyint] NULL,
	[Attempts] [tinyint] NULL,
	[TypeDescHSR] [varchar](500) NULL,
	[PartnerId] [int] NULL,
	[UserID] [varchar](50) NULL,
	[ActivityResolutionReasonType] [varchar](50) NULL,
	[FunctionRoleType] [varchar](50) NULL,
	[IsDailyActivity] [bit] NULL,
	[OrderVital] [int] NULL,
	[ContactRoleType] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_OPTUM_API_MappingICUE] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[OPTUM_API_Outcome]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[OPTUM_API_Outcome](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OptumCampaign] [varchar](10) NULL,
	[OptumOutcome] [varchar](50) NULL,
	[EHCallStatus] [smallint] NULL,
	[EHOutboundCallStatus] [varchar](50) NULL,
	[EHVitaltypeId] [int] NULL,
	[EHVitalValue] [nvarchar](255) NULL,
	[EHWorkflowname] [varchar](200) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_OPTUM_API_Outcome] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[OPTUM_API_Score]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[OPTUM_API_Score](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Value] [varchar](10) NULL,
	[Score] [tinyint] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_OPTUM_API_Score] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[PersonalMessage]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[PersonalMessage](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CRRId] [bigint] NOT NULL,
	[Type] [nvarchar](255) NOT NULL,
	[MessageUrl] [nvarchar](255) NOT NULL,
	[CreatedByRId] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PersonalMessage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[Reactions]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[Reactions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ReactionType] [nvarchar](40) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IVR].[RecipientChannels]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[RecipientChannels](
	[CareRecipientId] [bigint] NOT NULL,
	[ChannelId] [tinyint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_RecipientChannels] PRIMARY KEY CLUSTERED 
(
	[CareRecipientId] ASC,
	[ChannelId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[Reminders]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[Reminders](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CRRID] [bigint] NOT NULL,
	[TypeID] [int] NOT NULL,
	[ReminderGraph] [xml] NOT NULL,
	[ReminderTemplateID] [int] NOT NULL,
	[InputArguments] [nvarchar](255) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[SuspendedUntil] [datetime] NULL,
	[CreatedByRID] [bigint] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_Reminder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IVR].[StatusCall]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[StatusCall](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[WorkflowId] [bigint] NULL,
	[WorkflowName] [varchar](300) NULL,
	[PhoneFrom] [varchar](50) NULL,
	[PhoneTo] [varchar](50) NULL,
	[DirectionCall] [varchar](50) NULL,
	[CurrentStatus] [varchar](50) NULL,
	[CurrentDateTime] [datetime] NULL,
	[Uuid] [varchar](50) NULL,
	[Conversation_uuid] [varchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[SummarySMSPostCall]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[SummarySMSPostCall](
	[WorkflowId] [bigint] NULL,
	[RecipientId] [int] NULL,
	[ContentSummarySMS] [nvarchar](1000) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[SystemInstructions]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[SystemInstructions](
	[InstructionId] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[InstructionId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[SystemOptions]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[SystemOptions](
	[Id] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [IVR].[TempCallTemplate]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[TempCallTemplate](
	[Id] [bigint] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Template] [varchar](max) NOT NULL,
	[Exclude] [bit] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_TempCallTemplate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [IVR].[ZipCodeState]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [IVR].[ZipCodeState](
	[ZipCode] [int] NOT NULL,
	[Market] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[ListId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [LegacyMain].[Addresses]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[Addresses]
(
	[ID] [int] NOT NULL,
	[AddressLine1] [nvarchar](255) NOT NULL,
	[AddressLine2] [nvarchar](150) NULL,
	[AddressLine3] [nvarchar](150) NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[ZipCode] [nvarchar](20) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[IsValid] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'core',OBJECT_NAME = N'Addresses')
GO
/****** Object:  Table [LegacyMain].[CareGivers]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[CareGivers]
(
	[RID] [bigint] NOT NULL,
	[PhotoUrl] [nvarchar](255) NULL,
	[Language] [nvarchar](50) NULL,
	[Timezone] [nvarchar](50) NULL,
	[DTUTC_Modified] [datetime] NULL,
	[NotificationType] [int] NULL,
	[LastLogin] [datetime] NULL,
	[DTUTC_PlanEnd] [datetime] NULL,
	[PlanType] [int] NULL,
	[ExternalId] [nvarchar](255) NULL,
	[Designation] [nvarchar](10) NULL,
	[GiverType] [smallint] NULL,
	[CustomField1] [varchar](255) NULL,
	[CustomField2] [varchar](255) NULL,
	[CustomField3] [varchar](255) NULL,
	[CustomField4] [varchar](255) NULL,
	[IsPartnerDefaultGiver] [bit] NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'CORE',OBJECT_NAME = N'CareGivers')
GO
/****** Object:  Table [LegacyMain].[CareRecipientDemographics]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[CareRecipientDemographics]
(
	[RID] [bigint] NOT NULL,
	[RecipientFirstName] [nvarchar](100) NULL,
	[RecipientLastName] [nvarchar](100) NULL,
	[DOB] [date] NULL,
	[Gender] [int] NULL,
	[StartDate] [datetime] NULL,
	[PartnerId] [bigint] NULL,
	[IsTesting] [bit] NOT NULL,
	[GiverIsTesting] [bit] NULL,
	[GiverFirstName] [nvarchar](100) NULL,
	[GiverLastName] [nvarchar](100) NULL,
	[GiverId] [bigint] NULL,
	[PhoneNumber] [varchar](16) NULL,
	[IsActive] [bit] NOT NULL,
	[GiverIsActive] [bit] NULL,
	[RecipientDtutcCreated] [datetime] NOT NULL,
	[RecipientDtutcModified] [datetime] NOT NULL,
	[GiverDtutcCreated] [datetime] NULL,
	[GiverDtutcModified] [datetime] NULL,
	[ProviderName] [nvarchar](100) NULL,
	[PartnerName] [nvarchar](100) NULL,
	[GroupName] [nvarchar](max) NULL,
	[GroupId] [bigint] NULL,
	[Age] [int] NULL,
	[IsProfileComplete] [bit] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'CORE',OBJECT_NAME = N'CareRecipientDemographics')
GO
/****** Object:  Table [LegacyMain].[CareRecipients]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[CareRecipients]
(
	[RID] [bigint] NOT NULL,
	[IsProfileComplete] [bit] NOT NULL,
	[PhotoUrl] [nvarchar](255) NULL,
	[DTUTC_Modified] [datetime] NULL,
	[Language] [nvarchar](50) NOT NULL,
	[Timezone] [nvarchar](50) NULL,
	[ZipCode] [nvarchar](10) NULL,
	[StartDate] [datetime] NULL,
	[SuspendedFrom] [datetime] NULL,
	[SuspendedTo] [datetime] NULL,
	[PausedReason] [nvarchar](255) NULL,
	[EMRSystemName] [nvarchar](255) NULL,
	[MRN] [nvarchar](255) NULL,
	[ExternalID] [nvarchar](255) NULL,
	[CustomField1] [varchar](100) NULL,
	[CustomField2] [varchar](100) NULL,
	[CustomField3] [varchar](100) NULL,
	[CustomField4] [varchar](100) NULL,
	[CustomField5] [varchar](100) NULL,
	[CustomField6] [varchar](100) NULL,
	[CustomField7] [varchar](100) NULL,
	[CustomField8] [varchar](100) NULL,
	[SegmentID] [varchar](3) NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'CORE',OBJECT_NAME = N'CareRecipients')
GO
/****** Object:  Table [LegacyMain].[CareRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[CareRecordings]
(
	[Id] [bigint] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Description] [nvarchar](4000) NULL,
	[Text] [nvarchar](max) NULL,
	[Section] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[PromptId] [int] NOT NULL,
	[LanguageId] [int] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'IVR',OBJECT_NAME = N'CareRecordings')
GO
/****** Object:  Table [LegacyMain].[EmailAddresses]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[EmailAddresses]
(
	[ID] [int] NOT NULL,
	[EmailAddress] [nvarchar](150) NOT NULL,
	[IsValid] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'CORE',OBJECT_NAME = N'EmailAddresses')
GO
/****** Object:  Table [LegacyMain].[GiversCareRoles]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[GiversCareRoles]
(
	[CareGiverID] [bigint] NOT NULL,
	[RoleID] [int] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'Core',OBJECT_NAME = N'GiversCareRoles')
GO
/****** Object:  Table [LegacyMain].[GiversSpecialties]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[GiversSpecialties]
(
	[CareGiverID] [bigint] NOT NULL,
	[SpecialtyID] [int] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'Core',OBJECT_NAME = N'GiversSpecialties')
GO
/****** Object:  Table [LegacyMain].[HContractPbp]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[HContractPbp]
(
	[Id] [int] NOT NULL,
	[Name] [varchar](20) NULL,
	[PartnerId] [int] NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'CareRule',OBJECT_NAME = N'HContractPbp')
GO
/****** Object:  Table [LegacyMain].[HealPlanLob]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[HealPlanLob]
(
	[CO_DIM_STATE] [varchar](2) NULL,
	[HEALTHPLAN_LOB] [varchar](50) NULL,
	[Medicaid-NonMedicaid] [varchar](50) NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'FileUpload',OBJECT_NAME = N'HealPlanLob')
GO
/****** Object:  Table [LegacyMain].[OHS_Hist]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[OHS_Hist]
(
	[MBR_PGM_ID] [varchar](200) NULL,
	[PGM_TYP_DESC_HSR] [varchar](200) NULL,
	[SBSCR_ID_TXT] [varchar](200) NULL,
	[SRC_MBR_ID] [varchar](200) NULL,
	[SA_MEMBER_LAST_NM] [varchar](200) NULL,
	[SA_MEMBER_FIRST_NM] [varchar](200) NULL,
	[SA_MEMBER_MIDDLE_NM] [varchar](200) NULL,
	[SA_MEMBER_DOB] [varchar](200) NULL,
	[SA_MEMBER_GENDER] [varchar](200) NULL,
	[PHONE_HOME] [varchar](200) NULL,
	[PHONE_CELL] [varchar](200) NULL,
	[PHONE_ALT_HOME] [varchar](200) NULL,
	[PHONE_ALT_CELL] [varchar](200) NULL,
	[EMAIL] [varchar](200) NULL,
	[ADDR_LINE_1] [varchar](200) NULL,
	[ADDR_LINE_2] [varchar](200) NULL,
	[CITY] [varchar](200) NULL,
	[STATE] [varchar](200) NULL,
	[ZIP] [varchar](200) NULL,
	[Care_Manager_Last_Name] [varchar](200) NULL,
	[Care_Manager_First_Name] [varchar](200) NULL,
	[AutoGen_DATETIMESTAMP] [varchar](200) NULL,
	[Solution] [varchar](200) NULL,
	[ReportingAccountName] [varchar](200) NULL,
	[Policy_ID] [varchar](200) NULL,
	[MBR_DEVC] [varchar](200) NULL,
	[Trans_status] [varchar](200) NULL,
	[InsertDt] [datetime] NULL,
	[FileName] [varchar](200) NULL,
	[policy_name] [varchar](200) NULL,
	[PGM_TYP_ID] [varchar](10) NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'FileUpload',OBJECT_NAME = N'OHS_Hist')
GO
/****** Object:  Table [LegacyMain].[Options]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[Options]
(
	[ID] [int] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[Options] [nvarchar](max) NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[AudioUrl] [nvarchar](max) NULL,
	[OptionWeb] [nvarchar](max) NULL,
	[OptionSms] [nvarchar](max) NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'ivr',OBJECT_NAME = N'Options')
GO
/****** Object:  Table [LegacyMain].[PersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[PersonInfo]
(
	[RID] [bigint] NOT NULL,
	[FName] [nvarchar](100) NULL,
	[MName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[MaidenName] [nvarchar](100) NULL,
	[DOB] [date] NULL,
	[Gender] [int] NULL,
	[SingleName] [nvarchar](100) NULL,
	[XofYName] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[Ordinal] [nvarchar](100) NULL,
	[NickName] [nvarchar](100) NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'CORE',OBJECT_NAME = N'PersonInfo')
GO
/****** Object:  Table [LegacyMain].[Phones]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[Phones]
(
	[ID] [int] NOT NULL,
	[PhoneCountryCode] [varchar](5) NOT NULL,
	[PhoneNumber] [varchar](16) NOT NULL,
	[PhoneExtension] [varchar](10) NULL,
	[IsValid] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTCModified] [datetime] NOT NULL,
	[CarrierType] [int] NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'core',OBJECT_NAME = N'Phones')
GO
/****** Object:  Table [LegacyMain].[Prompts]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[Prompts]
(
	[ID] [int] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[PromptContent] [nvarchar](4000) NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PromptUrl] [nvarchar](4000) NULL,
	[PromptContentWeb] [nvarchar](4000) NULL,
	[AudioDescription] [nvarchar](4000) NULL,
	[DefaultPrompt] [bit] NULL,
	[PromptContentSms] [nvarchar](4000) NULL,
	[PromptContentForReport] [nvarchar](4000) NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'ivr',OBJECT_NAME = N'Prompts')
GO
/****** Object:  Table [LegacyMain].[R]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[R]
(
	[RID] [bigint] NOT NULL,
	[RTypeID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsTesting] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'CORE',OBJECT_NAME = N'R')
GO
/****** Object:  Table [LegacyMain].[R_Addresses]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[R_Addresses]
(
	[RID] [bigint] NOT NULL,
	[AddressID] [int] NOT NULL,
	[AddressUsageID] [int] NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'CORE',OBJECT_NAME = N'R_Addresses')
GO
/****** Object:  Table [LegacyMain].[R_EmailAddresses]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[R_EmailAddresses]
(
	[RID] [bigint] NOT NULL,
	[EmailAddressID] [int] NOT NULL,
	[EmailAddressUsageID] [int] NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'CORE',OBJECT_NAME = N'R_EmailAddresses')
GO
/****** Object:  Table [LegacyMain].[R_Phones]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[R_Phones]
(
	[RID] [bigint] NOT NULL,
	[PhoneID] [int] NOT NULL,
	[PhoneUsageID] [int] NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[PhoneStatusID] [int] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'CORE',OBJECT_NAME = N'R_Phones')
GO
/****** Object:  Table [LegacyMain].[Reemohealth_enrollment_Hist]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[Reemohealth_enrollment_Hist]
(
	[FirstName] [varchar](200) NULL,
	[MiddleInitial] [varchar](200) NULL,
	[LastName] [varchar](200) NULL,
	[DateofBirth] [varchar](200) NULL,
	[Gender] [varchar](200) NULL,
	[AddressLine1] [varchar](200) NULL,
	[AddressLine2] [varchar](200) NULL,
	[City] [varchar](200) NULL,
	[State] [varchar](200) NULL,
	[ZipCode] [varchar](200) NULL,
	[County] [varchar](200) NULL,
	[PrimaryPhone] [varchar](200) NULL,
	[UniqueID] [varchar](200) NULL,
	[Program] [varchar](200) NULL,
	[FileCreationDate] [varchar](200) NULL,
	[InsertDt] [datetime] NULL,
	[Filename] [varchar](200) NULL,
	[FileuploadID] [uniqueidentifier] NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'FILEUPLOAD',OBJECT_NAME = N'Reemohealth_enrollment_Hist')
GO
/****** Object:  Table [LegacyMain].[SBU]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[SBU]
(
	[RID] [bigint] NOT NULL,
	[SBUName] [nvarchar](100) NOT NULL,
	[Quota] [int] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[DisplayInAdminPortal] [bit] NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'COBRANDING',OBJECT_NAME = N'SBU')
GO
/****** Object:  Table [LegacyMain].[SBUAttributes]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[SBUAttributes]
(
	[SBURID] [bigint] NOT NULL,
	[TypeID] [int] NOT NULL,
	[AttributeValue] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'COBRANDING',OBJECT_NAME = N'SBUAttributes')
GO
/****** Object:  Table [LegacyMain].[SBUCareRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[SBUCareRecordings]
(
	[SBURID] [bigint] NOT NULL,
	[CareRecordingId] [bigint] NOT NULL,
	[IvrOverrideType] [smallint] NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'COBRANDING',OBJECT_NAME = N'SBUCareRecordings')
GO
/****** Object:  Table [LegacyMain].[SBUGroup]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[SBUGroup]
(
	[RID] [bigint] NOT NULL,
	[SBURID] [bigint] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PARENTRID] [bigint] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'COBRANDING',OBJECT_NAME = N'SBUGroup')
GO
/****** Object:  Table [LegacyMain].[SBUGroup_EndUsers]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[SBUGroup_EndUsers]
(
	[EndUserRID] [bigint] NOT NULL,
	[SBURID] [bigint] NOT NULL,
	[SBUGroupRID] [bigint] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'COBRANDING',OBJECT_NAME = N'SBUGroup_EndUsers')
GO
/****** Object:  Table [LegacyMain].[SBUGroupAttributes]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[SBUGroupAttributes]
(
	[SBUGroupRID] [bigint] NOT NULL,
	[TypeID] [int] NOT NULL,
	[AttributeValue] [nvarchar](max) NOT NULL,
	[AttributeDescription] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'COBRANDING',OBJECT_NAME = N'SBUGroupAttributes')
GO
/****** Object:  Table [LegacyMain].[SbuPartnerAlertConfiguration]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[SbuPartnerAlertConfiguration]
(
	[PartnerId] [bigint] NULL,
	[Title] [varchar](max) NULL,
	[Show] [bit] NULL,
	[ActionableAlert] [bit] NULL,
	[VitalTypeId] [bigint] NULL,
	[AlertOrder] [float] NULL,
	[ParentId] [bigint] NULL,
	[QuestionCategory] [bigint] NULL,
	[QuestionId] [bigint] NULL,
	[SectionCategory] [bit] NULL,
	[Notes] [varchar](255) NULL,
	[ShowNotes] [bit] NULL,
	[ClassName] [varchar](50) NULL,
	[SettingId] [int] NULL,
	[id] [int] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'COBRANDING',OBJECT_NAME = N'SbuPartnerAlertConfiguration')
GO
/****** Object:  Table [LegacyMain].[SbuPartnerConfigurationColumns]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[SbuPartnerConfigurationColumns]
(
	[PartnerId] [bigint] NULL,
	[VitalTypeId] [bigint] NULL,
	[Title] [varchar](600) NULL,
	[ColumnModalAlertName] [varchar](600) NULL,
	[ColumnActionableAlertName] [varchar](600) NULL,
	[ColumnAlertManagementName] [varchar](600) NULL,
	[HasFilter] [bit] NULL,
	[Show] [bit] NULL,
	[PreviewPhase] [bit] NULL,
	[Sortable] [varchar](50) NULL,
	[AdminColumn] [bit] NULL,
	[ColumnOrder] [float] NULL,
	[Clickable] [bit] NULL,
	[ActionableAlert] [int] NULL,
	[QuestionId] [bigint] NULL,
	[ParentId] [bigint] NULL,
	[DefaultColumn] [bit] NULL,
	[ShowUnit] [bit] NULL,
	[UnitText] [varchar](255) NULL,
	[CareFaxAlertName] [varchar](600) NULL,
	[SettingId] [int] NULL,
	[id] [int] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'COBRANDING',OBJECT_NAME = N'SbuPartnerConfigurationColumns')
GO
/****** Object:  Table [LegacyMain].[SbuPlanType]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[SbuPlanType]
(
	[Id] [int] NOT NULL,
	[PartnerId] [bigint] NULL,
	[PlanType] [varchar](10) NULL,
	[Name] [varchar](20) NULL,
	[Description] [varchar](20) NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'COBRANDING',OBJECT_NAME = N'SbuPlanType')
GO
/****** Object:  Table [LegacyMain].[SBUs_EndUsers]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[SBUs_EndUsers]
(
	[EndUserRID] [bigint] NOT NULL,
	[SBURID] [bigint] NOT NULL,
	[SBUGroupRID] [bigint] NULL,
	[SBUProgramID] [int] NULL,
	[SBUInvitationCampaignID] [int] NULL,
	[IsActive] [bit] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'COBRANDING',OBJECT_NAME = N'SBUs_EndUsers')
GO
/****** Object:  Table [LegacyMain].[SbuState]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[SbuState]
(
	[Id] [int] NOT NULL,
	[ParentSBURID] [bigint] NOT NULL,
	[SBURID] [bigint] NOT NULL,
	[StateCode] [varchar](2) NOT NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'COBRANDING',OBJECT_NAME = N'SbuState')
GO
/****** Object:  Table [LegacyMain].[SchemaByPartner]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[SchemaByPartner]
(
	[PartnerId] [bigint] NOT NULL,
	[Schema] [varchar](50) NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'dbo',OBJECT_NAME = N'SchemaByPartner')
GO
/****** Object:  Table [LegacyMain].[Wider_Circle_Connect_for_Life_Hist]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE EXTERNAL TABLE [LegacyMain].[Wider_Circle_Connect_for_Life_Hist]
(
	[FirstName] [varchar](100) NULL,
	[MiddleInitial] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[DateofBirth] [varchar](100) NULL,
	[Gender] [varchar](100) NULL,
	[Ethnicity] [varchar](100) NULL,
	[AddressLine1] [varchar](100) NULL,
	[AddressLine2] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[ZipCode] [varchar](100) NULL,
	[PrimaryPhone] [varchar](100) NULL,
	[SecondaryPhone] [varchar](100) NULL,
	[Emailaddress] [varchar](100) NULL,
	[UniqueID] [varchar](100) NULL,
	[GroupName] [varchar](100) NULL,
	[FacilitatorName] [varchar](100) NULL,
	[EventDate] [varchar](100) NULL,
	[EventName] [varchar](100) NULL,
	[EventType] [varchar](100) NULL,
	[VenueStreet] [varchar](100) NULL,
	[VenueCity] [varchar](100) NULL,
	[VenueState] [varchar](100) NULL,
	[VenueZip] [varchar](100) NULL,
	[EventPhone] [varchar](100) NULL,
	[EventPIN] [varchar](100) NULL,
	[EventStatus] [varchar](100) NULL,
	[FileCreationDate] [varchar](100) NULL,
	[ClientName] [varchar](100) NULL,
	[EventTime] [varchar](100) NULL,
	[InsertDt] [datetime] NULL,
	[FileName] [varchar](150) NULL,
	[FileuploadID] [uniqueidentifier] NULL
)
WITH (DATA_SOURCE = [CAREANGEL_MAIN_LEGACY],SCHEMA_NAME = N'FILEUPLOAD',OBJECT_NAME = N'Wider_Circle_Connect_for_Life_Hist')
GO
/****** Object:  Table [main].[Alerts]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[Alerts](
	[AlertID] [bigint] IDENTITY(1,1) NOT NULL,
	[Content] [varchar](max) NOT NULL,
	[VitalTypeID] [int] NULL,
	[Frequency] [int] NOT NULL,
	[AlertType] [int] NULL,
	[DescriptionUrl] [varchar](max) NULL,
	[LanguageId] [int] NOT NULL,
	[QuestionId] [bigint] NULL,
	[TextFilter] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK__Alerts] PRIMARY KEY CLUSTERED 
(
	[AlertID] ASC,
	[LanguageId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[Answer]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[Answer](
	[ID] [bigint] NOT NULL,
	[ReadingLevel] [tinyint] NULL,
	[TriggerAlert] [bit] NOT NULL,
	[QuestionID] [bigint] NOT NULL,
	[Next] [bigint] NULL,
	[OptionID] [int] NULL,
	[From] [float] NULL,
	[To] [float] NULL,
	[Action] [varchar](128) NULL,
	[DisableAnswerReaction] [bit] NULL,
	[Value] [varchar](128) NULL,
	[Sample] [int] NOT NULL,
	[TriggerFaxAlert] [int] NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[CarePathway]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[CarePathway](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PartnerID] [bigint] NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](4000) NOT NULL,
	[GroupID] [int] NULL,
	[LanguageID] [tinyint] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
	[IsDeleted] [bit] NULL,
	[IsDeactivated] [bit] NULL,
 CONSTRAINT [PK_CarePathway] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[CarePathwayLanguages]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[CarePathwayLanguages](
	[CarePathwayID] [bigint] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[CreatedBy] [varchar](255) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedBy] [varchar](255) NULL,
	[LastModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CarePathwayID] ASC,
	[LanguageID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[CarePathwayQuestions]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[CarePathwayQuestions](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CarePathwayID] [bigint] NOT NULL,
	[QuestionID] [bigint] NOT NULL,
	[QuestionOrder] [int] NOT NULL,
	[IsCustomQuestion] [bit] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_CarePathwayQuestions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UC_CarePathwayQuestions] UNIQUE NONCLUSTERED 
(
	[CarePathwayID] ASC,
	[QuestionID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[CarePlanAttributes]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[CarePlanAttributes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CarePlanID] [bigint] NOT NULL,
	[AttributeTypeID] [int] NOT NULL,
	[AttributeValue] [nvarchar](max) NULL,
	[AttributeDescription] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[PropBag] [xml] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_CarePlanAttributes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[CarePlanCareRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[CarePlanCareRecordings](
	[CarePlanID] [bigint] NOT NULL,
	[CareRecordingID] [bigint] NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_CarePlanCareRecordings] PRIMARY KEY CLUSTERED 
(
	[CarePlanID] ASC,
	[CareRecordingID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[CarePlanLanguages]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[CarePlanLanguages](
	[CarePlanID] [bigint] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[CreatedBy] [varchar](255) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedBy] [varchar](255) NULL,
	[LastModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CarePlanID] ASC,
	[LanguageID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[CarePlanQuestions]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[CarePlanQuestions](
	[CarePlanID] [bigint] NOT NULL,
	[QuestionID] [bigint] NOT NULL,
	[VariableIndex] [int] NOT NULL,
	[QuestionOrder] [int] NULL,
	[IsCustomQuestion] [bit] NOT NULL,
	[Call] [int] NULL,
	[WeekDay] [int] NULL,
	[IsQuestionBlock] [bit] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
	[OriginCustomFlowID] [int] NULL,
 CONSTRAINT [pk_CFQPrimaryKey] PRIMARY KEY CLUSTERED 
(
	[CarePlanID] ASC,
	[QuestionID] ASC,
	[VariableIndex] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UC_CarePlanQuestions] UNIQUE NONCLUSTERED 
(
	[CarePlanID] ASC,
	[QuestionID] ASC,
	[VariableIndex] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[CarePlanScheduling]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[CarePlanScheduling](
	[CarePlanID] [bigint] NOT NULL,
	[VariableIndex] [int] NOT NULL,
	[Call] [int] NULL,
	[WeekDay] [int] NULL,
	[CallOutGraph] [xml] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_CarePlanScheduling] PRIMARY KEY CLUSTERED 
(
	[CarePlanID] ASC,
	[VariableIndex] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[CareRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[CareRecordings](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Description] [varchar](4000) NULL,
	[Text] [nvarchar](max) NULL,
	[Section] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[PromptID] [bigint] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[IsDeactivated] [bit] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_CareRecordings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[CareRuleObjectOperator]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[CareRuleObjectOperator](
	[Id] [int] NOT NULL,
	[QuestionTypeId] [int] NOT NULL,
	[CareRuleObjectId] [int] NOT NULL,
	[CareRuleOperatorId] [int] NULL,
	[ValueTypeId] [int] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_CareRuleObjectOperator] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[CareRules]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[CareRules](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CareRule] [nvarchar](max) NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK__CareRules] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[Contract]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[Contract](
	[Id] [bigint] NULL,
	[partnerId] [bigint] NULL,
	[value] [nvarchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[DataSync]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[DataSync](
	[ID ] [int] IDENTITY(1,1) NOT NULL,
	[ProcessId] [varchar](36) NOT NULL,
	[TableName] [varchar](50) NOT NULL,
	[PrimaryKey1] [bigint] NOT NULL,
	[PrimaryKey2] [bigint] NULL,
	[PrimaryKey3] [bigint] NULL,
	[DataString] [varchar](2000) NULL,
	[PrimaryKeyName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[DataSyncLog]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[DataSyncLog](
	[ProcessID] [uniqueidentifier] NOT NULL,
	[RunDateTime] [datetime] NOT NULL,
	[TableName] [nvarchar](255) NOT NULL,
	[NumberOfInserted] [int] NULL,
	[NumberOfUpdated] [int] NULL,
	[NumberOfDeleted] [int] NULL,
	[NumberOfTemp] [int] NULL,
	[ExceptionMessage] [nvarchar](4000) NULL,
	[SynchronizeDirection] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[DataSyncProductionIDs]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[DataSyncProductionIDs](
	[NewSchemaName] [nvarchar](50) NULL,
	[NewTableName] [nvarchar](100) NULL,
	[LegacySchemaName] [nvarchar](50) NULL,
	[LegacyTableName] [nvarchar](100) NULL,
	[LegacyPrimaryKeyColumn] [nvarchar](50) NULL,
	[LegacyPrimaryKeyMaxValue] [bigint] NULL,
	[CurrentRowsCountInNew] [bigint] NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[DeactivationReasons]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[DeactivationReasons](
	[ID] [int] NOT NULL,
	[DeactivationReason] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_DeactivationReasons] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[DoNotCall]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[DoNotCall](
	[PartnerId] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[PhoneNumber] [varchar](16) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[OptOutMethod] [varchar](20) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
 CONSTRAINT [PK_Partner_Rid_PhoneNumber] UNIQUE NONCLUSTERED 
(
	[PartnerId] ASC,
	[RID] ASC,
	[PhoneNumber] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[Enum]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[Enum](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Value] [int] NULL,
	[CreatedBy] [nvarchar](10) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifedBy] [nvarchar](10) NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[HContractPbp]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[HContractPbp](
	[id] [int] NULL,
	[name] [varchar](20) NULL,
	[partnerId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[HContractPbpList]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[HContractPbpList](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Hcontract] [varchar](10) NULL,
	[Pbp] [varchar](10) NULL,
	[ListId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[Instructions]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[Instructions](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PromptID] [bigint] NOT NULL,
	[ModeType] [nvarchar](40) NOT NULL,
	[PropBag] [xml] NULL,
	[WorkflowMode] [int] NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK__Instructions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[PromptID] ASC,
	[ModeType] ASC,
	[WorkflowMode] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[M_AddressUsage]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_AddressUsage](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_M_AddressUsage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_AttributeType]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_AttributeType](
	[ID] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[ResourceType] [varchar](255) NULL,
	[Description] [varchar](1000) NULL,
	[Ordering] [int] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_M_AttributeType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_CarePathwayGroup]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_CarePathwayGroup](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Ordering] [int] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_CarePlanGroup]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_CarePlanGroup](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Ordering] [int] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_CareRecordingGroup]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_CareRecordingGroup](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NULL,
	[Ordering] [int] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_CareRole]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_CareRole](
	[Id] [int] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_CareRuleObjects]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_CareRuleObjects](
	[Id] [int] NOT NULL,
	[LegacyId] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Object] [nvarchar](100) NULL,
	[ValueType] [nvarchar](10) NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_CareRuleOperator]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_CareRuleOperator](
	[Id] [int] NOT NULL,
	[LegacyId] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_CareRuleOption]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_CareRuleOption](
	[Id] [int] NOT NULL,
	[LegacyId] [int] NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_CareRuleRecipient]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_CareRuleRecipient](
	[Id] [int] NOT NULL,
	[LegacyId] [int] NULL,
	[DisplayName] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ValueType] [nvarchar](50) NOT NULL,
	[CareRuleObjectId] [int] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_CareRuleRecipientOperator]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_CareRuleRecipientOperator](
	[CareRuleRecipientId] [int] NOT NULL,
	[CareRuleOperatorId] [int] NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_CareRuleRecipientOperator] PRIMARY KEY CLUSTERED 
(
	[CareRuleOperatorId] ASC,
	[CareRuleRecipientId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_CareRuleRecipientOption]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_CareRuleRecipientOption](
	[CareRuleRecipientId] [int] NOT NULL,
	[CareRuleOptionId] [int] NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_CareRuleRecipientOption] PRIMARY KEY CLUSTERED 
(
	[CareRuleRecipientId] ASC,
	[CareRuleOptionId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_CareRuleValueType]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_CareRuleValueType](
	[Id] [int] NOT NULL,
	[ValueType] [nvarchar](10) NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_City]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_City](
	[ID] [int] NOT NULL,
	[StateID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [M_City_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_Countries]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_Countries](
	[FIPSCode] [char](2) NOT NULL,
	[ShortName] [nvarchar](50) NOT NULL,
	[LongName] [nvarchar](100) NULL,
	[SovereigntyID] [int] NULL,
	[SovereigntyFIPSCode] [char](2) NULL,
	[Note] [nvarchar](400) NULL,
	[IsActive] [bit] NOT NULL,
	[PhoneCode] [varchar](5) NULL,
	[Ordering] [bit] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Countries_1] PRIMARY KEY CLUSTERED 
(
	[FIPSCode] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_CountryCode]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_CountryCode](
	[ID] [int] NOT NULL,
	[Country] [nvarchar](255) NULL,
	[CountryCode] [varchar](50) NULL,
	[InternationalDialing] [varchar](10) NULL,
	[Active] [bit] NOT NULL,
	[Ordering] [int] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_M_CountryCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_CustomVitalType]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_CustomVitalType](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Ordering] [int] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_Designation]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_Designation](
	[Id] [int] NOT NULL,
	[Value] [nvarchar](255) NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_EmailAddressUsage]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_EmailAddressUsage](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_M_EmailAddressUsage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_GroupAttributeType]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_GroupAttributeType](
	[ID] [int] NOT NULL,
	[AttributeTypeID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Ordering] [int] NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_GroupAttributeType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_Language]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_Language](
	[ID] [int] NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[LanguageTag] [nvarchar](50) NOT NULL,
	[LocaleID] [int] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_NameOrdinal]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_NameOrdinal](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_OverrideType]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_OverrideType](
	[ID] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Description] [nvarchar](2000) NULL,
	[Ordering] [int] NULL,
	[Type] [int] NULL,
	[Status] [int] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_M_OverrideType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_PartnerAttributeType]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_PartnerAttributeType](
	[ID] [int] NOT NULL,
	[AttributeTypeID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Ordering] [int] NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_PartnerAttributeType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_PhoneUsage]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_PhoneUsage](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Status] [bit] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PhoneUsage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_QuestionCategory]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_QuestionCategory](
	[ID] [int] NOT NULL,
	[Code] [varchar](255) NULL,
	[Name] [varchar](255) NOT NULL,
	[Ordering] [int] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_M_QuestionCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_QuestionType]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_QuestionType](
	[ID] [int] NOT NULL,
	[Code] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Ordering] [int] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_M_QuestionType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_Specialty]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_Specialty](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_State]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_State](
	[ID] [int] NOT NULL,
	[Abbreviation] [nchar](2) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [State_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_StatusMapping]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_StatusMapping](
	[Status] [int] NOT NULL,
	[StatusText] [varchar](50) NULL,
	[Order] [int] NULL,
	[Component] [varchar](50) NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Status] ASC,
	[Component] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_TimeZones]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_TimeZones](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TimeZoneValue] [nvarchar](255) NOT NULL,
	[TimeZoneName] [nvarchar](255) NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_TimeZones] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_TimeZonesMapping]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_TimeZonesMapping](
	[ID] [int] NOT NULL,
	[TimeZoneValue] [nvarchar](255) NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [Main_TimeZonesMapping_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_VitalType]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_VitalType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_VitalType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_XmlType]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_XmlType](
	[ID] [int] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [M_XmlType_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_ZipCode]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_ZipCode](
	[ID] [int] NOT NULL,
	[ZipCode] [nvarchar](5) NOT NULL,
	[StateID] [int] NOT NULL,
	[CityID] [int] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
	[OriginZipCodeID] [int] NULL,
 CONSTRAINT [Main_ZipCode_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[M_ZipCode_Timezone]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[M_ZipCode_Timezone](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ZipcodeID] [int] NOT NULL,
	[TimeZoneID] [int] NOT NULL,
	[UTC_TimeDifference] [int] NULL,
	[DST] [int] NULL,
	[OriginZipCodeID] [int] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [Main_ZipCode_Timezone_PK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[MemberStatusHistory]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[MemberStatusHistory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[RID] [bigint] NOT NULL,
	[Status] [nvarchar](225) NOT NULL,
	[Reason] [nvarchar](225) NULL,
	[Detail] [nvarchar](225) NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_MemberStatusHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[MobilePhone_VitalReading]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[MobilePhone_VitalReading](
	[RID] [int] NULL,
	[TELEPHONE] [varchar](16) NULL,
	[workflow] [varchar](50) NULL,
	[DTUTC_Created] [datetime] NULL,
	[VitalTypeId] [int] NULL,
	[Scheduled] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[Options]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[Options](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[LanguageID] [int] NOT NULL,
	[Options] [nvarchar](max) NOT NULL,
	[PropBag] [xml] NULL,
	[AudioUrl] [nvarchar](max) NULL,
	[OptionWeb] [nvarchar](max) NULL,
	[OptionSms] [nvarchar](max) NULL,
	[TextFilter] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_Options] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[LanguageID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[OptoutDeactivationCareruleAudit]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[OptoutDeactivationCareruleAudit](
	[AuditID] [int] IDENTITY(1,1) NOT NULL,
	[CRRIDs] [nvarchar](max) NULL,
	[DeactivationReasonID] [int] NULL,
	[DeactivationMethod] [varchar](50) NULL,
	[DTUTC_Created] [datetime] NULL,
	[DTUTC_Processed] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AuditID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[PartnerAlertConfigurations]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[PartnerAlertConfigurations](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PartnerID] [bigint] NULL,
	[Title] [varchar](2000) NULL,
	[Show] [bit] NULL,
	[ActionableAlert] [bit] NULL,
	[VitalTypeID] [bigint] NULL,
	[AlertOrder] [float] NULL,
	[ParentId] [bigint] NULL,
	[QuestionCategory] [bigint] NULL,
	[QuestionId] [bigint] NULL,
	[SectionCategory] [bit] NULL,
	[Notes] [varchar](255) NULL,
	[ShowNotes] [bit] NULL,
	[ClassName] [varchar](50) NULL,
	[SettingId] [int] NULL,
 CONSTRAINT [PK_PartnerAlertConfigurations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[PartnerAttributes]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[PartnerAttributes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PartnerID] [bigint] NOT NULL,
	[AttributeTypeID] [int] NOT NULL,
	[AttributeValue] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PartnerAttributes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[PartnerCareRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[PartnerCareRecordings](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PartnerID] [bigint] NOT NULL,
	[CareRecordingId] [bigint] NULL,
	[IvrOverrideTypeId] [int] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PartnerCareRecordings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[PartnerClientNameGroup]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[PartnerClientNameGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sburid] [int] NULL,
	[SbuGroupId] [int] NULL,
	[ClientName] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[PartnerConfigurationColumns]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[PartnerConfigurationColumns](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PartnerId] [bigint] NULL,
	[VitalTypeId] [bigint] NULL,
	[Title] [varchar](2000) NULL,
	[ColumnModalAlertName] [varchar](2000) NULL,
	[ColumnActionableAlertName] [varchar](2000) NULL,
	[ColumnAlertManagementName] [varchar](2000) NULL,
	[HasFilter] [bit] NULL,
	[Show] [bit] NULL,
	[PreviewPhase] [bit] NULL,
	[Sortable] [varchar](50) NULL,
	[AdminColumn] [bit] NULL,
	[ColumnOrder] [float] NULL,
	[Clickable] [bit] NULL,
	[ActionableAlert] [int] NULL,
	[QuestionId] [bigint] NULL,
	[ParentId] [bigint] NULL,
	[DefaultColumn] [bit] NULL,
	[ShowUnit] [bit] NULL,
	[UnitText] [varchar](255) NULL,
	[CareFaxAlertName] [varchar](2000) NULL,
	[SettingId] [int] NULL,
 CONSTRAINT [PK_PartnerConfigurationColumns] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[PartnerGroupAttributes]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[PartnerGroupAttributes](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PartnerGroupID] [bigint] NOT NULL,
	[AttributeTypeID] [int] NOT NULL,
	[AttributeValue] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_PartnerGroupAttributes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[PartnerGroupState]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[PartnerGroupState](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SBURID] [bigint] NOT NULL,
	[SBUGroupRID] [bigint] NOT NULL,
	[Code] [varchar](2) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[SBURID] ASC,
	[SBUGroupRID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[PartnerState]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[PartnerState](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentSBURID] [bigint] NOT NULL,
	[SBURID] [bigint] NOT NULL,
	[StateCode] [varchar](2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[PartnerStatusHistory]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[PartnerStatusHistory](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PartnerID] [bigint] NOT NULL,
	[Status] [nvarchar](225) NULL,
	[Reason] [nvarchar](225) NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_PartnerStatusHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[PowerBIReport]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[PowerBIReport](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PartnerId] [bigint] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Url] [nvarchar](1024) NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[Prompts]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[Prompts](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[LanguageID] [int] NOT NULL,
	[PromptContent] [nvarchar](4000) NOT NULL,
	[PropBag] [xml] NOT NULL,
	[PromptUrl] [nvarchar](4000) NULL,
	[PromptContentWeb] [nvarchar](4000) NULL,
	[AudioDescription] [nvarchar](4000) NULL,
	[DefaultPrompt] [bit] NULL,
	[PromptContentSms] [nvarchar](4000) NULL,
	[PromptContentForReport] [nvarchar](4000) NULL,
	[TextFilter] [nvarchar](max) NULL,
	[PromptContentHash] [varbinary](32) NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [Prompts_pk] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[LanguageID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[Question]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[Question](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[QuestionTypeID] [int] NOT NULL,
	[VitalTypeID] [bigint] NOT NULL,
	[PromptID] [bigint] NOT NULL,
	[Sample] [int] NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[QuestionCategory] [int] NOT NULL,
	[Grammar] [varchar](128) NULL,
	[DisableReaction] [bit] NULL,
	[DisableInstruction] [bit] NULL,
	[QuestionHangUp] [bit] NULL,
	[InstructionMode] [tinyint] NOT NULL,
	[MinDigits] [int] NULL,
	[MaxDigits] [int] NULL,
	[Wait] [bit] NULL,
	[LanguageID] [int] NOT NULL,
	[Frequency] [int] NULL,
	[ReadNumberAs] [tinyint] NULL,
	[QuestionChannel] [int] NOT NULL,
	[Decimals] [tinyint] NULL,
	[CheckOut] [int] NULL,
	[Whisper] [bit] NULL,
	[RepeatAfterAttemps] [bit] NULL,
	[BargeIn] [bit] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[QuestionAnswerCareRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[QuestionAnswerCareRecordings](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[QuestionAnswerID] [bigint] NOT NULL,
	[CareRecordingID] [bigint] NULL,
	[QuestionRecordingTypeID] [int] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_QuestionAnswerCareRecordings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[QuestionAnswers]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[QuestionAnswers](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ReadingLevel] [tinyint] NULL,
	[TriggerAlert] [bit] NOT NULL,
	[QuestionID] [bigint] NOT NULL,
	[NextID] [bigint] NULL,
	[OptionID] [bigint] NULL,
	[From] [float] NULL,
	[To] [float] NULL,
	[Action] [varchar](128) NULL,
	[DisableAnswerReaction] [bit] NULL,
	[Value] [varchar](128) NULL,
	[Sample] [int] NOT NULL,
	[TriggerFaxAlert] [int] NOT NULL,
	[IsPrimarySubQuestion] [bit] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_QuestionAnswers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[QuestionCareRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[QuestionCareRecordings](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[QuestionID] [bigint] NOT NULL,
	[CareRecordingID] [bigint] NULL,
	[QuestionRecordingTypeID] [int] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_QuestionCareRecordings] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[QuestionCareRules]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[QuestionCareRules](
	[QuestionID] [bigint] NOT NULL,
	[CareRuleID] [bigint] NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC,
	[CareRuleID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[R_Counters]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[R_Counters](
	[LowRangeMax] [bigint] NOT NULL,
	[LowRangeCurrent] [bigint] NOT NULL,
	[MidRangeMax] [bigint] NOT NULL,
	[MidRangeCurrent] [bigint] NOT NULL,
	[HighRangeCurrent] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[R_Deactivated]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[R_Deactivated](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[RID] [bigint] NOT NULL,
	[DeactivationReasonID] [int] NOT NULL,
	[DeactivationMethod] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
 CONSTRAINT [PK_R_Deactivated] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[SbuPlanType]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[SbuPlanType](
	[Id] [int] NULL,
	[PartnerId] [bigint] NULL,
	[PlanType] [varchar](10) NULL,
	[Name] [varchar](20) NULL,
	[Description] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[ScheduleReceive]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[ScheduleReceive](
	[RowId] [uniqueidentifier] NOT NULL,
	[CallRecipientId] [int] NULL,
	[CallsSchedulerId] [int] NULL,
	[CreatedByRid] [int] NULL,
	[IvrClient] [varchar](50) NULL,
	[Language] [varchar](50) NULL,
	[PhoneNumber] [varchar](50) NULL,
	[SchedulerInstanceId] [bigint] NULL,
	[Shift] [varchar](50) NULL,
	[WorkflowTemplate] [varchar](50) NULL,
	[IsRecurring] [varchar](50) NULL,
	[DequeueCount] [int] NULL,
	[WeekDay] [int] NULL,
	[Call] [int] NULL,
	[TextToSpeech] [bit] NULL,
	[Voice] [varchar](50) NULL,
	[NextExecutionTime] [datetime] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_ScheduledCall] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[SystemInstructions]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[SystemInstructions](
	[InstructionId] [int] NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[SystemOptionsTranslations]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[SystemOptionsTranslations](
	[Id] [bigint] NOT NULL,
	[LanguageCode] [int] NOT NULL,
	[TagName] [varchar](50) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_SystemOptionsTranslations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [main].[TempPartnerAlertConfigurations]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[TempPartnerAlertConfigurations](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProcessID] [uniqueidentifier] NOT NULL,
	[PartnerID] [bigint] NULL,
	[Title] [nvarchar](4000) NULL,
	[Show] [bit] NULL,
	[ActionableAlert] [bit] NULL,
	[VitalTypeID] [bigint] NULL,
	[AlertOrder] [float] NULL,
	[ParentId] [bigint] NULL,
	[QuestionCategory] [bigint] NULL,
	[QuestionId] [bigint] NULL,
	[SectionCategory] [bit] NULL,
	[Notes] [varchar](255) NULL,
	[ShowNotes] [bit] NULL,
	[ClassName] [varchar](50) NULL,
	[SettingId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [main].[TempPartnerConfigurationColumns]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[TempPartnerConfigurationColumns](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ProcessID] [uniqueidentifier] NOT NULL,
	[PartnerId] [bigint] NULL,
	[VitalTypeId] [bigint] NULL,
	[Title] [nvarchar](4000) NULL,
	[ColumnModalAlertName] [varchar](2000) NULL,
	[ColumnActionableAlertName] [varchar](2000) NULL,
	[ColumnAlertManagementName] [varchar](2000) NULL,
	[HasFilter] [bit] NULL,
	[Show] [bit] NULL,
	[PreviewPhase] [bit] NULL,
	[Sortable] [varchar](50) NULL,
	[AdminColumn] [bit] NULL,
	[ColumnOrder] [float] NULL,
	[Clickable] [bit] NULL,
	[ActionableAlert] [int] NULL,
	[QuestionId] [bigint] NULL,
	[ParentId] [bigint] NULL,
	[DefaultColumn] [bit] NULL,
	[ShowUnit] [bit] NULL,
	[UnitText] [varchar](255) NULL,
	[CareFaxAlertName] [varchar](2000) NULL,
	[SettingId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[UserReport]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[UserReport](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ReportId] [bigint] NOT NULL,
	[EmailAddress] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UC_Report_User] UNIQUE NONCLUSTERED 
(
	[ReportId] ASC,
	[EmailAddress] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[WatermarkTable]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[WatermarkTable](
	[ID] [uniqueidentifier] NOT NULL,
	[ProcessTypeID] [int] NULL,
	[ProcessName] [varchar](100) NULL,
	[TableSchema] [varchar](100) NULL,
	[TableName] [varchar](100) NULL,
	[Request] [nvarchar](225) NULL,
	[LastRunTime] [datetime] NULL,
	[CurrentRunTime] [datetime] NULL,
	[ExecutionStatus] [int] NULL,
	[JobId] [int] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_WatermarkTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [main].[ZipCodeList]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [main].[ZipCodeList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NULL,
	[PartnerId] [int] NULL,
 CONSTRAINT [PK_ZipCodeList] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [MESSAGING].[OutgoingMessages_SMS]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MESSAGING].[OutgoingMessages_SMS](
	[MessageInstanceGuid] [uniqueidentifier] NOT NULL,
	[MessageDeliveryRequestGuid] [uniqueidentifier] NOT NULL,
	[ProviderName] [varchar](50) NOT NULL,
	[FromPhoneNumber] [nvarchar](100) NOT NULL,
	[ToPhoneNumber] [nvarchar](100) NOT NULL,
	[ToPhoneNumbers] [nvarchar](max) NOT NULL,
	[FormattedMessageBody] [nvarchar](max) NOT NULL,
	[MessageArgs] [xml] NULL,
	[DeliveryStatus] [int] NOT NULL,
	[DeliveryStatusStr] [varchar](50) NOT NULL,
	[DeliveryMessage] [nvarchar](4000) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_OutgoingMessages_SMS_1] PRIMARY KEY CLUSTERED 
(
	[MessageInstanceGuid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ADD SENSITIVITY CLASSIFICATION TO [MESSAGING].[OutgoingMessages_SMS].[FromPhoneNumber] WITH (label = 'Confidential', label_id = '1170877c-869a-4018-8004-269c0a0fc43c', information_type = 'Contact Info', information_type_id = '5c503e21-22c6-81fa-620b-f369b8ec38d1');
GO
ADD SENSITIVITY CLASSIFICATION TO [MESSAGING].[OutgoingMessages_SMS].[ToPhoneNumber] WITH (label = 'Confidential', label_id = '1170877c-869a-4018-8004-269c0a0fc43c', information_type = 'Contact Info', information_type_id = '5c503e21-22c6-81fa-620b-f369b8ec38d1');
GO
ADD SENSITIVITY CLASSIFICATION TO [MESSAGING].[OutgoingMessages_SMS].[ToPhoneNumbers] WITH (label = 'Confidential', label_id = '1170877c-869a-4018-8004-269c0a0fc43c', information_type = 'Contact Info', information_type_id = '5c503e21-22c6-81fa-620b-f369b8ec38d1');
GO
/****** Object:  Table [MESSAGING].[OutgoingMessages_SMS_Status]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [MESSAGING].[OutgoingMessages_SMS_Status](
	[MessageInstanceGuid] [uniqueidentifier] NOT NULL,
	[DeliveryStatus] [int] NOT NULL,
	[DeliveryStatusStr] [nvarchar](50) NOT NULL,
	[To] [nvarchar](100) NOT NULL,
	[RecipientID] [bigint] NULL,
	[PartnerID] [bigint] NULL,
	[PartnerGroupID] [bigint] NULL,
	[WorkFlowID] [bigint] NOT NULL,
	[WorkFlowName] [nvarchar](300) NULL,
	[VitalTypeID] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
	[ExceptionMessage] [nvarchar](max) NULL,
 CONSTRAINT [PK_OutgoingMessages_SMS_Status_1] PRIMARY KEY CLUSTERED 
(
	[MessageInstanceGuid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[Addresses]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[Addresses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AddressLine1] [nvarchar](255) NOT NULL,
	[AddressLine2] [nvarchar](150) NULL,
	[AddressLine3] [nvarchar](150) NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[ZipCode] [nvarchar](20) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[IsValid] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[Alerts]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[Alerts](
	[AlertID] [int] NOT NULL,
	[Content] [varchar](max) NOT NULL,
	[VitalTypeID] [int] NULL,
	[Frequency] [int] NOT NULL,
	[AlertType] [int] NULL,
	[DescriptionUrl] [varchar](max) NULL,
	[LanguageId] [int] NOT NULL,
	[QuestionId] [bigint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[AutomatedCallsSchedule]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[AutomatedCallsSchedule](
	[CallRecipientRID] [bigint] NOT NULL,
	[PhoneNumber] [varchar](11) NULL,
	[InputArguments] [xml] NULL,
	[IsRecurring] [bit] NOT NULL,
	[CallOutGraph] [xml] NULL,
	[DTUTC_NextExecutionTime] [datetime] NOT NULL,
	[IsLocked] [bit] NOT NULL,
	[DTUTC_SuspendedFrom] [datetime] NULL,
	[DTUTC_SuspendedTo] [datetime] NULL,
	[CreatedByRID] [bigint] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[workflowtemplate] [nvarchar](40) NOT NULL,
	[Retry] [int] NOT NULL,
	[Shift] [tinyint] NULL,
	[InstanceId] [int] NULL,
	[IsCustomFlow] [bit] NULL,
	[WeekDay] [int] NULL,
	[Call] [int] NULL,
	[IvrClient] [nvarchar](40) NULL,
	[DisableVoicemail] [bit] NULL,
	[DTUTC_LastExecuted] [datetime] NULL,
	[CampaignID] [varchar](255) NOT NULL,
	[PopulationGroupID] [varchar](255) NOT NULL,
	[FileuploadID] [varchar](255) NULL,
 CONSTRAINT [PK_AutomatedCallsSchedule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[CareGivers]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[CareGivers](
	[RID] [bigint] NOT NULL,
	[PhotoUrl] [nvarchar](255) NULL,
	[Language] [nvarchar](50) NULL,
	[Timezone] [nvarchar](50) NULL,
	[DTUTC_Modified] [datetime] NULL,
	[NotificationType] [int] NULL,
	[LastLogin] [datetime] NULL,
	[DTUTC_PlanEnd] [datetime] NULL,
	[PlanType] [int] NULL,
	[ExternalId] [nvarchar](255) NULL,
	[Designation] [nvarchar](10) NULL,
	[GiverType] [smallint] NULL,
	[CustomField1] [varchar](255) NULL,
	[CustomField2] [varchar](255) NULL,
	[CustomField3] [varchar](255) NULL,
	[CustomField4] [varchar](255) NULL,
	[IsPartnerDefaultGiver] [bit] NULL,
 CONSTRAINT [PK_CareGiver] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[CareRecipients]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[CareRecipients](
	[RID] [bigint] NOT NULL,
	[IsProfileComplete] [bit] NOT NULL,
	[PhotoUrl] [nvarchar](255) NULL,
	[DTUTC_Modified] [datetime] NULL,
	[Language] [nvarchar](50) NOT NULL,
	[Timezone] [nvarchar](50) NULL,
	[ZipCode] [nvarchar](10) NULL,
	[StartDate] [datetime] NULL,
	[SuspendedFrom] [datetime] NULL,
	[SuspendedTo] [datetime] NULL,
	[PausedReason] [nvarchar](255) NULL,
	[EMRSystemName] [nvarchar](255) NULL,
	[MRN] [nvarchar](255) NULL,
	[ExternalID] [nvarchar](255) NULL,
	[CustomField1] [varchar](100) NULL,
	[CustomField2] [varchar](100) NULL,
	[CustomField3] [varchar](100) NULL,
	[CustomField4] [varchar](100) NULL,
	[CustomField5] [varchar](100) NULL,
	[CustomField6] [varchar](100) NULL,
	[CustomField7] [varchar](100) NULL,
	[CustomField8] [varchar](100) NULL,
	[SegmentID] [varchar](3) NULL,
 CONSTRAINT [PK_CareRecipient] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[CareRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[CareRecordings](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Description] [nvarchar](4000) NULL,
	[Text] [nvarchar](max) NULL,
	[Section] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[PromptId] [int] NOT NULL,
	[LanguageId] [int] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
 CONSTRAINT [PK_CareRecordings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[CareRules]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[CareRules](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CareRule] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[CustomFlowAttributes]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[CustomFlowAttributes](
	[CustomFlowId] [int] NOT NULL,
	[TypeID] [int] NOT NULL,
	[AttributeValue] [nvarchar](max) NOT NULL,
	[AttributeDescription] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[CustomFlowCareRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[CustomFlowCareRecordings](
	[FlowId] [int] NOT NULL,
	[CareRecordingId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[CustomFlowQuestions]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[CustomFlowQuestions](
	[FlowId] [int] NOT NULL,
	[QuestionId] [nvarchar](40) NOT NULL,
	[QuestionOrder] [int] NULL,
	[IsCustomQuestion] [bit] NOT NULL,
	[Call] [int] NOT NULL,
	[WeekDay] [int] NOT NULL,
	[IsQuestionBlock] [bit] NULL,
	[QuestionId_Bigint] [bigint] NULL,
 CONSTRAINT [pk_CFQPrimaryKey] PRIMARY KEY CLUSTERED 
(
	[FlowId] ASC,
	[QuestionId] ASC,
	[Call] ASC,
	[WeekDay] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[CustomFlowRecipients]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[CustomFlowRecipients](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CustomFlowId] [int] NOT NULL,
	[CareRecipientId] [bigint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CustomFlowGroupsId] [bigint] NULL,
	[DTUTC_created] [datetime] NOT NULL,
	[Status] [smallint] NOT NULL,
	[OverRiding] [bit] NOT NULL,
	[Channel] [smallint] NOT NULL,
	[Frequency] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[CustomFlowRecipientsSchedule]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[CustomFlowRecipientsSchedule](
	[Id] [bigint] NOT NULL,
	[CustomFlowRecipientsId] [bigint] NOT NULL,
	[AutomatedCallsScheduleId] [bigint] NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[CustomFlows]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[CustomFlows](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](4000) NULL,
	[GroupId] [int] NOT NULL,
	[Duration] [int] NOT NULL,
	[UnitMeasure] [smallint] NOT NULL,
	[Schedule] [smallint] NOT NULL,
	[Segment] [smallint] NOT NULL,
	[Scope] [int] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[Exclude] [bit] NULL,
	[FlowTemplate] [nvarchar](40) NULL,
	[Attempts] [varchar](4000) NULL,
	[Continuous] [bit] NOT NULL,
	[LanguageId] [tinyint] NOT NULL,
	[Frequency] [int] NOT NULL,
	[TextToSpeech] [bit] NULL,
	[Voice] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[CustomFlowScheduling]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[CustomFlowScheduling](
	[FlowId] [int] NOT NULL,
	[CallOutGraph] [xml] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[Call] [int] NOT NULL,
	[WeekDay] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[CustomQuestion]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[CustomQuestion](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[QuestionType] [tinyint] NOT NULL,
	[VitalTypeId] [bigint] NOT NULL,
	[Text] [int] NOT NULL,
	[Sample] [int] NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[QuestionCategory] [tinyint] NOT NULL,
	[Grammar] [varchar](128) NULL,
	[DisableReaction] [bit] NULL,
	[DisableInstruction] [bit] NULL,
	[QuestionHangUp] [bit] NULL,
	[InstructionMode] [tinyint] NOT NULL,
	[MinDigits] [int] NULL,
	[MaxDigits] [int] NULL,
	[Wait] [bit] NULL,
	[LanguageId] [tinyint] NOT NULL,
	[Frequency] [int] NULL,
	[ReadNumberAs] [tinyint] NULL,
	[QuestionChannel] [int] NOT NULL,
	[Decimals] [tinyint] NULL,
	[CheckOut] [int] NULL,
	[Whisper] [bit] NULL,
	[BargeIn] [bit] NULL,
	[RepeatAfterAttemps] [bit] NULL,
	[Nested] [bit] NULL,
 CONSTRAINT [PK_CustomQuestion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[CustomQuestionAnswer]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[CustomQuestionAnswer](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ReadingLevel] [tinyint] NULL,
	[TriggerAlert] [bit] NOT NULL,
	[CustomQuestion] [bigint] NOT NULL,
	[Next] [bigint] NULL,
	[Text] [int] NULL,
	[From] [float] NULL,
	[To] [float] NULL,
	[Action] [varchar](128) NULL,
	[DisableAnswerReaction] [bit] NULL,
	[Value] [varchar](128) NULL,
	[Sample] [int] NOT NULL,
	[TriggerFaxAlert] [int] NOT NULL,
 CONSTRAINT [PK_CustomQuestionAnswer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[CustomQuestionAnswerRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[CustomQuestionAnswerRecordings](
	[AnswerId] [bigint] NOT NULL,
	[CareRecordingId] [bigint] NOT NULL,
	[QuestionRecordingType] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[CustomQuestionCareRules]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[CustomQuestionCareRules](
	[CustomQuestionId] [bigint] NOT NULL,
	[CareRuleId] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[CustomQuestionRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[CustomQuestionRecordings](
	[CustomQuestionId] [bigint] NOT NULL,
	[CareRecordingId] [bigint] NOT NULL,
	[QuestionRecordingType] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[EmailAddresses]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[EmailAddresses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [nvarchar](150) NOT NULL,
	[IsValid] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_EmailAddresses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[GiversCareRoles]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[GiversCareRoles](
	[CareGiverID] [bigint] NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_GiversCareRoles] PRIMARY KEY CLUSTERED 
(
	[CareGiverID] ASC,
	[RoleID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[GiversRecipients]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[GiversRecipients](
	[CareGiverID] [bigint] NOT NULL,
	[CareRecipientID] [bigint] NOT NULL,
	[Relation] [nvarchar](255) NOT NULL,
	[Participation] [tinyint] NOT NULL,
	[Notifications] [tinyint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[GiverRelation] [nvarchar](255) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
 CONSTRAINT [PK_GiverRecipients] PRIMARY KEY CLUSTERED 
(
	[CareGiverID] ASC,
	[CareRecipientID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[GiversSpecialties]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[GiversSpecialties](
	[CareGiverID] [bigint] NOT NULL,
	[SpecialtyID] [int] NOT NULL,
 CONSTRAINT [PK_GiversSpecialties] PRIMARY KEY CLUSTERED 
(
	[CareGiverID] ASC,
	[SpecialtyID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[Instructions]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[Instructions](
	[ID] [int] NOT NULL,
	[PromptID] [int] NOT NULL,
	[ModeType] [nvarchar](40) NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
	[WorkflowMode] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[Options]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[Options](
	[ID] [int] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[Options] [nvarchar](max) NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
	[AudioUrl] [nvarchar](max) NULL,
	[OptionWeb] [nvarchar](max) NULL,
	[OptionSms] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[Phones]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[Phones](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PhoneCountryCode] [varchar](5) NOT NULL,
	[PhoneNumber] [varchar](16) NOT NULL,
	[PhoneExtension] [varchar](10) NULL,
	[IsValid] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTCModified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
	[CarrierType] [int] NULL,
 CONSTRAINT [PK_Phones] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[Prompts]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[Prompts](
	[ID] [int] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[PromptContent] [nvarchar](4000) NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
	[PromptUrl] [nvarchar](4000) NULL,
	[PromptContentWeb] [nvarchar](4000) NULL,
	[AudioDescription] [nvarchar](4000) NULL,
	[DefaultPrompt] [bit] NULL,
	[PromptContentSms] [nvarchar](4000) NULL,
	[PromptContentForReport] [nvarchar](4000) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[LanguageID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[QuestionBlockQuestions]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[QuestionBlockQuestions](
	[QuestionBlockId] [int] NOT NULL,
	[CustomQuestionId] [nvarchar](40) NOT NULL,
	[QuestionOrder] [int] NOT NULL,
	[IsCustomQuestion] [bit] NOT NULL,
 CONSTRAINT [PK_QuestionBlockQuestions] PRIMARY KEY CLUSTERED 
(
	[QuestionBlockId] ASC,
	[CustomQuestionId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[QuestionsBlock]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[QuestionsBlock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nchar](255) NOT NULL,
	[Description] [nvarchar](4000) NOT NULL,
	[GroupId] [int] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[LanguageId] [tinyint] NOT NULL,
 CONSTRAINT [PK_QuestionsBlock] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[R]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[R](
	[RID] [bigint] NOT NULL,
	[RTypeID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsTesting] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_R] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[R_Addresses]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[R_Addresses](
	[RID] [bigint] NOT NULL,
	[AddressID] [int] NOT NULL,
	[AddressUsageID] [int] NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_R_Addresses] PRIMARY KEY CLUSTERED 
(
	[RID] ASC,
	[AddressID] ASC,
	[AddressUsageID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[R_EmailAddresses]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[R_EmailAddresses](
	[RID] [bigint] NOT NULL,
	[EmailAddressID] [int] NOT NULL,
	[EmailAddressUsageID] [int] NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_R_EmailAddresses] PRIMARY KEY CLUSTERED 
(
	[RID] ASC,
	[EmailAddressID] ASC,
	[EmailAddressUsageID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[R_Phones]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[R_Phones](
	[RID] [bigint] NOT NULL,
	[PhoneID] [int] NOT NULL,
	[PhoneUsageID] [int] NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[PhoneStatusID] [int] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_R_Phones] PRIMARY KEY CLUSTERED 
(
	[RID] ASC,
	[PhoneID] ASC,
	[PhoneUsageID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[SBU]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[SBU](
	[RID] [bigint] NOT NULL,
	[SBUName] [nvarchar](100) NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
	[Quota] [int] NULL,
	[DisplayInAdminPortal] [bit] NULL,
 CONSTRAINT [PK_SBU] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[SBUAttributes]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[SBUAttributes](
	[SBURID] [bigint] NOT NULL,
	[TypeID] [int] NOT NULL,
	[AttributeValue] [nvarchar](max) NOT NULL,
	[AttributeDescription] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
	[SBUGroupRID] [bigint] NULL,
	[SBUProgramID] [int] NULL,
 CONSTRAINT [PK_SBUAttributes] PRIMARY KEY CLUSTERED 
(
	[SBURID] ASC,
	[TypeID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[SBUCareRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[SBUCareRecordings](
	[SBURID] [bigint] NOT NULL,
	[CareRecordingId] [bigint] NOT NULL,
	[IvrOverrideType] [smallint] NULL,
 CONSTRAINT [PK_SBUCareRecordings] PRIMARY KEY CLUSTERED 
(
	[SBURID] ASC,
	[CareRecordingId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[SBUCustomFlows]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[SBUCustomFlows](
	[SBURID] [bigint] NOT NULL,
	[CustomFlowId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SBURID] ASC,
	[CustomFlowId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[SBUGroup]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[SBUGroup](
	[RID] [bigint] NOT NULL,
	[SBURID] [bigint] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
	[PARENTRID] [bigint] NULL,
	[UsersScope] [int] NULL,
 CONSTRAINT [PK_SBUGroup] PRIMARY KEY CLUSTERED 
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[SBUGroup_EndUsers]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[SBUGroup_EndUsers](
	[EndUserRID] [bigint] NOT NULL,
	[SBURID] [bigint] NOT NULL,
	[SBUGroupRID] [bigint] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_SBUGroup_EndUsers] PRIMARY KEY CLUSTERED 
(
	[EndUserRID] ASC,
	[SBUGroupRID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[SBUGroupAttributes]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[SBUGroupAttributes](
	[SBUGroupRID] [bigint] NOT NULL,
	[TypeID] [int] NOT NULL,
	[AttributeValue] [nvarchar](max) NOT NULL,
	[AttributeDescription] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_SBUGroupAttributes] PRIMARY KEY CLUSTERED 
(
	[SBUGroupRID] ASC,
	[TypeID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[SBUPartnerAlertConfiguration]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[SBUPartnerAlertConfiguration](
	[PartnerId] [bigint] NULL,
	[Title] [varchar](max) NULL,
	[Show] [bit] NULL,
	[ActionableAlert] [bit] NULL,
	[VitalTypeId] [bigint] NULL,
	[AlertOrder] [float] NULL,
	[ParentId] [bigint] NULL,
	[QuestionCategory] [bigint] NULL,
	[QuestionId] [bigint] NULL,
	[SectionCategory] [bit] NULL,
	[Notes] [varchar](255) NULL,
	[ShowNotes] [bit] NULL,
	[ClassName] [varchar](50) NULL,
	[SettingId] [int] NULL,
	[id] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[SbuPartnerConfigurationColumns]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[SbuPartnerConfigurationColumns](
	[PartnerId] [bigint] NULL,
	[VitalTypeId] [bigint] NULL,
	[Title] [varchar](600) NULL,
	[ColumnModalAlertName] [varchar](600) NULL,
	[ColumnActionableAlertName] [varchar](600) NULL,
	[ColumnAlertManagementName] [varchar](600) NULL,
	[HasFilter] [bit] NULL,
	[Show] [bit] NULL,
	[PreviewPhase] [bit] NULL,
	[Sortable] [varchar](50) NULL,
	[AdminColumn] [bit] NULL,
	[ColumnOrder] [float] NULL,
	[Clickable] [bit] NULL,
	[ActionableAlert] [int] NULL,
	[QuestionId] [bigint] NULL,
	[ParentId] [bigint] NULL,
	[DefaultColumn] [bit] NULL,
	[ShowUnit] [bit] NULL,
	[UnitText] [varchar](255) NULL,
	[CareFaxAlertName] [varchar](600) NULL,
	[SettingId] [int] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[SBUQuestionBlocks]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[SBUQuestionBlocks](
	[SBURid] [bigint] NOT NULL,
	[QuestionBlockId] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SBURid] ASC,
	[QuestionBlockId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[SBUs_EndUsers]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[SBUs_EndUsers](
	[EndUserRID] [bigint] NOT NULL,
	[SBURID] [bigint] NOT NULL,
	[SBUGroupRID] [bigint] NULL,
	[SBUProgramID] [int] NULL,
	[SBUInvitationCampaignID] [int] NULL,
	[IsActive] [bit] NULL,
	[DTUTC_Created] [datetime] NOT NULL,
	[DTUTC_Modified] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL,
 CONSTRAINT [PK_SBUs_EndUsers] PRIMARY KEY CLUSTERED 
(
	[EndUserRID] ASC,
	[SBURID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Temp].[SchemaByPartner]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[SchemaByPartner](
	[PartnerId] [bigint] NOT NULL,
	[Schema] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[SystemInstructions]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[SystemInstructions](
	[instructionId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Temp].[SystemOptionsTranslations]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Temp].[SystemOptionsTranslations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LanguageCode] [int] NOT NULL,
	[TagName] [varchar](50) NOT NULL,
	[Value] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[Addresses]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[Addresses](
	[ID] [int] NOT NULL,
	[AddressLine1] [nvarchar](255) NOT NULL,
	[AddressLine2] [nvarchar](150) NULL,
	[AddressLine3] [nvarchar](150) NULL,
	[City] [nvarchar](50) NOT NULL,
	[State] [nvarchar](50) NOT NULL,
	[ZipCode] [nvarchar](20) NOT NULL,
	[CountryCode] [char](2) NOT NULL,
	[IsValid] [bit] NOT NULL,
	[PropBag] [xml] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[Alerts]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[Alerts](
	[AlertID] [bigint] NOT NULL,
	[Content] [varchar](max) NOT NULL,
	[VitalTypeID] [int] NULL,
	[Frequency] [int] NOT NULL,
	[AlertType] [int] NULL,
	[DescriptionUrl] [varchar](max) NULL,
	[LanguageId] [int] NOT NULL,
	[QuestionId] [bigint] NULL,
	[TextFilter] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[CareGivers]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[CareGivers](
	[RID] [bigint] NOT NULL,
	[PhotoUrl] [nvarchar](255) NULL,
	[Language] [nvarchar](50) NULL,
	[Timezone] [nvarchar](50) NULL,
	[NotificationType] [int] NULL,
	[LastLogin] [datetime] NULL,
	[DTUTC_PlanEnd] [datetime] NULL,
	[PlanType] [int] NULL,
	[ExternalId] [nvarchar](255) NULL,
	[Designation] [nvarchar](10) NULL,
	[GiverType] [smallint] NULL,
	[CustomField1] [varchar](255) NULL,
	[CustomField2] [varchar](255) NULL,
	[CustomField3] [varchar](255) NULL,
	[CustomField4] [varchar](255) NULL,
	[IsPartnerDefaultGiver] [bit] NULL,
	[CareRoleID] [int] NULL,
	[SpecialtyID] [int] NULL,
	[TypeID] [int] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[CarePathway]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[CarePathway](
	[ID] [bigint] NOT NULL,
	[PartnerID] [bigint] NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](4000) NOT NULL,
	[GroupID] [int] NULL,
	[LanguageID] [tinyint] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
	[IsDeleted] [bit] NULL,
	[IsDeactivated] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[CarePathwayQuestions]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[CarePathwayQuestions](
	[ID] [bigint] NOT NULL,
	[CarePathwayID] [bigint] NOT NULL,
	[QuestionID] [bigint] NOT NULL,
	[QuestionOrder] [int] NOT NULL,
	[IsCustomQuestion] [bit] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[CarePlan]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[CarePlan](
	[ID] [bigint] NOT NULL,
	[PartnerID] [bigint] NULL,
	[Name] [nvarchar](255) NULL,
	[Description] [nvarchar](4000) NULL,
	[CarePlanGroupID] [int] NULL,
	[Duration] [int] NOT NULL,
	[UnitMeasure] [smallint] NOT NULL,
	[Schedule] [smallint] NOT NULL,
	[Segment] [smallint] NOT NULL,
	[Scope] [int] NOT NULL,
	[Exclude] [bit] NULL,
	[FlowTemplate] [nvarchar](40) NULL,
	[Attempts] [varchar](4000) NULL,
	[Continuous] [bit] NOT NULL,
	[LanguageId] [tinyint] NOT NULL,
	[Frequency] [int] NOT NULL,
	[TextToSpeech] [bit] NULL,
	[Voice] [varchar](20) NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[IsDeactivated] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[CarePlanAttributes]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[CarePlanAttributes](
	[ID] [bigint] NOT NULL,
	[CarePlanID] [bigint] NOT NULL,
	[AttributeTypeID] [int] NOT NULL,
	[AttributeValue] [nvarchar](max) NULL,
	[AttributeDescription] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[PropBag] [xml] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[CarePlanCareRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[CarePlanCareRecordings](
	[CarePlanID] [bigint] NOT NULL,
	[CareRecordingID] [bigint] NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[CarePlanQuestions]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[CarePlanQuestions](
	[CarePlanID] [bigint] NOT NULL,
	[QuestionID] [bigint] NOT NULL,
	[VariableIndex] [int] NOT NULL,
	[QuestionOrder] [int] NULL,
	[IsCustomQuestion] [bit] NOT NULL,
	[Call] [int] NULL,
	[WeekDay] [int] NULL,
	[IsQuestionBlock] [bit] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
	[OriginCustomFlowID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[CarePlanRecipients]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[CarePlanRecipients](
	[ID] [bigint] NOT NULL,
	[CarePlanID] [bigint] NOT NULL,
	[CareRecipientID] [bigint] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CustomFlowGroupsId] [bigint] NULL,
	[Status] [smallint] NOT NULL,
	[OverRiding] [bit] NOT NULL,
	[Channel] [smallint] NOT NULL,
	[Frequency] [int] NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[CarePlanRecipientsSchedule]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[CarePlanRecipientsSchedule](
	[ID] [bigint] NULL,
	[CarePlanRecipientsID] [bigint] NOT NULL,
	[AutomatedCallsScheduleID] [bigint] NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[CarePlanScheduling]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[CarePlanScheduling](
	[CarePlanID] [bigint] NOT NULL,
	[VariableIndex] [int] NOT NULL,
	[Call] [int] NULL,
	[WeekDay] [int] NULL,
	[CallOutGraph] [xml] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[CareRecipients]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[CareRecipients](
	[RID] [bigint] NOT NULL,
	[IsProfileComplete] [bit] NOT NULL,
	[PhotoUrl] [nvarchar](255) NULL,
	[Language] [nvarchar](50) NOT NULL,
	[Timezone] [nvarchar](50) NULL,
	[ZipCode] [nvarchar](10) NULL,
	[StartDate] [datetime] NULL,
	[SuspendedFrom] [datetime] NULL,
	[SuspendedTo] [datetime] NULL,
	[PausedReason] [nvarchar](255) NULL,
	[EMRSystemName] [nvarchar](255) NULL,
	[MRN] [nvarchar](255) NULL,
	[ExternalID] [nvarchar](255) NULL,
	[CustomField1] [varchar](100) NULL,
	[CustomField2] [varchar](100) NULL,
	[CustomField3] [varchar](100) NULL,
	[CustomField4] [varchar](100) NULL,
	[CustomField5] [varchar](100) NULL,
	[CustomField6] [varchar](100) NULL,
	[CustomField7] [varchar](100) NULL,
	[CustomField8] [varchar](100) NULL,
	[SegmentID] [varchar](3) NULL,
	[TypeID] [int] NULL,
	[IsCreatedFromPortal] [bit] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[CareRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[CareRecordings](
	[ID] [bigint] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Description] [varchar](4000) NULL,
	[Text] [nvarchar](max) NULL,
	[Section] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[PromptID] [bigint] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[IsDeactivated] [bit] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[CareRules]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[CareRules](
	[ID] [bigint] NOT NULL,
	[CareRule] [nvarchar](max) NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[DoNotCall]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[DoNotCall](
	[PartnerId] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[PhoneNumber] [varchar](16) NOT NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[OptOutMethod] [varchar](20) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[EmailAddresses]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[EmailAddresses](
	[ID] [bigint] NOT NULL,
	[EmailAddress] [nvarchar](150) NOT NULL,
	[IsValid] [bit] NOT NULL,
	[PropBag] [xml] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[GiversRecipients]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[GiversRecipients](
	[CareGiverID] [bigint] NOT NULL,
	[CareRecipientID] [bigint] NOT NULL,
	[Relation] [nvarchar](255) NOT NULL,
	[Participation] [tinyint] NOT NULL,
	[Notifications] [tinyint] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[GiverRelation] [nvarchar](255) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[Instructions]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[Instructions](
	[ID] [bigint] NOT NULL,
	[PromptID] [bigint] NOT NULL,
	[ModeType] [nvarchar](40) NOT NULL,
	[PropBag] [xml] NULL,
	[WorkflowMode] [int] NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[Options]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[Options](
	[ID] [bigint] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[Options] [nvarchar](max) NOT NULL,
	[PropBag] [xml] NULL,
	[AudioUrl] [nvarchar](max) NULL,
	[OptionWeb] [nvarchar](max) NULL,
	[OptionSms] [nvarchar](max) NULL,
	[TextFilter] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[Partner]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[Partner](
	[ID] [bigint] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[DisplayInAdminPortal] [bit] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
	[LogoUrl] [varchar](255) NULL,
	[DataSchema] [varchar](100) NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[PartnerAlertConfigurations]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[PartnerAlertConfigurations](
	[ID] [bigint] NOT NULL,
	[PartnerID] [bigint] NULL,
	[Title] [varchar](2000) NULL,
	[Show] [bit] NULL,
	[ActionableAlert] [bit] NULL,
	[VitalTypeID] [bigint] NULL,
	[AlertOrder] [float] NULL,
	[ParentId] [bigint] NULL,
	[QuestionCategory] [bigint] NULL,
	[QuestionId] [bigint] NULL,
	[SectionCategory] [bit] NULL,
	[Notes] [varchar](255) NULL,
	[ShowNotes] [bit] NULL,
	[ClassName] [varchar](50) NULL,
	[SettingId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[PartnerAttributes]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[PartnerAttributes](
	[ID] [bigint] NOT NULL,
	[PartnerID] [bigint] NOT NULL,
	[AttributeTypeID] [int] NOT NULL,
	[AttributeValue] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[PartnerCareRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[PartnerCareRecordings](
	[ID] [bigint] NOT NULL,
	[PartnerID] [bigint] NOT NULL,
	[CareRecordingId] [bigint] NULL,
	[IvrOverrideTypeId] [int] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[PartnerConfigurationColumns]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[PartnerConfigurationColumns](
	[ID] [bigint] NOT NULL,
	[PartnerId] [bigint] NULL,
	[VitalTypeId] [bigint] NULL,
	[Title] [varchar](2000) NULL,
	[ColumnModalAlertName] [varchar](2000) NULL,
	[ColumnActionableAlertName] [varchar](2000) NULL,
	[ColumnAlertManagementName] [varchar](2000) NULL,
	[HasFilter] [bit] NULL,
	[Show] [bit] NULL,
	[PreviewPhase] [bit] NULL,
	[Sortable] [varchar](50) NULL,
	[AdminColumn] [bit] NULL,
	[ColumnOrder] [float] NULL,
	[Clickable] [bit] NULL,
	[ActionableAlert] [int] NULL,
	[QuestionId] [bigint] NULL,
	[ParentId] [bigint] NULL,
	[DefaultColumn] [bit] NULL,
	[ShowUnit] [bit] NULL,
	[UnitText] [varchar](255) NULL,
	[CareFaxAlertName] [varchar](2000) NULL,
	[SettingId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[PartnerEndUsers]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[PartnerEndUsers](
	[PartnerID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[PartnerGroupID] [bigint] NULL,
	[PartnerProgramID] [bigint] NULL,
	[PartnerInvitationCampaignID] [bigint] NULL,
	[IsActive] [bit] NULL,
	[PropBag] [xml] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[PartnerGroup]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[PartnerGroup](
	[ID] [bigint] NOT NULL,
	[PartnerID] [bigint] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL,
	[PARENTRID] [bigint] NULL,
	[IsDefault] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[PartnerGroupAttributes]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[PartnerGroupAttributes](
	[ID] [bigint] NOT NULL,
	[PartnerGroupID] [bigint] NOT NULL,
	[AttributeTypeID] [int] NOT NULL,
	[AttributeValue] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[PartnerGroupEndUsers]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[PartnerGroupEndUsers](
	[RID] [bigint] NOT NULL,
	[PartnerID] [bigint] NOT NULL,
	[PartnerGroupID] [bigint] NOT NULL,
	[PropBag] [xml] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[PersonAddresses]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[PersonAddresses](
	[RID] [bigint] NOT NULL,
	[AddressID] [int] NOT NULL,
	[AddressUsageID] [int] NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[PropBag] [xml] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[PersonEmailAddresses]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[PersonEmailAddresses](
	[RID] [bigint] NULL,
	[EmailAddressID] [bigint] NOT NULL,
	[EmailAddressUsageID] [int] NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[PropBag] [xml] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[PersonPhones]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[PersonPhones](
	[RID] [bigint] NULL,
	[PhoneID] [bigint] NOT NULL,
	[PhoneUsageID] [int] NOT NULL,
	[IsPrimary] [bit] NOT NULL,
	[PropBag] [xml] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[Phones]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[Phones](
	[ID] [bigint] NOT NULL,
	[PhoneCountryCode] [varchar](10) NOT NULL,
	[PhoneNumber] [varchar](16) NOT NULL,
	[PhoneExtension] [varchar](10) NULL,
	[FIPSCode] [varchar](10) NULL,
	[IsValid] [bit] NOT NULL,
	[PropBag] [xml] NULL,
	[CarrierTypeID] [int] NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[PowerBIReport]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[PowerBIReport](
	[Id] [bigint] NOT NULL,
	[PartnerId] [bigint] NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Url] [nvarchar](1024) NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[Prompts]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[Prompts](
	[ID] [bigint] NOT NULL,
	[LanguageID] [int] NOT NULL,
	[PromptContent] [nvarchar](4000) NOT NULL,
	[PropBag] [xml] NOT NULL,
	[PromptUrl] [nvarchar](4000) NULL,
	[PromptContentWeb] [nvarchar](4000) NULL,
	[AudioDescription] [nvarchar](4000) NULL,
	[DefaultPrompt] [bit] NULL,
	[PromptContentSms] [nvarchar](4000) NULL,
	[PromptContentForReport] [nvarchar](4000) NULL,
	[TextFilter] [nvarchar](max) NULL,
	[PromptContentHash] [varbinary](32) NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[Question]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[Question](
	[ID] [bigint] NOT NULL,
	[QuestionTypeID] [int] NOT NULL,
	[VitalTypeID] [bigint] NOT NULL,
	[PromptID] [bigint] NOT NULL,
	[Sample] [int] NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[QuestionCategory] [int] NOT NULL,
	[Grammar] [varchar](128) NULL,
	[DisableReaction] [bit] NULL,
	[DisableInstruction] [bit] NULL,
	[QuestionHangUp] [bit] NULL,
	[InstructionMode] [tinyint] NOT NULL,
	[MinDigits] [int] NULL,
	[MaxDigits] [int] NULL,
	[Wait] [bit] NULL,
	[LanguageID] [int] NOT NULL,
	[Frequency] [int] NULL,
	[ReadNumberAs] [tinyint] NULL,
	[QuestionChannel] [int] NOT NULL,
	[Decimals] [tinyint] NULL,
	[CheckOut] [int] NULL,
	[Whisper] [bit] NULL,
	[RepeatAfterAttemps] [bit] NULL,
	[BargeIn] [bit] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[QuestionAnswerCareRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[QuestionAnswerCareRecordings](
	[ID] [bigint] NOT NULL,
	[QuestionAnswerID] [bigint] NOT NULL,
	[CareRecordingID] [bigint] NULL,
	[QuestionRecordingTypeID] [int] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[QuestionAnswers]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[QuestionAnswers](
	[ID] [bigint] NOT NULL,
	[ReadingLevel] [tinyint] NULL,
	[TriggerAlert] [bit] NOT NULL,
	[QuestionID] [bigint] NOT NULL,
	[NextID] [bigint] NULL,
	[OptionID] [bigint] NULL,
	[From] [float] NULL,
	[To] [float] NULL,
	[Action] [varchar](128) NULL,
	[DisableAnswerReaction] [bit] NULL,
	[Value] [varchar](128) NULL,
	[Sample] [int] NOT NULL,
	[TriggerFaxAlert] [int] NOT NULL,
	[IsPrimarySubQuestion] [bit] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[QuestionCareRecordings]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[QuestionCareRecordings](
	[ID] [bigint] NOT NULL,
	[QuestionID] [bigint] NOT NULL,
	[CareRecordingID] [bigint] NULL,
	[QuestionRecordingTypeID] [int] NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[QuestionCareRules]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[QuestionCareRules](
	[QuestionID] [bigint] NOT NULL,
	[CareRuleID] [bigint] NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[R]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[R](
	[RID] [bigint] NOT NULL,
	[RTypeID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsTesting] [bit] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
	[PropBag] [xml] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[R_Deactivated]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[R_Deactivated](
	[ID] [bigint] NOT NULL,
	[RID] [bigint] NOT NULL,
	[DeactivationReasonID] [int] NOT NULL,
	[DeactivationMethod] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[LastModifiedOn] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](225) NOT NULL,
	[LastModifiedBy] [nvarchar](225) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[TestPersonInfo]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[TestPersonInfo](
	[DataSchema] [varchar](100) NULL,
	[SBURID] [bigint] NULL,
	[RID] [bigint] NULL,
	[FName] [nvarchar](100) NULL,
	[MName] [nvarchar](100) NULL,
	[LName] [nvarchar](100) NULL,
	[MaidenName] [nvarchar](100) NULL,
	[SingleName] [nvarchar](100) NULL,
	[XofYName] [nvarchar](100) NULL,
	[Title] [nvarchar](50) NULL,
	[Ordinal] [nvarchar](50) NULL,
	[Nickname] [nvarchar](100) NULL,
	[DOB] [date] NULL,
	[Gender] [int] NULL,
	[DTUTC_Created] [datetime] NULL,
	[DTUTC_Modified] [datetime] NULL,
	[PropBag] [xml] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [TempStageProd].[UserReport]    Script Date: 3/4/2025 10:25:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [TempStageProd].[UserReport](
	[ID] [bigint] NOT NULL,
	[ReportId] [bigint] NOT NULL,
	[EmailAddress] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](225) NULL,
	[LastModifiedBy] [nvarchar](225) NULL,
	[CreatedOn] [datetime] NULL,
	[LastModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_aaanew_DOB]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_aaanew_DOB] ON [aaanew].[PersonInfo]
(
	[DOB] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_aaanew_FName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_aaanew_FName] ON [aaanew].[PersonInfo]
(
	[FName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_aaanew_Gender]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_aaanew_Gender] ON [aaanew].[PersonInfo]
(
	[Gender] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_aaanew_LName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_aaanew_LName] ON [aaanew].[PersonInfo]
(
	[LName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_aaanew_MName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_aaanew_MName] ON [aaanew].[PersonInfo]
(
	[MName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_aaanew_RID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_aaanew_RID] ON [aaanew].[PersonInfo]
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_ccsss_DOB]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_ccsss_DOB] ON [ccsss].[PersonInfo]
(
	[DOB] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_ccsss_FName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_ccsss_FName] ON [ccsss].[PersonInfo]
(
	[FName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_ccsss_Gender]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_ccsss_Gender] ON [ccsss].[PersonInfo]
(
	[Gender] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_ccsss_LName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_ccsss_LName] ON [ccsss].[PersonInfo]
(
	[LName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_ccsss_MName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_ccsss_MName] ON [ccsss].[PersonInfo]
(
	[MName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_ccsss_RID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_ccsss_RID] ON [ccsss].[PersonInfo]
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33_DOB]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33_DOB] ON [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[PersonInfo]
(
	[DOB] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33_FName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33_FName] ON [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[PersonInfo]
(
	[FName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33_Gender]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33_Gender] ON [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[PersonInfo]
(
	[Gender] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33_LName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33_LName] ON [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[PersonInfo]
(
	[LName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33_MName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33_MName] ON [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[PersonInfo]
(
	[MName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33_RID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33_RID] ON [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[PersonInfo]
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb_DOB]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb_DOB] ON [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[PersonInfo]
(
	[DOB] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb_FName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb_FName] ON [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[PersonInfo]
(
	[FName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb_Gender]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb_Gender] ON [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[PersonInfo]
(
	[Gender] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb_LName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb_LName] ON [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[PersonInfo]
(
	[LName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb_MName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb_MName] ON [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[PersonInfo]
(
	[MName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb_RID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb_RID] ON [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[PersonInfo]
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_EHDEV_DOB]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_EHDEV_DOB] ON [EHDEV].[PersonInfo]
(
	[DOB] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_EHDEV_FName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_EHDEV_FName] ON [EHDEV].[PersonInfo]
(
	[FName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_EHDEV_Gender]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_EHDEV_Gender] ON [EHDEV].[PersonInfo]
(
	[Gender] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_EHDEV_LName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_EHDEV_LName] ON [EHDEV].[PersonInfo]
(
	[LName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_EHDEV_MName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_EHDEV_MName] ON [EHDEV].[PersonInfo]
(
	[MName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_EHDEV_RID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_EHDEV_RID] ON [EHDEV].[PersonInfo]
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_ETLTEST_DOB]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_ETLTEST_DOB] ON [ETLTEST].[PersonInfo]
(
	[DOB] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_ETLTEST_FName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_ETLTEST_FName] ON [ETLTEST].[PersonInfo]
(
	[FName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_ETLTEST_Gender]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_ETLTEST_Gender] ON [ETLTEST].[PersonInfo]
(
	[Gender] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_ETLTEST_LName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_ETLTEST_LName] ON [ETLTEST].[PersonInfo]
(
	[LName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_ETLTEST_MName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_ETLTEST_MName] ON [ETLTEST].[PersonInfo]
(
	[MName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_ETLTEST_RID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_ETLTEST_RID] ON [ETLTEST].[PersonInfo]
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CallInstance_DTUTC_Created]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_CallInstance_DTUTC_Created] ON [IVR].[CallInstance]
(
	[CreatedOn] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CallInstance_DTUTC_Finished]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_CallInstance_DTUTC_Finished] ON [IVR].[CallInstance]
(
	[FinishedOn] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CallInstance_DTUTC_LastUpdated]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_CallInstance_DTUTC_LastUpdated] ON [IVR].[CallInstance]
(
	[LastModifiedOn] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CallStatus_CallStatus]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_CallStatus_CallStatus] ON [IVR].[CallStatus]
(
	[CallStatus] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CallStatus_Timestamp]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_CallStatus_Timestamp] ON [IVR].[CallStatus]
(
	[Timestamp] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GiverAlerts_Addressed]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_GiverAlerts_Addressed] ON [IVR].[GiverAlerts]
(
	[Addressed] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GiverAlerts_AlertType]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_GiverAlerts_AlertType] ON [IVR].[GiverAlerts]
(
	[AlertType] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GiverAlerts_CareGiverID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_GiverAlerts_CareGiverID] ON [IVR].[GiverAlerts]
(
	[CareGiverID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GiverAlerts_CreateOn]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_GiverAlerts_CreateOn] ON [IVR].[GiverAlerts]
(
	[CreatedOn] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [index_StatusCall_Conversation_uuid]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [index_StatusCall_Conversation_uuid] ON [IVR].[StatusCall]
(
	[Conversation_uuid] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [nci_StatusCall_workflowid_phoneto]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [nci_StatusCall_workflowid_phoneto] ON [IVR].[StatusCall]
(
	[WorkflowId] ASC,
	[PhoneTo] ASC
)
INCLUDE([CurrentDateTime],[CurrentStatus]) WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IDX_Alerts_QuestionId_VitalTypeId_Frequency_AlertType_LanguageId]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IDX_Alerts_QuestionId_VitalTypeId_Frequency_AlertType_LanguageId] ON [main].[Alerts]
(
	[QuestionId] ASC,
	[VitalTypeID] ASC,
	[Frequency] ASC,
	[AlertType] ASC,
	[LanguageId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Answer_QuestionID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_Answer_QuestionID] ON [main].[Answer]
(
	[QuestionID] ASC
)
INCLUDE([Next]) WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MainCarePathway]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_MainCarePathway] ON [main].[CarePathway]
(
	[PartnerID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarePathwayQuestions_CarePathwayID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_CarePathwayQuestions_CarePathwayID] ON [main].[CarePathwayQuestions]
(
	[CarePathwayID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarePathwayQuestions_QuestionID_IsCustomQuestion]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_CarePathwayQuestions_QuestionID_IsCustomQuestion] ON [main].[CarePathwayQuestions]
(
	[QuestionID] ASC,
	[IsCustomQuestion] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MainCarePlan]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_MainCarePlan] ON [main].[CarePlan]
(
	[PartnerID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarePlanQuestion_QuestionID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_CarePlanQuestion_QuestionID] ON [main].[CarePlanQuestions]
(
	[QuestionID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CarePlanRecipients_CareRecipientID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_CarePlanRecipients_CareRecipientID] ON [main].[CarePlanRecipients]
(
	[CareRecipientID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CareRecipients_RID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_CareRecipients_RID] ON [main].[CareRecipients]
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CareRule_QuestionType_Object]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_CareRule_QuestionType_Object] ON [main].[CareRuleObjectOperator]
(
	[QuestionTypeId] ASC,
	[CareRuleObjectId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GiversRecipients_CareGiverID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_GiversRecipients_CareGiverID] ON [main].[GiversRecipients]
(
	[CareGiverID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_GiversRecipients_CareRecipientID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_GiversRecipients_CareRecipientID] ON [main].[GiversRecipients]
(
	[CareRecipientID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_M_Language_Description]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_M_Language_Description] ON [main].[M_Language]
(
	[Description] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Partner_CreatedOn]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_Partner_CreatedOn] ON [main].[Partner]
(
	[CreatedOn] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Partner_DataSchema]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_Partner_DataSchema] ON [main].[Partner]
(
	[DataSchema] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Partner_Name]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_Partner_Name] ON [main].[Partner]
(
	[Name] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PartnerAlertConfigurations_PartnerID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PartnerAlertConfigurations_PartnerID] ON [main].[PartnerAlertConfigurations]
(
	[PartnerID] ASC,
	[SettingId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PartnerConfigurationColumns_PartnerID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PartnerConfigurationColumns_PartnerID] ON [main].[PartnerConfigurationColumns]
(
	[PartnerId] ASC,
	[SettingId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PartnerEndUsers_RID_IX]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [PartnerEndUsers_RID_IX] ON [main].[PartnerEndUsers]
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PartnerGroupEndUsers_RID_IX]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [PartnerGroupEndUsers_RID_IX] ON [main].[PartnerGroupEndUsers]
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonAddresses_RID_AddressID_AddressUsageID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonAddresses_RID_AddressID_AddressUsageID] ON [main].[PersonAddresses]
(
	[RID] ASC,
	[AddressID] ASC,
	[AddressUsageID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonEmailAddresses_RID_EmailAddressID_EmailAddressUsageID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonEmailAddresses_RID_EmailAddressID_EmailAddressUsageID] ON [main].[PersonEmailAddresses]
(
	[RID] ASC,
	[EmailAddressID] ASC,
	[EmailAddressUsageID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonPhones_RID_PhoneID_PhoneUsageID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonPhones_RID_PhoneID_PhoneUsageID] ON [main].[PersonPhones]
(
	[RID] ASC,
	[PhoneID] ASC,
	[PhoneUsageID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Partner_ID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_Partner_ID] ON [main].[PowerBIReport]
(
	[PartnerId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_MainQuestionAnswers_QuestionID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_MainQuestionAnswers_QuestionID] ON [main].[Prompts]
(
	[PromptContentHash] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_MainQuestionAnswers_QuestionID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_MainQuestionAnswers_QuestionID] ON [main].[QuestionAnswers]
(
	[QuestionID] ASC
)
INCLUDE([NextID]) WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [QuestionCareRecordings_Question]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [QuestionCareRecordings_Question] ON [main].[QuestionCareRecordings]
(
	[QuestionID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_R_IsTesting]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_R_IsTesting] ON [main].[R]
(
	[IsTesting] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ToPhoneNumber_OutgoingMessages_SMS]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_ToPhoneNumber_OutgoingMessages_SMS] ON [MESSAGING].[OutgoingMessages_SMS]
(
	[ToPhoneNumber] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_sas_DOB]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_sas_DOB] ON [sas].[PersonInfo]
(
	[DOB] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_sas_FName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_sas_FName] ON [sas].[PersonInfo]
(
	[FName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_sas_Gender]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_sas_Gender] ON [sas].[PersonInfo]
(
	[Gender] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_sas_LName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_sas_LName] ON [sas].[PersonInfo]
(
	[LName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_sas_MName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_sas_MName] ON [sas].[PersonInfo]
(
	[MName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_sas_RID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_sas_RID] ON [sas].[PersonInfo]
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_UHC_DOB]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_UHC_DOB] ON [UHC].[PersonInfo]
(
	[DOB] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_UHC_FName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_UHC_FName] ON [UHC].[PersonInfo]
(
	[FName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_UHC_Gender]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_UHC_Gender] ON [UHC].[PersonInfo]
(
	[Gender] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_UHC_LName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_UHC_LName] ON [UHC].[PersonInfo]
(
	[LName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_UHC_MName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_UHC_MName] ON [UHC].[PersonInfo]
(
	[MName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_UHC_RID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_UHC_RID] ON [UHC].[PersonInfo]
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc_DOB]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc_DOB] ON [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[PersonInfo]
(
	[DOB] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc_FName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc_FName] ON [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[PersonInfo]
(
	[FName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc_Gender]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc_Gender] ON [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[PersonInfo]
(
	[Gender] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc_LName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc_LName] ON [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[PersonInfo]
(
	[LName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PersonInfo_xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc_MName]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc_MName] ON [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[PersonInfo]
(
	[MName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PersonInfo_xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc_RID]    Script Date: 3/4/2025 10:25:33 AM ******/
CREATE NONCLUSTERED INDEX [IX_PersonInfo_xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc_RID] ON [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[PersonInfo]
(
	[RID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [aaanew].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Created]  DEFAULT (getutcdate()) FOR [DTUTC_Created]
GO
ALTER TABLE [aaanew].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Modigied]  DEFAULT (getutcdate()) FOR [DTUTC_Modified]
GO
ALTER TABLE [aaanew].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_PropBag]  DEFAULT (N'<PropBag></PropBag>') FOR [PropBag]
GO
ALTER TABLE [CareChat].[Instance] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [CareChat].[Instance] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [ccsss].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Created]  DEFAULT (getutcdate()) FOR [DTUTC_Created]
GO
ALTER TABLE [ccsss].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Modigied]  DEFAULT (getutcdate()) FOR [DTUTC_Modified]
GO
ALTER TABLE [ccsss].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_PropBag]  DEFAULT (N'<PropBag></PropBag>') FOR [PropBag]
GO
ALTER TABLE [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Created]  DEFAULT (getutcdate()) FOR [DTUTC_Created]
GO
ALTER TABLE [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Modigied]  DEFAULT (getutcdate()) FOR [DTUTC_Modified]
GO
ALTER TABLE [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_PropBag]  DEFAULT (N'<PropBag></PropBag>') FOR [PropBag]
GO
ALTER TABLE [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Created]  DEFAULT (getutcdate()) FOR [DTUTC_Created]
GO
ALTER TABLE [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Modigied]  DEFAULT (getutcdate()) FOR [DTUTC_Modified]
GO
ALTER TABLE [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_PropBag]  DEFAULT (N'<PropBag></PropBag>') FOR [PropBag]
GO
ALTER TABLE [dbo].[SystemPrompts] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[SystemPrompts] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [EHDEV].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Created]  DEFAULT (getutcdate()) FOR [DTUTC_Created]
GO
ALTER TABLE [EHDEV].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Modigied]  DEFAULT (getutcdate()) FOR [DTUTC_Modified]
GO
ALTER TABLE [EHDEV].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_PropBag]  DEFAULT (N'<PropBag></PropBag>') FOR [PropBag]
GO
ALTER TABLE [ETLTEST].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Created]  DEFAULT (getutcdate()) FOR [DTUTC_Created]
GO
ALTER TABLE [ETLTEST].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Modigied]  DEFAULT (getutcdate()) FOR [DTUTC_Modified]
GO
ALTER TABLE [ETLTEST].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_PropBag]  DEFAULT (N'<PropBag></PropBag>') FOR [PropBag]
GO
ALTER TABLE [FileUpload].[FPTMBI_scriptconsent_Hist] ADD  DEFAULT (newid()) FOR [FileuploadID]
GO
ALTER TABLE [IVR].[AddressesMaps] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[AddressesMaps] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[CallBackConfig] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[CallBackConfig] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[CallInstance] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[CallInstance] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[CallStatus] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[CallStatus] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[CallTemplate] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[CallTemplate] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[Clients] ADD  DEFAULT ((0)) FOR [SendSMSCustom]
GO
ALTER TABLE [IVR].[Clients] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[Clients] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[DateFormats] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[DateFormats] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[GiverAlerts] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[GiverAlerts] ADD  DEFAULT ((0)) FOR [Addressed]
GO
ALTER TABLE [IVR].[GiverNotifications] ADD  CONSTRAINT [DF_IVR.GiverNotifications_NotificationFrequency]  DEFAULT ((0)) FOR [NotificationFrequency]
GO
ALTER TABLE [IVR].[GiverRelationPrompts] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[GiverRelationPrompts] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[LostCalls] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[LostCalls] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[MappingWordsToNumbers] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[MappingWordsToNumbers] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[OPTUM_API_CarePlan] ADD  DEFAULT ('') FOR [RunApiOptum]
GO
ALTER TABLE [IVR].[OPTUM_API_CarePlan] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[OPTUM_API_CarePlan] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[OPTUM_API_Mapping_v2] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[OPTUM_API_Mapping_v2] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[OPTUM_API_MappingICUE] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[OPTUM_API_MappingICUE] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[OPTUM_API_Outcome] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[OPTUM_API_Outcome] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[OPTUM_API_Score] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[OPTUM_API_Score] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[PersonalMessage] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[PersonalMessage] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[Reactions] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[Reactions] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[RecipientChannels] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [IVR].[RecipientChannels] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[RecipientChannels] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[Reminders] ADD  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[Reminders] ADD  DEFAULT (getutcdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[StatusCall] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[StatusCall] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[SummarySMSPostCall] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[SummarySMSPostCall] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[SystemInstructions] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[SystemInstructions] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[SystemOptions] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[SystemOptions] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[TempCallTemplate] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [IVR].[TempCallTemplate] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [IVR].[ZipCodeState] ADD  DEFAULT ((1)) FOR [ListId]
GO
ALTER TABLE [main].[Addresses] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[Addresses] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[Addresses] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[Addresses] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[Alerts] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[Alerts] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[Alerts] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[Alerts] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[Answer] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[Answer] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[Answer] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[Answer] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[AutomatedCallsSchedule] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[AutomatedCallsSchedule] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[AutomatedCallsSchedule] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[AutomatedCallsSchedule] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[CareGivers] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[CareGivers] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[CareGivers] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[CareGivers] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[CarePathway] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[CarePathway] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[CarePathway] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[CarePathway] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[CarePathway] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [main].[CarePathway] ADD  DEFAULT ((0)) FOR [IsDeactivated]
GO
ALTER TABLE [main].[CarePathwayLanguages] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[CarePathwayLanguages] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[CarePathwayLanguages] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[CarePathwayLanguages] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[CarePathwayQuestions] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[CarePathwayQuestions] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[CarePathwayQuestions] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[CarePathwayQuestions] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[CarePlan] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[CarePlan] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[CarePlan] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[CarePlan] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[CarePlan] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [main].[CarePlan] ADD  DEFAULT ((0)) FOR [IsDeactivated]
GO
ALTER TABLE [main].[CarePlanAttributes] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[CarePlanAttributes] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[CarePlanAttributes] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[CarePlanAttributes] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[CarePlanCareRecordings] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[CarePlanCareRecordings] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[CarePlanCareRecordings] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[CarePlanCareRecordings] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[CarePlanLanguages] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[CarePlanLanguages] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[CarePlanLanguages] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[CarePlanLanguages] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[CarePlanQuestions] ADD  DEFAULT ((0)) FOR [IsCustomQuestion]
GO
ALTER TABLE [main].[CarePlanQuestions] ADD  DEFAULT ((0)) FOR [IsQuestionBlock]
GO
ALTER TABLE [main].[CarePlanQuestions] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[CarePlanQuestions] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[CarePlanQuestions] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[CarePlanQuestions] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[CarePlanRecipients] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [main].[CarePlanRecipients] ADD  DEFAULT ((0)) FOR [OverRiding]
GO
ALTER TABLE [main].[CarePlanRecipients] ADD  DEFAULT ((0)) FOR [Channel]
GO
ALTER TABLE [main].[CarePlanRecipients] ADD  DEFAULT ((1)) FOR [Frequency]
GO
ALTER TABLE [main].[CarePlanRecipients] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[CarePlanRecipients] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[CarePlanRecipients] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[CarePlanRecipients] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[CarePlanRecipientsSchedule] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[CarePlanRecipientsSchedule] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[CarePlanRecipientsSchedule] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[CarePlanRecipientsSchedule] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[CarePlanScheduling] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[CarePlanScheduling] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[CarePlanScheduling] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[CarePlanScheduling] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[CareRecipients] ADD  DEFAULT ((0)) FOR [IsCreatedFromPortal]
GO
ALTER TABLE [main].[CareRecipients] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[CareRecipients] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[CareRecipients] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[CareRecipients] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[CareRecordings] ADD  DEFAULT ((0)) FOR [IsDeactivated]
GO
ALTER TABLE [main].[CareRecordings] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[CareRecordings] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[CareRecordings] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[CareRecordings] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[CareRuleObjectOperator] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[CareRuleObjectOperator] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[CareRuleObjectOperator] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[CareRuleObjectOperator] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[CareRules] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[CareRules] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[CareRules] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[CareRules] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[DataSyncProductionIDs] ADD  DEFAULT ((9999)) FOR [CurrentRowsCountInNew]
GO
ALTER TABLE [main].[DataSyncProductionIDs] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[DoNotCall] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[DoNotCall] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[DoNotCall] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[DoNotCall] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[EmailAddresses] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[EmailAddresses] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[EmailAddresses] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[EmailAddresses] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[Enum] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[Enum] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[Enum] ADD  DEFAULT ('user') FOR [LastModifedBy]
GO
ALTER TABLE [main].[Enum] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[GiversRecipients] ADD  DEFAULT ((0)) FOR [Participation]
GO
ALTER TABLE [main].[GiversRecipients] ADD  DEFAULT ((7)) FOR [Notifications]
GO
ALTER TABLE [main].[GiversRecipients] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [main].[GiversRecipients] ADD  DEFAULT ('') FOR [GiverRelation]
GO
ALTER TABLE [main].[GiversRecipients] ADD  DEFAULT ((1)) FOR [IsAdmin]
GO
ALTER TABLE [main].[GiversRecipients] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[GiversRecipients] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[GiversRecipients] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[GiversRecipients] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[Instructions] ADD  DEFAULT ((1)) FOR [WorkflowMode]
GO
ALTER TABLE [main].[Instructions] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[Instructions] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[Instructions] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[Instructions] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_AddressUsage] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_AddressUsage] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_AddressUsage] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_AddressUsage] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_AttributeType] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_AttributeType] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_AttributeType] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_AttributeType] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_CarePathwayGroup] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_CarePathwayGroup] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_CarePathwayGroup] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_CarePathwayGroup] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_CarePlanGroup] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_CarePlanGroup] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_CarePlanGroup] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_CarePlanGroup] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_CareRecordingGroup] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_CareRecordingGroup] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_CareRecordingGroup] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_CareRecordingGroup] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_CareRole] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_CareRole] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_CareRole] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_CareRole] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_CareRuleObjects] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_CareRuleObjects] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_CareRuleObjects] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_CareRuleObjects] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_CareRuleOperator] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_CareRuleOperator] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_CareRuleOperator] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_CareRuleOperator] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_CareRuleOption] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_CareRuleOption] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_CareRuleOption] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_CareRuleOption] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_CareRuleRecipient] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_CareRuleRecipient] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_CareRuleRecipient] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_CareRuleRecipient] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_CareRuleRecipientOperator] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_CareRuleRecipientOperator] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_CareRuleRecipientOperator] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_CareRuleRecipientOperator] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_CareRuleRecipientOption] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_CareRuleRecipientOption] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_CareRuleRecipientOption] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_CareRuleRecipientOption] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_CareRuleValueType] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_CareRuleValueType] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_CareRuleValueType] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_CareRuleValueType] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_City] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_City] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_City] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_City] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_Countries] ADD  CONSTRAINT [DF_Countries_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [main].[M_Countries] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_Countries] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_Countries] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_Countries] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_CountryCode] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_CountryCode] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_CountryCode] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_CountryCode] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_CustomVitalType] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_CustomVitalType] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_CustomVitalType] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_CustomVitalType] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_Designation] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_Designation] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_Designation] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_Designation] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_EmailAddressUsage] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_EmailAddressUsage] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_EmailAddressUsage] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_EmailAddressUsage] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_GroupAttributeType] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_GroupAttributeType] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_GroupAttributeType] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_GroupAttributeType] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_Language] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_Language] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_Language] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_Language] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_NameOrdinal] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_NameOrdinal] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_NameOrdinal] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_NameOrdinal] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_OverrideType] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_OverrideType] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_OverrideType] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_OverrideType] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_PartnerAttributeType] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_PartnerAttributeType] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_PartnerAttributeType] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_PartnerAttributeType] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_PhoneUsage] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [main].[M_PhoneUsage] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_PhoneUsage] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_PhoneUsage] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_PhoneUsage] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_QuestionCategory] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_QuestionCategory] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_QuestionCategory] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_QuestionCategory] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_QuestionType] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_QuestionType] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_QuestionType] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_QuestionType] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_Specialty] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_Specialty] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_Specialty] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_Specialty] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_State] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_State] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_State] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_State] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_StatusMapping] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_StatusMapping] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_StatusMapping] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_StatusMapping] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_TimeZones] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_TimeZones] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_TimeZones] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_TimeZones] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_TimeZonesMapping] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_TimeZonesMapping] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_TimeZonesMapping] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_TimeZonesMapping] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_VitalType] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_VitalType] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_VitalType] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_VitalType] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_ZipCode] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_ZipCode] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_ZipCode] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_ZipCode] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[M_ZipCode_Timezone] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[M_ZipCode_Timezone] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[M_ZipCode_Timezone] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[M_ZipCode_Timezone] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[MemberStatusHistory] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[MemberStatusHistory] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[MemberStatusHistory] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[MemberStatusHistory] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[MobilePhone_VitalReading] ADD  CONSTRAINT [DF_MobilePhone_VitalReading_RID]  DEFAULT ((0)) FOR [RID]
GO
ALTER TABLE [main].[MobilePhone_VitalReading] ADD  CONSTRAINT [DF_MobilePhone_VitalReading_Scheduled]  DEFAULT ((0)) FOR [Scheduled]
GO
ALTER TABLE [main].[Options] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[Options] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[Options] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[Options] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[OptoutDeactivationCareruleAudit] ADD  DEFAULT (getutcdate()) FOR [DTUTC_Created]
GO
ALTER TABLE [main].[Partner] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[Partner] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[Partner] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[Partner] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[Partner] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [main].[PartnerAlertConfigurations] ADD  DEFAULT ((-1)) FOR [SettingId]
GO
ALTER TABLE [main].[PartnerAttributes] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[PartnerAttributes] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[PartnerAttributes] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[PartnerAttributes] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[PartnerCareRecordings] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[PartnerCareRecordings] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[PartnerCareRecordings] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[PartnerCareRecordings] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[PartnerConfigurationColumns] ADD  DEFAULT ((-1)) FOR [SettingId]
GO
ALTER TABLE [main].[PartnerEndUsers] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[PartnerEndUsers] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[PartnerEndUsers] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[PartnerEndUsers] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[PartnerGroup] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[PartnerGroup] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[PartnerGroup] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[PartnerGroup] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[PartnerGroup] ADD  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [main].[PartnerGroupAttributes] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[PartnerGroupAttributes] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[PartnerGroupAttributes] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[PartnerGroupAttributes] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[PartnerGroupEndUsers] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[PartnerGroupEndUsers] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[PartnerGroupEndUsers] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[PartnerGroupEndUsers] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[PartnerStatusHistory] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[PartnerStatusHistory] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[PartnerStatusHistory] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[PartnerStatusHistory] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[PersonAddresses] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[PersonAddresses] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[PersonAddresses] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[PersonAddresses] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[PersonEmailAddresses] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[PersonEmailAddresses] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[PersonEmailAddresses] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[PersonEmailAddresses] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[PersonPhones] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[PersonPhones] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[PersonPhones] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[PersonPhones] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[PersonPhones] ADD  DEFAULT ((0)) FOR [PhoneStatusID]
GO
ALTER TABLE [main].[Phones] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[Phones] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[Phones] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[Phones] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[PowerBIReport] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[PowerBIReport] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[PowerBIReport] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[PowerBIReport] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[Prompts] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[Prompts] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[Prompts] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[Prompts] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[Question] ADD  DEFAULT ((0)) FOR [IsPublic]
GO
ALTER TABLE [main].[Question] ADD  DEFAULT ((0)) FOR [InstructionMode]
GO
ALTER TABLE [main].[Question] ADD  DEFAULT ((1)) FOR [LanguageID]
GO
ALTER TABLE [main].[Question] ADD  DEFAULT ((7)) FOR [QuestionChannel]
GO
ALTER TABLE [main].[Question] ADD  DEFAULT ((0)) FOR [Whisper]
GO
ALTER TABLE [main].[Question] ADD  DEFAULT ((0)) FOR [RepeatAfterAttemps]
GO
ALTER TABLE [main].[Question] ADD  DEFAULT ((1)) FOR [BargeIn]
GO
ALTER TABLE [main].[Question] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[Question] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[Question] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[Question] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[QuestionAnswerCareRecordings] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[QuestionAnswerCareRecordings] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[QuestionAnswerCareRecordings] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[QuestionAnswerCareRecordings] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[QuestionAnswers] ADD  DEFAULT ((0)) FOR [TriggerAlert]
GO
ALTER TABLE [main].[QuestionAnswers] ADD  DEFAULT ((0)) FOR [Sample]
GO
ALTER TABLE [main].[QuestionAnswers] ADD  DEFAULT ((0)) FOR [TriggerFaxAlert]
GO
ALTER TABLE [main].[QuestionAnswers] ADD  DEFAULT ((0)) FOR [IsPrimarySubQuestion]
GO
ALTER TABLE [main].[QuestionAnswers] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[QuestionAnswers] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[QuestionAnswers] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[QuestionAnswers] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[QuestionCareRecordings] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[QuestionCareRecordings] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[QuestionCareRecordings] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[QuestionCareRecordings] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[QuestionCareRules] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[QuestionCareRules] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[QuestionCareRules] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[QuestionCareRules] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[R] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[R] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[R] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[R] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[R_Counters] ADD  DEFAULT ((0)) FOR [LowRangeMax]
GO
ALTER TABLE [main].[R_Counters] ADD  DEFAULT ((0)) FOR [LowRangeCurrent]
GO
ALTER TABLE [main].[R_Counters] ADD  DEFAULT ((0)) FOR [MidRangeMax]
GO
ALTER TABLE [main].[R_Counters] ADD  DEFAULT ((0)) FOR [MidRangeCurrent]
GO
ALTER TABLE [main].[R_Counters] ADD  DEFAULT ((0)) FOR [HighRangeCurrent]
GO
ALTER TABLE [main].[R_Deactivated] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[R_Deactivated] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[R_Deactivated] ADD  DEFAULT ('system') FOR [CreatedBy]
GO
ALTER TABLE [main].[R_Deactivated] ADD  DEFAULT ('system') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[ScheduleReceive] ADD  CONSTRAINT [DF_ScheduledCall_RowId]  DEFAULT (newid()) FOR [RowId]
GO
ALTER TABLE [main].[ScheduleReceive] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[ScheduleReceive] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[SystemInstructions] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[SystemInstructions] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[SystemInstructions] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[SystemInstructions] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[SystemOptionsTranslations] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[SystemOptionsTranslations] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[SystemOptionsTranslations] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[SystemOptionsTranslations] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[TempPartnerAlertConfigurations] ADD  DEFAULT ((-1)) FOR [SettingId]
GO
ALTER TABLE [main].[UserReport] ADD  DEFAULT ('user') FOR [CreatedBy]
GO
ALTER TABLE [main].[UserReport] ADD  DEFAULT ('user') FOR [LastModifiedBy]
GO
ALTER TABLE [main].[UserReport] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[UserReport] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [main].[WatermarkTable] ADD  DEFAULT (newid()) FOR [ID]
GO
ALTER TABLE [main].[WatermarkTable] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [main].[WatermarkTable] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [MESSAGING].[OutgoingMessages_SMS] ADD  CONSTRAINT [DF_OutgoingMessages_SMS_DeliveryStatus]  DEFAULT ((0)) FOR [DeliveryStatus]
GO
ALTER TABLE [MESSAGING].[OutgoingMessages_SMS] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [MESSAGING].[OutgoingMessages_SMS] ADD  DEFAULT (getdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [MESSAGING].[OutgoingMessages_SMS_Status] ADD  CONSTRAINT [DF_OutgoingMessages_SMS_Status_DeliveryStatus]  DEFAULT ((0)) FOR [DeliveryStatus]
GO
ALTER TABLE [MESSAGING].[OutgoingMessages_SMS_Status] ADD  CONSTRAINT [DF_OutgoingMessages_SMS_Status_CreatedOn]  DEFAULT (getutcdate()) FOR [CreatedOn]
GO
ALTER TABLE [MESSAGING].[OutgoingMessages_SMS_Status] ADD  DEFAULT (getutcdate()) FOR [LastModifiedOn]
GO
ALTER TABLE [sas].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Created]  DEFAULT (getutcdate()) FOR [DTUTC_Created]
GO
ALTER TABLE [sas].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Modigied]  DEFAULT (getutcdate()) FOR [DTUTC_Modified]
GO
ALTER TABLE [sas].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_PropBag]  DEFAULT (N'<PropBag></PropBag>') FOR [PropBag]
GO
ALTER TABLE [Temp].[CustomFlowRecipients] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [Temp].[CustomFlowRecipients] ADD  DEFAULT ((0)) FOR [OverRiding]
GO
ALTER TABLE [Temp].[CustomFlowRecipients] ADD  DEFAULT ((0)) FOR [Channel]
GO
ALTER TABLE [Temp].[CustomFlowRecipients] ADD  DEFAULT ((1)) FOR [Frequency]
GO
ALTER TABLE [Temp].[SBUPartnerAlertConfiguration] ADD  DEFAULT ((-1)) FOR [SettingId]
GO
ALTER TABLE [UHC].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Created]  DEFAULT (getutcdate()) FOR [DTUTC_Created]
GO
ALTER TABLE [UHC].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Modigied]  DEFAULT (getutcdate()) FOR [DTUTC_Modified]
GO
ALTER TABLE [UHC].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_PropBag]  DEFAULT (N'<PropBag></PropBag>') FOR [PropBag]
GO
ALTER TABLE [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Created]  DEFAULT (getutcdate()) FOR [DTUTC_Created]
GO
ALTER TABLE [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_DTUTC_Modigied]  DEFAULT (getutcdate()) FOR [DTUTC_Modified]
GO
ALTER TABLE [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[PersonInfo] ADD  CONSTRAINT [DF_PersonInfo_PropBag]  DEFAULT (N'<PropBag></PropBag>') FOR [PropBag]
GO
ALTER TABLE [aaanew].[PersonInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_PersonInfo_R] FOREIGN KEY([RID])
REFERENCES [main].[R] ([RID])
ON DELETE CASCADE
GO
ALTER TABLE [aaanew].[PersonInfo] NOCHECK CONSTRAINT [FK_PersonInfo_R]
GO
ALTER TABLE [ccsss].[PersonInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_PersonInfo_R] FOREIGN KEY([RID])
REFERENCES [main].[R] ([RID])
ON DELETE CASCADE
GO
ALTER TABLE [ccsss].[PersonInfo] NOCHECK CONSTRAINT [FK_PersonInfo_R]
GO
ALTER TABLE [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[PersonInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_PersonInfo_R] FOREIGN KEY([RID])
REFERENCES [main].[R] ([RID])
ON DELETE CASCADE
GO
ALTER TABLE [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvb33].[PersonInfo] NOCHECK CONSTRAINT [FK_PersonInfo_R]
GO
ALTER TABLE [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[PersonInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_PersonInfo_R] FOREIGN KEY([RID])
REFERENCES [main].[R] ([RID])
ON DELETE CASCADE
GO
ALTER TABLE [cvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbcvbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb].[PersonInfo] NOCHECK CONSTRAINT [FK_PersonInfo_R]
GO
ALTER TABLE [EHDEV].[PersonInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_PersonInfo_R] FOREIGN KEY([RID])
REFERENCES [main].[R] ([RID])
ON DELETE CASCADE
GO
ALTER TABLE [EHDEV].[PersonInfo] NOCHECK CONSTRAINT [FK_PersonInfo_R]
GO
ALTER TABLE [ETLTEST].[PersonInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_PersonInfo_R] FOREIGN KEY([RID])
REFERENCES [main].[R] ([RID])
ON DELETE CASCADE
GO
ALTER TABLE [ETLTEST].[PersonInfo] NOCHECK CONSTRAINT [FK_PersonInfo_R]
GO
ALTER TABLE [IVR].[AddressesMaps]  WITH CHECK ADD  CONSTRAINT [FK_AddressesMaps_Addresses] FOREIGN KEY([AddressId])
REFERENCES [main].[Addresses] ([ID])
GO
ALTER TABLE [IVR].[AddressesMaps] CHECK CONSTRAINT [FK_AddressesMaps_Addresses]
GO
ALTER TABLE [IVR].[CallStatus]  WITH CHECK ADD  CONSTRAINT [fk_CSRecipientId] FOREIGN KEY([RecipientId])
REFERENCES [main].[CareRecipients] ([RID])
GO
ALTER TABLE [IVR].[CallStatus] CHECK CONSTRAINT [fk_CSRecipientId]
GO
ALTER TABLE [IVR].[DateFormats]  WITH CHECK ADD  CONSTRAINT [fk_DateFormats] FOREIGN KEY([LanguageId])
REFERENCES [main].[M_Language] ([ID])
GO
ALTER TABLE [IVR].[DateFormats] CHECK CONSTRAINT [fk_DateFormats]
GO
ALTER TABLE [IVR].[GiverAlerts]  WITH NOCHECK ADD  CONSTRAINT [FK_GiverAlerts_CareGivers] FOREIGN KEY([CareGiverID])
REFERENCES [main].[CareGivers] ([RID])
ON DELETE CASCADE
GO
ALTER TABLE [IVR].[GiverAlerts] CHECK CONSTRAINT [FK_GiverAlerts_CareGivers]
GO
ALTER TABLE [IVR].[GiverNotifications]  WITH CHECK ADD  CONSTRAINT [FK_IVR.GiverNotifications_CareGivers] FOREIGN KEY([CareGiverID])
REFERENCES [main].[CareGivers] ([RID])
GO
ALTER TABLE [IVR].[GiverNotifications] CHECK CONSTRAINT [FK_IVR.GiverNotifications_CareGivers]
GO
ALTER TABLE [IVR].[LostCalls]  WITH CHECK ADD  CONSTRAINT [fk_RecipientId] FOREIGN KEY([RecipientId])
REFERENCES [main].[CareRecipients] ([RID])
GO
ALTER TABLE [IVR].[LostCalls] CHECK CONSTRAINT [fk_RecipientId]
GO
ALTER TABLE [IVR].[MappingWordsToNumbers]  WITH CHECK ADD  CONSTRAINT [fk_MappingWordsToNumbers] FOREIGN KEY([LanguageId])
REFERENCES [main].[M_Language] ([ID])
GO
ALTER TABLE [IVR].[MappingWordsToNumbers] CHECK CONSTRAINT [fk_MappingWordsToNumbers]
GO
ALTER TABLE [IVR].[PersonalMessage]  WITH CHECK ADD  CONSTRAINT [FK_PersonalMessage_CareRecipient] FOREIGN KEY([CRRId])
REFERENCES [main].[CareRecipients] ([RID])
GO
ALTER TABLE [IVR].[PersonalMessage] CHECK CONSTRAINT [FK_PersonalMessage_CareRecipient]
GO
ALTER TABLE [IVR].[Reminders]  WITH CHECK ADD  CONSTRAINT [FK_Reminder_CareRecipient] FOREIGN KEY([CRRID])
REFERENCES [main].[CareRecipients] ([RID])
GO
ALTER TABLE [IVR].[Reminders] CHECK CONSTRAINT [FK_Reminder_CareRecipient]
GO
ALTER TABLE [IVR].[ZipCodeState]  WITH CHECK ADD FOREIGN KEY([ListId])
REFERENCES [main].[ZipCodeList] ([id])
GO
ALTER TABLE [main].[CareGivers]  WITH CHECK ADD  CONSTRAINT [FK_CareGivers_RoleCare] FOREIGN KEY([CareRoleID])
REFERENCES [main].[M_CareRole] ([Id])
GO
ALTER TABLE [main].[CareGivers] CHECK CONSTRAINT [FK_CareGivers_RoleCare]
GO
ALTER TABLE [main].[CareGivers]  WITH CHECK ADD  CONSTRAINT [FK_CareGivers_Specialty] FOREIGN KEY([SpecialtyID])
REFERENCES [main].[M_Specialty] ([Id])
GO
ALTER TABLE [main].[CareGivers] CHECK CONSTRAINT [FK_CareGivers_Specialty]
GO
ALTER TABLE [main].[CarePathway]  WITH CHECK ADD  CONSTRAINT [FK_CarePathway_Partner] FOREIGN KEY([PartnerID])
REFERENCES [main].[Partner] ([ID])
GO
ALTER TABLE [main].[CarePathway] CHECK CONSTRAINT [FK_CarePathway_Partner]
GO
ALTER TABLE [main].[CarePathwayLanguages]  WITH CHECK ADD FOREIGN KEY([CarePathwayID])
REFERENCES [main].[CarePathway] ([ID])
GO
ALTER TABLE [main].[CarePathwayLanguages]  WITH CHECK ADD FOREIGN KEY([LanguageID])
REFERENCES [main].[M_Language] ([ID])
GO
ALTER TABLE [main].[CarePathwayQuestions]  WITH CHECK ADD  CONSTRAINT [FK_CarePathwayQuestions_CarePathway] FOREIGN KEY([CarePathwayID])
REFERENCES [main].[CarePathway] ([ID])
GO
ALTER TABLE [main].[CarePathwayQuestions] CHECK CONSTRAINT [FK_CarePathwayQuestions_CarePathway]
GO
ALTER TABLE [main].[CarePathwayQuestions]  WITH CHECK ADD  CONSTRAINT [FK_CarePathwayQuestions_Question] FOREIGN KEY([QuestionID])
REFERENCES [main].[Question] ([ID])
GO
ALTER TABLE [main].[CarePathwayQuestions] CHECK CONSTRAINT [FK_CarePathwayQuestions_Question]
GO
ALTER TABLE [main].[CarePlan]  WITH CHECK ADD  CONSTRAINT [FK_CarePlan_CarePlanGroup] FOREIGN KEY([CarePlanGroupID])
REFERENCES [main].[M_CarePlanGroup] ([ID])
GO
ALTER TABLE [main].[CarePlan] CHECK CONSTRAINT [FK_CarePlan_CarePlanGroup]
GO
ALTER TABLE [main].[CarePlan]  WITH CHECK ADD  CONSTRAINT [FK_CarePlan_Partner] FOREIGN KEY([PartnerID])
REFERENCES [main].[Partner] ([ID])
GO
ALTER TABLE [main].[CarePlan] CHECK CONSTRAINT [FK_CarePlan_Partner]
GO
ALTER TABLE [main].[CarePlanAttributes]  WITH CHECK ADD  CONSTRAINT [FK_CarePlanAttributes_M_AttributeType] FOREIGN KEY([AttributeTypeID])
REFERENCES [main].[M_AttributeType] ([ID])
GO
ALTER TABLE [main].[CarePlanAttributes] CHECK CONSTRAINT [FK_CarePlanAttributes_M_AttributeType]
GO
ALTER TABLE [main].[CarePlanAttributes]  WITH CHECK ADD  CONSTRAINT [FK_CarePlanAttributes_Partner] FOREIGN KEY([CarePlanID])
REFERENCES [main].[CarePlan] ([ID])
GO
ALTER TABLE [main].[CarePlanAttributes] CHECK CONSTRAINT [FK_CarePlanAttributes_Partner]
GO
ALTER TABLE [main].[CarePlanCareRecordings]  WITH CHECK ADD  CONSTRAINT [FK_CarePlanCareRecordings_CarePlan] FOREIGN KEY([CarePlanID])
REFERENCES [main].[CarePlan] ([ID])
GO
ALTER TABLE [main].[CarePlanCareRecordings] CHECK CONSTRAINT [FK_CarePlanCareRecordings_CarePlan]
GO
ALTER TABLE [main].[CarePlanCareRecordings]  WITH CHECK ADD  CONSTRAINT [FK_CarePlanCareRecordings_CareRecordings] FOREIGN KEY([CareRecordingID])
REFERENCES [main].[CareRecordings] ([ID])
GO
ALTER TABLE [main].[CarePlanCareRecordings] CHECK CONSTRAINT [FK_CarePlanCareRecordings_CareRecordings]
GO
ALTER TABLE [main].[CarePlanLanguages]  WITH CHECK ADD FOREIGN KEY([CarePlanID])
REFERENCES [main].[CarePlan] ([ID])
GO
ALTER TABLE [main].[CarePlanLanguages]  WITH CHECK ADD FOREIGN KEY([LanguageID])
REFERENCES [main].[M_Language] ([ID])
GO
ALTER TABLE [main].[CarePlanQuestions]  WITH CHECK ADD  CONSTRAINT [FK_CarePlanQuestion_CarePlanScheduling] FOREIGN KEY([CarePlanID], [VariableIndex])
REFERENCES [main].[CarePlanScheduling] ([CarePlanID], [VariableIndex])
GO
ALTER TABLE [main].[CarePlanQuestions] CHECK CONSTRAINT [FK_CarePlanQuestion_CarePlanScheduling]
GO
ALTER TABLE [main].[CarePlanQuestions]  WITH CHECK ADD  CONSTRAINT [FK_CarePlanQuestion_Question] FOREIGN KEY([QuestionID])
REFERENCES [main].[Question] ([ID])
GO
ALTER TABLE [main].[CarePlanQuestions] CHECK CONSTRAINT [FK_CarePlanQuestion_Question]
GO
ALTER TABLE [main].[CarePlanRecipients]  WITH CHECK ADD  CONSTRAINT [FK_CarePlanRecipients_CarePlan] FOREIGN KEY([CarePlanID])
REFERENCES [main].[CarePlan] ([ID])
GO
ALTER TABLE [main].[CarePlanRecipients] CHECK CONSTRAINT [FK_CarePlanRecipients_CarePlan]
GO
ALTER TABLE [main].[CarePlanRecipientsSchedule]  WITH CHECK ADD  CONSTRAINT [FK_CarePlanRecipientsSchedule_CarePlan] FOREIGN KEY([CarePlanRecipientsID])
REFERENCES [main].[CarePlanRecipients] ([ID])
GO
ALTER TABLE [main].[CarePlanRecipientsSchedule] CHECK CONSTRAINT [FK_CarePlanRecipientsSchedule_CarePlan]
GO
ALTER TABLE [main].[CarePlanScheduling]  WITH CHECK ADD  CONSTRAINT [FK_CarePlanScheduling_CarePlan] FOREIGN KEY([CarePlanID])
REFERENCES [main].[CarePlan] ([ID])
GO
ALTER TABLE [main].[CarePlanScheduling] CHECK CONSTRAINT [FK_CarePlanScheduling_CarePlan]
GO
ALTER TABLE [main].[CareRecordings]  WITH CHECK ADD  CONSTRAINT [FK_CareRecordings_Prompts] FOREIGN KEY([PromptID], [LanguageID])
REFERENCES [main].[Prompts] ([ID], [LanguageID])
GO
ALTER TABLE [main].[CareRecordings] CHECK CONSTRAINT [FK_CareRecordings_Prompts]
GO
ALTER TABLE [main].[CareRuleObjectOperator]  WITH CHECK ADD  CONSTRAINT [CareRule_Object] FOREIGN KEY([CareRuleObjectId])
REFERENCES [main].[M_CareRuleObjects] ([Id])
GO
ALTER TABLE [main].[CareRuleObjectOperator] CHECK CONSTRAINT [CareRule_Object]
GO
ALTER TABLE [main].[CareRuleObjectOperator]  WITH CHECK ADD  CONSTRAINT [CareRule_Operator] FOREIGN KEY([CareRuleOperatorId])
REFERENCES [main].[M_CareRuleOperator] ([Id])
GO
ALTER TABLE [main].[CareRuleObjectOperator] CHECK CONSTRAINT [CareRule_Operator]
GO
ALTER TABLE [main].[CareRuleObjectOperator]  WITH CHECK ADD  CONSTRAINT [CareRule_ValueType] FOREIGN KEY([ValueTypeId])
REFERENCES [main].[M_CareRuleValueType] ([Id])
GO
ALTER TABLE [main].[CareRuleObjectOperator] CHECK CONSTRAINT [CareRule_ValueType]
GO
ALTER TABLE [main].[GiversRecipients]  WITH CHECK ADD  CONSTRAINT [FK_GiversRecipients_CareGivers] FOREIGN KEY([CareGiverID])
REFERENCES [main].[CareGivers] ([RID])
GO
ALTER TABLE [main].[GiversRecipients] CHECK CONSTRAINT [FK_GiversRecipients_CareGivers]
GO
ALTER TABLE [main].[GiversRecipients]  WITH CHECK ADD  CONSTRAINT [FK_GiversRecipients_CareRecipients] FOREIGN KEY([CareRecipientID])
REFERENCES [main].[CareRecipients] ([RID])
GO
ALTER TABLE [main].[GiversRecipients] CHECK CONSTRAINT [FK_GiversRecipients_CareRecipients]
GO
ALTER TABLE [main].[M_CareRuleRecipient]  WITH CHECK ADD  CONSTRAINT [CareRule_Object_Recipient] FOREIGN KEY([CareRuleObjectId])
REFERENCES [main].[M_CareRuleObjects] ([Id])
GO
ALTER TABLE [main].[M_CareRuleRecipient] CHECK CONSTRAINT [CareRule_Object_Recipient]
GO
ALTER TABLE [main].[M_CareRuleRecipientOperator]  WITH CHECK ADD  CONSTRAINT [CareRule_Operator_Recipient] FOREIGN KEY([CareRuleOperatorId])
REFERENCES [main].[M_CareRuleOperator] ([Id])
GO
ALTER TABLE [main].[M_CareRuleRecipientOperator] CHECK CONSTRAINT [CareRule_Operator_Recipient]
GO
ALTER TABLE [main].[M_CareRuleRecipientOperator]  WITH CHECK ADD  CONSTRAINT [CareRule_Recipient_Operator] FOREIGN KEY([CareRuleRecipientId])
REFERENCES [main].[M_CareRuleRecipient] ([Id])
GO
ALTER TABLE [main].[M_CareRuleRecipientOperator] CHECK CONSTRAINT [CareRule_Recipient_Operator]
GO
ALTER TABLE [main].[M_CareRuleRecipientOption]  WITH CHECK ADD  CONSTRAINT [CareRule_Options_Recipient] FOREIGN KEY([CareRuleOptionId])
REFERENCES [main].[M_CareRuleOption] ([Id])
GO
ALTER TABLE [main].[M_CareRuleRecipientOption] CHECK CONSTRAINT [CareRule_Options_Recipient]
GO
ALTER TABLE [main].[M_CareRuleRecipientOption]  WITH CHECK ADD  CONSTRAINT [CareRule_Recipient_Options] FOREIGN KEY([CareRuleRecipientId])
REFERENCES [main].[M_CareRuleRecipient] ([Id])
GO
ALTER TABLE [main].[M_CareRuleRecipientOption] CHECK CONSTRAINT [CareRule_Recipient_Options]
GO
ALTER TABLE [main].[M_City]  WITH CHECK ADD  CONSTRAINT [City_State] FOREIGN KEY([StateID])
REFERENCES [main].[M_State] ([ID])
GO
ALTER TABLE [main].[M_City] CHECK CONSTRAINT [City_State]
GO
ALTER TABLE [main].[M_GroupAttributeType]  WITH CHECK ADD  CONSTRAINT [FK_GroupAttributeType_M_Attribute] FOREIGN KEY([AttributeTypeID])
REFERENCES [main].[M_AttributeType] ([ID])
GO
ALTER TABLE [main].[M_GroupAttributeType] CHECK CONSTRAINT [FK_GroupAttributeType_M_Attribute]
GO
ALTER TABLE [main].[M_PartnerAttributeType]  WITH CHECK ADD  CONSTRAINT [FK_PartnerAttributeType_M_Attribute] FOREIGN KEY([AttributeTypeID])
REFERENCES [main].[M_AttributeType] ([ID])
GO
ALTER TABLE [main].[M_PartnerAttributeType] CHECK CONSTRAINT [FK_PartnerAttributeType_M_Attribute]
GO
ALTER TABLE [main].[M_ZipCode]  WITH CHECK ADD  CONSTRAINT [ZipCode_City] FOREIGN KEY([CityID])
REFERENCES [main].[M_City] ([ID])
GO
ALTER TABLE [main].[M_ZipCode] CHECK CONSTRAINT [ZipCode_City]
GO
ALTER TABLE [main].[M_ZipCode]  WITH CHECK ADD  CONSTRAINT [ZipCode_State] FOREIGN KEY([StateID])
REFERENCES [main].[M_State] ([ID])
GO
ALTER TABLE [main].[M_ZipCode] CHECK CONSTRAINT [ZipCode_State]
GO
ALTER TABLE [main].[M_ZipCode_Timezone]  WITH CHECK ADD  CONSTRAINT [TimeZoneMapping_Timezones_FK] FOREIGN KEY([TimeZoneID])
REFERENCES [main].[M_TimeZonesMapping] ([ID])
GO
ALTER TABLE [main].[M_ZipCode_Timezone] CHECK CONSTRAINT [TimeZoneMapping_Timezones_FK]
GO
ALTER TABLE [main].[M_ZipCode_Timezone]  WITH CHECK ADD  CONSTRAINT [ZipCode_Timezones_FK] FOREIGN KEY([ID])
REFERENCES [main].[M_ZipCode] ([ID])
GO
ALTER TABLE [main].[M_ZipCode_Timezone] CHECK CONSTRAINT [ZipCode_Timezones_FK]
GO
ALTER TABLE [main].[PartnerAlertConfigurations]  WITH CHECK ADD  CONSTRAINT [FK_PartnerAlertConfigurations_Partner] FOREIGN KEY([PartnerID])
REFERENCES [main].[Partner] ([ID])
GO
ALTER TABLE [main].[PartnerAlertConfigurations] CHECK CONSTRAINT [FK_PartnerAlertConfigurations_Partner]
GO
ALTER TABLE [main].[PartnerAttributes]  WITH CHECK ADD  CONSTRAINT [FK_PartnerAttributes_M_AttributeType] FOREIGN KEY([AttributeTypeID])
REFERENCES [main].[M_AttributeType] ([ID])
GO
ALTER TABLE [main].[PartnerAttributes] CHECK CONSTRAINT [FK_PartnerAttributes_M_AttributeType]
GO
ALTER TABLE [main].[PartnerAttributes]  WITH CHECK ADD  CONSTRAINT [FK_PartnerAttributes_Partner] FOREIGN KEY([PartnerID])
REFERENCES [main].[Partner] ([ID])
GO
ALTER TABLE [main].[PartnerAttributes] CHECK CONSTRAINT [FK_PartnerAttributes_Partner]
GO
ALTER TABLE [main].[PartnerCareRecordings]  WITH CHECK ADD  CONSTRAINT [FK_PartnerCareRecordings_CareRecordings] FOREIGN KEY([CareRecordingId])
REFERENCES [main].[CareRecordings] ([ID])
GO
ALTER TABLE [main].[PartnerCareRecordings] CHECK CONSTRAINT [FK_PartnerCareRecordings_CareRecordings]
GO
ALTER TABLE [main].[PartnerCareRecordings]  WITH CHECK ADD  CONSTRAINT [FK_PartnerCareRecordings_IvrOverrideType] FOREIGN KEY([IvrOverrideTypeId])
REFERENCES [main].[M_OverrideType] ([ID])
GO
ALTER TABLE [main].[PartnerCareRecordings] CHECK CONSTRAINT [FK_PartnerCareRecordings_IvrOverrideType]
GO
ALTER TABLE [main].[PartnerCareRecordings]  WITH CHECK ADD  CONSTRAINT [FK_PartnerCareRecordings_Partner] FOREIGN KEY([PartnerID])
REFERENCES [main].[Partner] ([ID])
GO
ALTER TABLE [main].[PartnerCareRecordings] CHECK CONSTRAINT [FK_PartnerCareRecordings_Partner]
GO
ALTER TABLE [main].[PartnerConfigurationColumns]  WITH CHECK ADD  CONSTRAINT [FK_PartnerConfigurationColumns_Partner] FOREIGN KEY([PartnerId])
REFERENCES [main].[Partner] ([ID])
GO
ALTER TABLE [main].[PartnerConfigurationColumns] CHECK CONSTRAINT [FK_PartnerConfigurationColumns_Partner]
GO
ALTER TABLE [main].[PartnerEndUsers]  WITH CHECK ADD  CONSTRAINT [FK_PartnerEndUsers] FOREIGN KEY([PartnerID])
REFERENCES [main].[Partner] ([ID])
GO
ALTER TABLE [main].[PartnerEndUsers] CHECK CONSTRAINT [FK_PartnerEndUsers]
GO
ALTER TABLE [main].[PartnerEndUsers]  WITH CHECK ADD  CONSTRAINT [FK_PartnerEndUsers_R] FOREIGN KEY([RID])
REFERENCES [main].[R] ([RID])
GO
ALTER TABLE [main].[PartnerEndUsers] CHECK CONSTRAINT [FK_PartnerEndUsers_R]
GO
ALTER TABLE [main].[PartnerGroup]  WITH CHECK ADD  CONSTRAINT [FK_PartnerGroup_Partner] FOREIGN KEY([PartnerID])
REFERENCES [main].[Partner] ([ID])
GO
ALTER TABLE [main].[PartnerGroup] CHECK CONSTRAINT [FK_PartnerGroup_Partner]
GO
ALTER TABLE [main].[PartnerGroupAttributes]  WITH CHECK ADD  CONSTRAINT [FK_PartnerGroupAttributes_M_AttributeType] FOREIGN KEY([AttributeTypeID])
REFERENCES [main].[M_AttributeType] ([ID])
GO
ALTER TABLE [main].[PartnerGroupAttributes] CHECK CONSTRAINT [FK_PartnerGroupAttributes_M_AttributeType]
GO
ALTER TABLE [main].[PartnerGroupAttributes]  WITH CHECK ADD  CONSTRAINT [FK_PartnerGroupAttributes_PartnerGroup] FOREIGN KEY([PartnerGroupID])
REFERENCES [main].[PartnerGroup] ([ID])
GO
ALTER TABLE [main].[PartnerGroupAttributes] CHECK CONSTRAINT [FK_PartnerGroupAttributes_PartnerGroup]
GO
ALTER TABLE [main].[PartnerGroupEndUsers]  WITH CHECK ADD  CONSTRAINT [FK_PartnerGroupEndUsers_PartnerGroup] FOREIGN KEY([PartnerGroupID])
REFERENCES [main].[PartnerGroup] ([ID])
GO
ALTER TABLE [main].[PartnerGroupEndUsers] CHECK CONSTRAINT [FK_PartnerGroupEndUsers_PartnerGroup]
GO
ALTER TABLE [main].[PartnerGroupEndUsers]  WITH CHECK ADD  CONSTRAINT [FK_PartnerGroupEndUsers_R] FOREIGN KEY([RID])
REFERENCES [main].[R] ([RID])
GO
ALTER TABLE [main].[PartnerGroupEndUsers] CHECK CONSTRAINT [FK_PartnerGroupEndUsers_R]
GO
ALTER TABLE [main].[PersonAddresses]  WITH CHECK ADD  CONSTRAINT [FK_PersonAddresses_Addresses] FOREIGN KEY([AddressID])
REFERENCES [main].[Addresses] ([ID])
GO
ALTER TABLE [main].[PersonAddresses] CHECK CONSTRAINT [FK_PersonAddresses_Addresses]
GO
ALTER TABLE [main].[PersonAddresses]  WITH CHECK ADD  CONSTRAINT [FK_PersonAddresses_AddresseUsage] FOREIGN KEY([AddressUsageID])
REFERENCES [main].[M_AddressUsage] ([Id])
GO
ALTER TABLE [main].[PersonAddresses] CHECK CONSTRAINT [FK_PersonAddresses_AddresseUsage]
GO
ALTER TABLE [main].[PersonAddresses]  WITH CHECK ADD  CONSTRAINT [FK_PersonAddresses_R] FOREIGN KEY([RID])
REFERENCES [main].[R] ([RID])
GO
ALTER TABLE [main].[PersonAddresses] CHECK CONSTRAINT [FK_PersonAddresses_R]
GO
ALTER TABLE [main].[PersonEmailAddresses]  WITH CHECK ADD  CONSTRAINT [FK_PersonEmailAddresses_EmailAddressUsage] FOREIGN KEY([EmailAddressUsageID])
REFERENCES [main].[M_EmailAddressUsage] ([Id])
GO
ALTER TABLE [main].[PersonEmailAddresses] CHECK CONSTRAINT [FK_PersonEmailAddresses_EmailAddressUsage]
GO
ALTER TABLE [main].[PersonEmailAddresses]  WITH CHECK ADD  CONSTRAINT [FK_PersonPhone_EmailAddresses] FOREIGN KEY([EmailAddressID])
REFERENCES [main].[EmailAddresses] ([ID])
GO
ALTER TABLE [main].[PersonEmailAddresses] CHECK CONSTRAINT [FK_PersonPhone_EmailAddresses]
GO
ALTER TABLE [main].[PersonPhones]  WITH CHECK ADD  CONSTRAINT [FK_PersonPhones_Phones] FOREIGN KEY([PhoneID])
REFERENCES [main].[Phones] ([ID])
GO
ALTER TABLE [main].[PersonPhones] CHECK CONSTRAINT [FK_PersonPhones_Phones]
GO
ALTER TABLE [main].[PersonPhones]  WITH CHECK ADD  CONSTRAINT [FK_PersonPhones_PhoneUsage] FOREIGN KEY([PhoneUsageID])
REFERENCES [main].[M_PhoneUsage] ([Id])
GO
ALTER TABLE [main].[PersonPhones] CHECK CONSTRAINT [FK_PersonPhones_PhoneUsage]
GO
ALTER TABLE [main].[PersonPhones]  WITH CHECK ADD  CONSTRAINT [FK_PersonPhones_R] FOREIGN KEY([RID])
REFERENCES [main].[R] ([RID])
GO
ALTER TABLE [main].[PersonPhones] CHECK CONSTRAINT [FK_PersonPhones_R]
GO
ALTER TABLE [main].[PowerBIReport]  WITH CHECK ADD  CONSTRAINT [FK_Partner_Report] FOREIGN KEY([PartnerId])
REFERENCES [main].[Partner] ([ID])
GO
ALTER TABLE [main].[PowerBIReport] CHECK CONSTRAINT [FK_Partner_Report]
GO
ALTER TABLE [main].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_QuestionCaregory] FOREIGN KEY([QuestionCategory])
REFERENCES [main].[M_QuestionCategory] ([ID])
GO
ALTER TABLE [main].[Question] CHECK CONSTRAINT [FK_Question_QuestionCaregory]
GO
ALTER TABLE [main].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_QuestionType] FOREIGN KEY([QuestionTypeID])
REFERENCES [main].[M_QuestionType] ([ID])
GO
ALTER TABLE [main].[Question] CHECK CONSTRAINT [FK_Question_QuestionType]
GO
ALTER TABLE [main].[QuestionAnswerCareRecordings]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswerCareRecordings_CareRecordings] FOREIGN KEY([CareRecordingID])
REFERENCES [main].[CareRecordings] ([ID])
GO
ALTER TABLE [main].[QuestionAnswerCareRecordings] CHECK CONSTRAINT [FK_QuestionAnswerCareRecordings_CareRecordings]
GO
ALTER TABLE [main].[QuestionAnswerCareRecordings]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswerCareRecordings_QuestionAnswer] FOREIGN KEY([QuestionAnswerID])
REFERENCES [main].[QuestionAnswers] ([ID])
GO
ALTER TABLE [main].[QuestionAnswerCareRecordings] CHECK CONSTRAINT [FK_QuestionAnswerCareRecordings_QuestionAnswer]
GO
ALTER TABLE [main].[QuestionAnswers]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswers_Question1] FOREIGN KEY([QuestionID])
REFERENCES [main].[Question] ([ID])
GO
ALTER TABLE [main].[QuestionAnswers] CHECK CONSTRAINT [FK_QuestionAnswers_Question1]
GO
ALTER TABLE [main].[QuestionAnswers]  WITH CHECK ADD  CONSTRAINT [FK_QuestionAnswers_Question2] FOREIGN KEY([NextID])
REFERENCES [main].[Question] ([ID])
GO
ALTER TABLE [main].[QuestionAnswers] CHECK CONSTRAINT [FK_QuestionAnswers_Question2]
GO
ALTER TABLE [main].[QuestionCareRecordings]  WITH CHECK ADD  CONSTRAINT [FK_QuestionCareRecordings_CareRecordings] FOREIGN KEY([CareRecordingID])
REFERENCES [main].[CareRecordings] ([ID])
GO
ALTER TABLE [main].[QuestionCareRecordings] CHECK CONSTRAINT [FK_QuestionCareRecordings_CareRecordings]
GO
ALTER TABLE [main].[QuestionCareRecordings]  WITH CHECK ADD  CONSTRAINT [FK_QuestionCareRecordings_Question] FOREIGN KEY([QuestionID])
REFERENCES [main].[Question] ([ID])
GO
ALTER TABLE [main].[QuestionCareRecordings] CHECK CONSTRAINT [FK_QuestionCareRecordings_Question]
GO
ALTER TABLE [main].[QuestionCareRules]  WITH CHECK ADD  CONSTRAINT [FK_QuestionCareRules_CareRules] FOREIGN KEY([CareRuleID])
REFERENCES [main].[CareRules] ([ID])
GO
ALTER TABLE [main].[QuestionCareRules] CHECK CONSTRAINT [FK_QuestionCareRules_CareRules]
GO
ALTER TABLE [main].[QuestionCareRules]  WITH CHECK ADD  CONSTRAINT [FK_QuestionCareRules_Question] FOREIGN KEY([QuestionID])
REFERENCES [main].[Question] ([ID])
GO
ALTER TABLE [main].[QuestionCareRules] CHECK CONSTRAINT [FK_QuestionCareRules_Question]
GO
ALTER TABLE [main].[R_Deactivated]  WITH CHECK ADD  CONSTRAINT [FK_R_Deactivated_DeactivationReasons] FOREIGN KEY([DeactivationReasonID])
REFERENCES [main].[DeactivationReasons] ([ID])
GO
ALTER TABLE [main].[R_Deactivated] CHECK CONSTRAINT [FK_R_Deactivated_DeactivationReasons]
GO
ALTER TABLE [main].[R_Deactivated]  WITH CHECK ADD  CONSTRAINT [FK_R_Deactivated_R] FOREIGN KEY([RID])
REFERENCES [main].[R] ([RID])
GO
ALTER TABLE [main].[R_Deactivated] CHECK CONSTRAINT [FK_R_Deactivated_R]
GO
ALTER TABLE [main].[UserReport]  WITH CHECK ADD  CONSTRAINT [FK_Report_User] FOREIGN KEY([ReportId])
REFERENCES [main].[PowerBIReport] ([Id])
GO
ALTER TABLE [main].[UserReport] CHECK CONSTRAINT [FK_Report_User]
GO
ALTER TABLE [sas].[PersonInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_PersonInfo_R] FOREIGN KEY([RID])
REFERENCES [main].[R] ([RID])
ON DELETE CASCADE
GO
ALTER TABLE [sas].[PersonInfo] NOCHECK CONSTRAINT [FK_PersonInfo_R]
GO
ALTER TABLE [UHC].[PersonInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_PersonInfo_R] FOREIGN KEY([RID])
REFERENCES [main].[R] ([RID])
ON DELETE CASCADE
GO
ALTER TABLE [UHC].[PersonInfo] NOCHECK CONSTRAINT [FK_PersonInfo_R]
GO
ALTER TABLE [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[PersonInfo]  WITH NOCHECK ADD  CONSTRAINT [FK_PersonInfo_R] FOREIGN KEY([RID])
REFERENCES [main].[R] ([RID])
ON DELETE CASCADE
GO
ALTER TABLE [xzxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxczxc].[PersonInfo] NOCHECK CONSTRAINT [FK_PersonInfo_R]
GO
/****** Object:  StoredProcedure [CareChat].[usp_AddChatInstance]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CareChat].[usp_AddChatInstance]
     @scheduleId  bigint
    ,@chatId varchar(100) =null
    ,@workflowId bigint = null
    ,@twilioConversationId varchar(100) = null
    ,@invitationChannel varchar(100) = null
	,@invitationClient varchar(100) = null
    ,@invitationCarePlan int = null
    ,@invitationScheduleId bigint = null
AS
BEGIN

--Insert [CareChat].[Instance] add new column
INSERT INTO 
    [CareChat].[Instance] (
    ScheduleId  
    ,ChatId 
    ,WorkflowId 
    ,TwilioConversationId 
    ,InvitationChannel 
	,InvitationClient
    ,InvitationCarePlan 
    ,InvitationScheduleId
)
VALUES (
    @scheduleId  
    ,@chatId
    ,@workflowId 
    ,@twilioConversationId 
    ,@invitationChannel 
	,@invitationClient
    ,@invitationCarePlan 
    ,@invitationScheduleId
)

SELECT SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [CareChat].[usp_ChatInstance_Add]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CareChat].[usp_ChatInstance_Add]
     @ScheduleId  bigint
    ,@ChatId varchar(100) =null
    ,@WorkflowId bigint = null
    ,@TwilioConversationId varchar(100) = null
    ,@InvitationChannel varchar(100) = null
	,@InvitationClient varchar(100) = null
    ,@InvitationCarePlan int = null
    ,@InvitationScheduleId bigint = null
AS
BEGIN

--Insert [CareChat].[Instance] add new column
INSERT INTO 
    [CareChat].[Instance] (
    ScheduleId  
    ,ChatId 
    ,WorkflowId 
    ,TwilioConversationId 
    ,InvitationChannel 
	,InvitationClient
    ,InvitationCarePlan 
    ,InvitationScheduleId
)
VALUES (
     @ScheduleId  
    ,@ChatId
    ,@WorkflowId 
    ,@TwilioConversationId 
    ,@InvitationChannel 
	,@InvitationClient
    ,@InvitationCarePlan 
    ,@InvitationScheduleId
)

SELECT SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [CareChat].[usp_ChatInstance_GetByChatId]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CareChat].[usp_ChatInstance_GetByChatId]
      @Id bigint = null
     ,@ScheduleId bigint = null
     ,@InvitationScheduleId bigint = null
	 ,@ChatId varchar(50) = null
   
AS
BEGIN
  
    SELECT * 
    FROM    [CareChat].[Instance]
    WHERE 
        (Id = @Id OR @Id IS NULL ) 
    AND (ScheduleId = @ScheduleId OR @ScheduleId IS NULL)
    AND (InvitationScheduleId = @InvitationScheduleId OR @InvitationScheduleId IS NULL)
	AND (ChatId = @ChatId OR @ChatId IS NULL)
END
GO
/****** Object:  StoredProcedure [CareChat].[usp_GetInstanceByChatId]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [CareChat].[usp_GetInstanceByChatId]
     @id bigint = null
     ,@scheduleId bigint = null
     ,@invitationScheduleId bigint = null
	 ,@chatId varchar(50) = null
   
AS
BEGIN
  
    SELECT * 
    FROM    [CareChat].[Instance]
    WHERE 
        (id = @id OR @id IS NULL ) 
    AND (scheduleId = @scheduleId OR @scheduleId IS NULL)
    AND (invitationScheduleId = @invitationScheduleId OR @invitationScheduleId IS NULL)
	AND (chatId = @chatId OR @chatId IS NULL)
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Prompt_GetPromptContent]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Prompt_GetPromptContent]
    @LanguageId INT,
    @PromptId INT,
    @IsTextToSpeech BIT NULL,
    @IsWebPrompt BIT NULL,
    @IsSmsPrompt BIT NULL
AS
BEGIN
    SELECT  
        Prompt = (CASE 
                     WHEN @IsSmsPrompt = 1 THEN [PromptContentSms]
                     WHEN @IsWebPrompt = 1 THEN [PromptContentWeb]
                     WHEN @IsTextToSpeech = 1 THEN [PromptContent]
                     ELSE ISNULL(PromptUrl, PromptContent) 
                  END),
        Date = CreatedOn    
    FROM [main].[Prompts]
    WHERE [LanguageID] = @LanguageId AND ID = @PromptId;
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Reminders_Update]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Reminders_Update]
    @ReminderUpdateJson NVARCHAR(MAX)
AS
BEGIN
    DECLARE @Id BIGINT,
            @CrrId BIGINT,
            @HasChangedCrrId BIT,
            @TypeId INT,
            @HasChangedTypeId BIT,
            @ReminderGraph XML,
            @HasChangedReminderGraph BIT,
            @ReminderTemplateId BIGINT,
            @HasChangedReminderTemplateId BIT,
            @InputArguments NVARCHAR(MAX),
            @HasChangedInputArguments BIT,
            @IsActive BIT,
            @HasChangedIsActive BIT,
            @DtUtcSuspendedUntil DATETIME,
            @HasChangedDtUtcSuspendedUntil BIT,
            @PropBag XML,
            @HasChangedPropBag BIT;

    -- read json value
    SELECT 
        @Id = Id,
        @CrrId = CrrId,
        @HasChangedCrrId = HasChangedCrrId,
        @TypeId = TypeId,
        @HasChangedTypeId = HasChangedTypeId,
        @ReminderGraph = CAST(ReminderGraph AS XML),
        @HasChangedReminderGraph = HasChangedReminderGraph,
        @ReminderTemplateId = ReminderTemplateId,
        @HasChangedReminderTemplateId = HasChangedReminderTemplateId,
        @InputArguments = InputArguments,
        @HasChangedInputArguments = HasChangedInputArguments,
        @IsActive = IsActive,
        @HasChangedIsActive = HasChangedIsActive,
        @DtUtcSuspendedUntil = DtUtcSuspendedUntil,
        @HasChangedDtUtcSuspendedUntil = HasChangedDtUtcSuspendedUntil,
        @PropBag = CAST(PropBag AS XML),
        @HasChangedPropBag = HasChangedPropBag
    FROM OPENJSON(@ReminderUpdateJson)
    WITH (
        Id BIGINT,
        CrrId BIGINT,
        HasChangedCrrId BIT,
        TypeId INT,
        HasChangedTypeId BIT,
        ReminderGraph NVARCHAR(MAX),
        HasChangedReminderGraph BIT,
        ReminderTemplateId BIGINT,
        HasChangedReminderTemplateId BIT,
        InputArguments NVARCHAR(MAX),
        HasChangedInputArguments BIT,
        IsActive BIT,
        HasChangedIsActive BIT,
        DtUtcSuspendedUntil DATETIME,
        HasChangedDtUtcSuspendedUntil BIT,
        PropBag NVARCHAR(MAX),
        HasChangedPropBag BIT
    );

    DECLARE @ErrorMessage NVARCHAR(100) = N'';
    DECLARE @NOW DATETIME = GETUTCDATE();

    IF (@HasChangedCrrId = 0 AND @HasChangedTypeId = 0 AND @HasChangedReminderGraph = 0 AND 
        @HasChangedReminderTemplateId = 0 AND @HasChangedInputArguments = 0 AND 
        @HasChangedIsActive = 0 AND @HasChangedDtUtcSuspendedUntil = 0 AND @HasChangedPropBag = 0)
        RETURN 0;

    DECLARE @O_ID BIGINT,
            @O_CrrId BIGINT,
            @O_TypeId INT,
            @O_ReminderGraph XML,
            @O_ReminderTemplateId INT,
            @O_InputArguments NVARCHAR(255),
            @O_IsActive BIT,
            @O_DtUtcSuspendedUntil DATETIME,
            @O_CreatedByRid BIGINT,
            @O_DtUtc_Created DATETIME,
            @O_DtUtc_Modified DATETIME,
            @O_PropBag XML;

    SELECT @O_ID = [ID],
           @O_CrrId = [CrrId],
           @O_TypeId = [TypeId],
           @O_ReminderGraph = [ReminderGraph],
           @O_ReminderTemplateId = [ReminderTemplateId],
           @O_InputArguments = [InputArguments],
           @O_IsActive = [IsActive],
           @O_DtUtcSuspendedUntil = [SuspendedUntil],
           @O_CreatedByRid = [CreatedByRid],
           @O_DtUtc_Created = CreatedOn,
           @O_DtUtc_Modified = LastModifiedOn
    FROM [IVR].[Reminders] WITH (NOLOCK)
    WHERE ID = @Id;

    -- IF record does not exist, there is nothing to update
    IF (@O_ID IS NULL)
        RETURN 0;

    DECLARE @IsWithinTran BIT = CASE WHEN @@TRANCOUNT > 0 THEN 1 ELSE 0 END;

    IF (@IsWithinTran = 0)
        BEGIN TRAN;

    BEGIN TRY
        UPDATE [IVR].[Reminders]
        SET CRRID = CASE WHEN @HasChangedCrrId = 1 THEN @CrrId ELSE @O_CrrId END,
            [TypeId] = CASE WHEN @HasChangedTypeId = 1 THEN @TypeId ELSE @O_TypeId END,
            ReminderGraph = CASE WHEN @HasChangedReminderGraph = 1 THEN @ReminderGraph ELSE @O_ReminderGraph END,
            ReminderTemplateId = CASE WHEN @HasChangedReminderTemplateId = 1 THEN @ReminderTemplateId ELSE @O_ReminderTemplateId END,
            InputArguments = CASE WHEN @HasChangedInputArguments = 1 THEN @InputArguments ELSE @O_InputArguments END,
            IsActive = CASE WHEN @HasChangedIsActive = 1 THEN @IsActive ELSE @O_IsActive END,
            SuspendedUntil = CASE WHEN @HasChangedDtUtcSuspendedUntil = 1 THEN @DtUtcSuspendedUntil ELSE @O_DtUtcSuspendedUntil END,
            LastModifiedOn = @NOW,
            PropBag = CASE WHEN @HasChangedPropBag = 1 THEN @PropBag ELSE @O_PropBag END
        WHERE ID = @Id;

        IF (@IsWithinTran = 0)
            COMMIT TRAN;
        RETURN 0;
    END TRY
    BEGIN CATCH
        SET @ErrorMessage = ERROR_MESSAGE();
        IF (@IsWithinTran = 0)
            ROLLBACK TRAN;
        RETURN -99;
    END CATCH
END;
/*==================Test script==================
-- Sample JSON input for testing
DECLARE @ReminderUpdateJson NVARCHAR(MAX) = N'
{
    "Id": 1,
    "CrrId": 123,
    "HasChangedCrrId": 1,
    "TypeId": 2,
    "HasChangedTypeId": 1,
    "ReminderGraph": "<ReminderGraph></ReminderGraph>",
    "HasChangedReminderGraph": 1,
    "ReminderTemplateId": 456,
    "HasChangedReminderTemplateId": 1,
    "InputArguments": "Sample arguments",
    "HasChangedInputArguments": 1,
    "IsActive": 1,
    "HasChangedIsActive": 1,
    "DtUtcSuspendedUntil": "2023-12-31T23:59:59Z",
    "HasChangedDtUtcSuspendedUntil": 1,
    "PropBag": "<PropBag></PropBag>",
    "HasChangedPropBag": 1
}';

-- Execute the stored procedure with the sample JSON input
EXEC [dbo].[usp_Reminders_Update] @ReminderUpdateJson;

*/
GO
/****** Object:  StoredProcedure [IVR].[usp_Addresses_Get]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_Addresses_Get]  
@RID BIGINT    
AS     
    BEGIN    
        SET NOCOUNT ON;    
    
        SELECT ra.[AddressID]  as ID  
               ,ra.[AddressUsageID]    
               ,ra.[IsPrimary]    
               ,a.[AddressLine1]    
               ,a.[AddressLine2]    
               ,a.[AddressLine3]    
               ,a.[City]    
               ,a.[State]    
               ,a.[ZipCode]    
               ,a.[CountryCode]    
               ,a.[IsValid]    
            FROM [main].PersonAddresses ra WITH (NOLOCK)     
                INNER JOIN [main].[Addresses] a WITH (NOLOCK) ON ra.AddressID = a.ID    
            WHERE ra.RID = @RID    
            ORDER by ra.IsPrimary DESC    
    
    END
GO
/****** Object:  StoredProcedure [IVR].[usp_Alerts_LoadByVitalTypeId]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [IVR].[usp_Alerts_LoadByVitalTypeId]
    @VitalID int,
	@Frequency int,
	@AlertType int,
	@LanguageId int,
    @questionId bigint = null
AS 
    BEGIN
		SET NOCOUNT ON;

        SELECT 
            content as Description
            ,DescriptionUrl 
        FROM [main].[Alerts]
		WHERE [VitalTypeID] = @VitalID 
            AND [AlertType] = @AlertType 
            AND [LanguageID] = @LanguageId
            AND (isnull(QuestionId,@questionId) = @questionId or @questionId IS NULL )
        ORDER BY AlertId DESC 
	END
GO
/****** Object:  StoredProcedure [IVR].[usp_AutomatedCallsSchedule_Filter]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_AutomatedCallsSchedule_Filter]
	@RecipientId bigint = null,
	@IsLoadRecurring bit,
    @ID bigint = null,
	@GiverId bigint = null,
	@PhoneNumber varchar(20) = null
AS
BEGIN
	SET NOCOUNT ON;
	SELECT		CallRecipientRid,
                PhoneNumber,
                InputArguments,
                IsRecurring,
                CallOutGraph,
                DTUTC_NextExecutionTime,
                IsLocked,
                DTUTC_SuspendedFrom,
                DTUTC_SuspendedTo,
                CreatedByRid ,
                PropBag,
                Workflowtemplate,
                Retry,
                Shift,
                InstanceId,
                IsCustomFlow,
                WeekDay,
                Call,
                IvrClient,
                DisableVoicemail,
                DTUTC_LastExecuted AS DtutcLastExecuted,
                CampaignId,
                PopulationGroupId,
                FileuploadId,
                ID
	FROM	[main].[AutomatedCallsSchedule] 
	WHERE	
            (@RecipientId IS NULL OR [CallRecipientRID] = @RecipientId)
        AND (@ID IS NULL OR [ID] = @ID)
		AND	(@GiverId IS NULL OR CreatedByRID = @GiverId)
		AND (@PhoneNumber IS NULL OR @PhoneNumber = '' OR PhoneNumber = @PhoneNumber)
END
GO
/****** Object:  StoredProcedure [IVR].[usp_AutomatedCallsSchedule_LockByRecipientIds]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_AutomatedCallsSchedule_LockByRecipientIds]
    @RecipientIds NVARCHAR(MAX)
AS
BEGIN

    UPDATE [main].[AutomatedCallsSchedule]
    SET IsLocked = 1
    WHERE IsLocked = 0 AND CAST(CallRecipientRID AS nvarchar(20)) IN (SELECT Value  FROM STRING_SPLIT(@RecipientIds, ','));

END
GO
/****** Object:  StoredProcedure [IVR].[usp_AutomatedCallsSchedule_LockNextCalls]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_AutomatedCallsSchedule_LockNextCalls]           
    @RID BIGINT              
   ,@PhoneNumber nvarchar(11)              
   ,@IsError BIT OUTPUT
   ,@ErrorMessage NVARCHAR(100) OUTPUT
AS               
 BEGIN              
        SET NOCOUNT ON;
        SET @IsError = 0;
        SET @ErrorMessage = '';
        BEGIN TRY              
            UPDATE [main].[AutomatedCallsSchedule]              
            SET            
           [LastModifiedOn] = GETUTCDATE(),            
           [DTUTC_SuspendedFrom] = GETUTCDATE(),            
           [DTUTC_SuspendedTo] = GETUTCDATE(),      
           [IsLocked] = 1,      
           [PropBag]='<PropBag><PhoneStatusEnum>Wrong</PhoneStatusEnum></PropBag>'      
            WHERE CallRecipientRID = @RID            
            AND PhoneNumber = @PhoneNumber            
            AND DTUTC_NextExecutionTime > GETUTCDATE()            
            RETURN 0;              
        END TRY              
        BEGIN CATCH
            SET @IsError = 1
            SET @ErrorMessage = ERROR_MESSAGE()
            RETURN -99            
        END CATCH              
    END
GO
/****** Object:  StoredProcedure [IVR].[usp_AutomatedCallsSchedule_Suspend]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_AutomatedCallsSchedule_Suspend]
	@CallsSchedulerId bigint = 0
   , @SuspendedFrom DATETIME 
   , @SuspendedTo DATETIME 
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE [main].[AutomatedCallsSchedule]
    SET 
		DTUTC_SuspendedFrom= @SuspendedFrom
		, DTUTC_SuspendedTo= @SuspendedTo
		, LastModifiedOn = GETUTCDATE()
		, [PropBag] = '<PropBag><suspended>true</suspended></PropBag>'
		WHERE ID = @CallsSchedulerId

END
GO
/****** Object:  StoredProcedure [IVR].[usp_AutomatedCallsSchedule_Update]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_AutomatedCallsSchedule_Update]
    @CallsSchedulerId BIGINT
   ,@NextExecutionTime DATETIME 
   ,@HasChanged_NextExecutionTime BIT = 0
   ,@IsLocked BIT
   ,@HasChanged_IsLocked BIT = 0
   ,@Retry INT
   ,@HasChanged_Retry BIT = 0
   ,@CallOutGraph xml
   ,@HasChanged_CallOutGraph BIT = 0
   ,@ErrorMessage NVARCHAR(100) OUTPUT
   ,@InstanceId INT = NULL
   ,@Shift TINYINT
   ,@HasChanged_Shift BIT = 0
   ,@InputArguments xml = null
   ,@HasChanged_InputArguments BIT = 0
   ,@DisableVoiceMail BIT = 0
   ,@HasChanged_DisableVoiceMail BIT = 0
   ,@HasChanged_Dtutc_LastExecuted BIT = 0
AS 
	BEGIN
        SET NOCOUNT ON;

        SET @ErrorMessage = N''

        DECLARE @NOW DATETIME = GETUTCDATE()
           , @EventGUID UNIQUEIDENTIFIER = NEWID()
           , @TableName VARCHAR(255) = '[main].[AutomatedCallsSchedule]'

        DECLARE @O_ID BIGINT
           , @O_NextExecutionTime DATETIME
		   , @O_IsLocked BIT
		   , @O_Retry INT
		   , @O_CallOutGraph xml
		   , @O_Shift TINYINT
           , @O_InputArguments xml
           , @O_DisableVoiceMail BIT
           , @O_Dtutc_LastExecuted DATETIME

        SELECT @O_ID = [ID]
               , @O_NextExecutionTime = [DTUTC_NextExecutionTime]
               , @O_IsLocked = [IsLocked]
               , @O_Retry = [Retry]
               , @O_CallOutGraph = [CallOutGraph]
			   , @O_Shift = [Shift]
               , @O_InputArguments = [InputArguments]
               , @O_DisableVoiceMail = [DisableVoiceMail]
               , @O_Dtutc_LastExecuted = [Dtutc_LastExecuted]
        FROM [main].[AutomatedCallsSchedule] WITH (NOLOCK)
        WHERE ID = @CallsSchedulerId

		-- IF record does not exist, there is nothing to update
        IF (@O_ID IS NULL)
            RETURN 0;

        DECLARE @IsWithinTran BIT = CASE WHEN @@TRANCOUNT > 0 THEN 1
                                         ELSE 0
                                    END;

        IF (@IsWithinTran = 0)
            BEGIN TRAN;

        BEGIN TRY

			-- CHT SECTION -------------------------------------------------------------	
				
   --         INSERT INTO [CHT].[E](
   --             [EventGUID]
   --             , [Action]
   --             , [TableName]
   --             , [DTUTC_Event]
   --             , [PropBag]
   --             )
   --         VALUES(
   --             @EventGUID --<EventGUID, uniqueidentifier,>
   --             ,1 --<Action, tinyint,>
   --             ,@TableName --<TableName, varchar(255),>
   --             ,@NOW --<DTUTC_Event, datetime,>
   --             ,N'<PropBag/>'--,@PropBag --<PropBag, xml,>
   --         )

			--INSERT INTO [CHT].[E_WorkflowExecutionSchedule]
			--	([EventGUID]
			--	,[ID]
			--	)
			--VALUES
			--	(@EventGUID
			--	,@CallsSchedulerId
			--	)		
									
			-------------------------------------------------------------------------------
											
   --         IF (@HasChanged_NextExecutionTime = 1)
   --             INSERT INTO [CHT].[E__DATETIME]
   --                 ([EventGUID]
   --                 ,[ColumnName]
   --                 ,[Value]
   --                 )
   --             VALUES
   --                 (@EventGUID --<EventGUID, uniqueidentifier,>
   --                 ,'[DTUTC_NextExecutionTime]' --<ColumnName, varchar(255),>
   --                 ,@O_NextExecutionTime --<Value, nvarchar(255),>  
   --                 )
			
			----------------------------------------------------------------------------

            UPDATE [main].[AutomatedCallsSchedule]
            SET DTUTC_NextExecutionTime = CASE WHEN @HasChanged_NextExecutionTime = 1 THEN @NextExecutionTime
													ELSE @O_NextExecutionTime
												END
				, IsLocked = CASE WHEN @HasChanged_IsLocked = 1 THEN @IsLocked
								ELSE @O_IsLocked
							END
				, Retry = CASE WHEN @HasChanged_Retry = 1 THEN @Retry
								ELSE @O_Retry
							END		
				, CallOutGraph = CASE WHEN @HasChanged_CallOutGraph = 1 THEN @CallOutGraph
								ELSE @O_CallOutGraph
							END	
				, LastModifiedOn = GETUTCDATE()
				, InstanceId = @InstanceId
				, [Shift] = CASE WHEN @HasChanged_Shift = 1 THEN @Shift
								ELSE @O_Shift
							END		
                , [InputArguments] = CASE WHEN @HasChanged_InputArguments = 1 THEN @InputArguments
                                        ELSE @O_InputArguments
                            END
                , [DisableVoiceMail] = CASE WHEN @HasChanged_DisableVoiceMail = 1 THEN @DisableVoiceMail
                                        ELSE @O_DisableVoiceMail
                            END
                , [Dtutc_LastExecuted] = CASE WHEN @HasChanged_Dtutc_LastExecuted = 1 THEN GETDATE()
                                        ELSE @O_Dtutc_LastExecuted
                                        END
                WHERE ID = @CallsSchedulerId

            IF (@IsWithinTran = 0)
                COMMIT TRAN;
            RETURN 0;
        END TRY
	
        BEGIN CATCH

            SET @ErrorMessage = ERROR_MESSAGE()
            IF (@IsWithinTran = 0)
                ROLLBACK TRAN;
            RETURN -99;
        END CATCH
    END
GO
/****** Object:  StoredProcedure [IVR].[usp_AutomatedCallsSchedule_UpdatePhoneNumberCurrentCall]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_AutomatedCallsSchedule_UpdatePhoneNumberCurrentCall]             
    @ScheduleID BIGINT            
   ,@PhoneNumber nvarchar(11)
   ,@IsError BIT OUTPUT
   ,@ErrorMessage NVARCHAR(100) OUTPUT
AS             
 BEGIN            
        SET NOCOUNT ON;            
        SET @IsError = 0;
        SET @ErrorMessage = '';      
                    
        BEGIN TRY            
            UPDATE [main].[AutomatedCallsSchedule]            
            SET [PhoneNumber] = @PhoneNumber,          
            [IsLocked] = 0,          
			[LastModifiedOn] = GETUTCDATE()          
            WHERE ID = @ScheduleID 
            RETURN 0;            
        END TRY            
             
        BEGIN CATCH            
            SET @IsError = 1
            SET @ErrorMessage = ERROR_MESSAGE()
            RETURN -99        
        END CATCH                
    END
GO
/****** Object:  StoredProcedure [IVR].[usp_AutomatedCallsSchedule_UpdatePhoneNumberForNextCalls]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_AutomatedCallsSchedule_UpdatePhoneNumberForNextCalls]              
    @RID BIGINT            
   ,@PhoneNumber nvarchar(11)             
   ,@NewPhoneNumber nvarchar(11)             
AS             
 BEGIN            
        SET NOCOUNT ON;            
        BEGIN TRY            
            UPDATE [main].[AutomatedCallsSchedule]            
            SET [PhoneNumber] = @NewPhoneNumber,          
			[LastModifiedOn] = GETUTCDATE()          
            WHERE CallRecipientRID = @RID      
			AND [PhoneNumber] = @PhoneNumber  
			AND DTUTC_NextExecutionTime > GETUTCDATE()          
            RETURN 0;            
        END TRY            
        BEGIN CATCH            
            RETURN -99;            
        END CATCH            
    END
GO
/****** Object:  StoredProcedure [IVR].[usp_CallConfiguration_Get]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CallConfiguration_Get]       
 @RID bigint,      
 @GiverID bigint,      
 @ScheduleId int      
AS       
    BEGIN      
   SET NOCOUNT ON;      
   SELECT  gr.Relation as RecipientRelation, gr.GiverRelation as GiverRelation,    
   pinfocr.FName as RecipientName,pinfocr.LName as RecipientLastName,pinfocg.FName as GiverName,    
   pinfocr.Gender as Gender,     
       
   (SELECT sum(distinct POWER(2,acs.[shift]-1))      
    FROM main.[AutomatedCallsSchedule] acs (nolock)     
    WHERE [CallRecipientRID] = @RID and [CreatedByRID] = @GiverID and [shift]>0 and [shift]<4)     
 as FrequencyFlag,      
        
 (SELECT [PropBag].value('(/PropBag/RecipientMsg)[1]','nvarchar(255)')      
    FROM main.AutomatedCallsSchedule      
    WHERE ID=@ScheduleId) as RecipientMessage      
       
   FROM main.[GiversRecipients] gr (nolock)     
   Left join main.[PersonInfo] pinfocr on pinfocr.RID = gr.[CareRecipientID]       
   left join main.[PersonInfo] pinfocg on pinfocg.RID = gr.[CareGiverID]       
   WHERE  gr.[CareRecipientID] = @RID and gr.[CareGiverID] = @GiverID       
    
END
GO
/****** Object:  StoredProcedure [IVR].[usp_CallInstance_Get]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CallInstance_Get]
    @Id int
AS
BEGIN
    SELECT InstanceData as Data
    FROM [IVR].[CallInstance] WITH (NOLOCK)
    WHERE Id = @Id
END
GO
/****** Object:  StoredProcedure [IVR].[usp_CallStatus_Upsert]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CallStatus_Upsert]
    @RecipientId BIGINT,
    @Status INT = NULL,
    @SchedulerId BIGINT = NULL
AS
BEGIN
    IF EXISTS (SELECT TOP 1 1 FROM [IVR].[CallStatus] WHERE [RecipientId] = @RecipientId)
    BEGIN
        UPDATE [IVR].[CallStatus]
        SET [CallStatus] = ISNULL(@Status, CallStatus),
            [Timestamp] = GETUTCDATE(),
            [SchedulerId] = ISNULL(@SchedulerId, SchedulerId)
        WHERE [RecipientId] = @RecipientId
    END
    ELSE
    BEGIN
        INSERT INTO [IVR].[CallStatus] ([RecipientId], [CallStatus], [Timestamp], [SchedulerId])
        VALUES (@RecipientId, @Status, GETUTCDATE(), @SchedulerId)
    END
END
GO
/****** Object:  StoredProcedure [IVR].[usp_CareCircle_Load]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CareCircle_Load]
    @recipientId bigint 
AS 
    BEGIN
         SET NOCOUNT ON;
			SELECT  gr.[CareGiverID] AS [GiverId],
            gr.[Relation] AS [RecipientRelation], 
            gr.[GiverRelation] AS [Relation], 
            gr.[IsAdmin], 
            gr.[Participation], 
            pinfo.[FName] AS [GiverName]
            FROM [main].[GiversRecipients] gr, [main].[PersonInfo] pinfo
				WHERE  gr.[CareRecipientID] = @recipientId and gr.[CareGiverID] = pinfo.[RID] and gr.[IsActive] = 1
    END
GO
/****** Object:  StoredProcedure [IVR].[usp_CareCircleMember_Get]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CareCircleMember_Get]   
@RID bigint  
  
AS  
begin  
   SELECT  gr.[CareGiverID] as GiverId, gr.[Relation] as RecipientRelation, gr.[GiverRelation]  as Relation, gr.[IsAdmin], gr.[Participation], pinfo.[FName] as GiverName    
   FROM main.[GiversRecipients] gr (nolock)
   inner join main.[PersonInfo] pinfo on  gr.[CareGiverID] = pinfo.[RID]  
   WHERE  gr.[CareRecipientID] = @RID 
   and gr.[IsActive] = 1    
end
GO
/****** Object:  StoredProcedure [IVR].[usp_CarePlan_GetQuestions]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CarePlan_GetQuestions]
    @CarePlanID BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    WITH SubQuestions (QuestionId, ParentId, QuestionTypeID, VitalTypeID, PromptID, SampleID, IsPublic, 
                       QuestionCategory, QuestionHangUp, InstructionMode, MinDigits, MaxDigits, Decimals, 
                       Wait, LanguageID, ReadNumberAs, Frequency, QuestionChannel, CheckOut, Whisper, 
                       RepeatAfterAttemps, BargeIn)
    AS
    (
        SELECT 
            cq.Id AS QuestionId, 
            cq.Id AS ParentId,
            cq.QuestionTypeID, 
            cq.VitalTypeID, 
            cq.PromptID, 
            cq.Sample AS SampleID, 
            cq.IsPublic, 
            cq.QuestionCategory, 
            cq.QuestionHangUp, 
            cq.InstructionMode, 
            cq.MinDigits, 
            cq.MaxDigits, 
            cq.Decimals, 
            cq.Wait, 
            cq.LanguageID, 
            cq.ReadNumberAs, 
            cq.Frequency, 
            cq.QuestionChannel, 
            cq.CheckOut, 
            cq.Whisper, 
            cq.RepeatAfterAttemps, 
            cq.BargeIn
        FROM 
            [main].[Question] cq
        INNER JOIN 
            [main].[CarePlanQuestions] cpq 
            ON cq.Id = cpq.QuestionID
        WHERE 
            cpq.CarePlanID = @CarePlanID 
        
        UNION
        
        SELECT 
            cq.Id AS QuestionId, 
            cq.Id AS ParentId,
            cq.QuestionTypeID, 
            cq.VitalTypeID, 
            cq.PromptID, 
            cq.Sample AS SampleID, 
            cq.IsPublic, 
            cq.QuestionCategory, 
            cq.QuestionHangUp, 
            cq.InstructionMode, 
            cq.MinDigits, 
            cq.MaxDigits, 
            cq.Decimals, 
            cq.Wait, 
            cq.LanguageID, 
            cq.ReadNumberAs, 
            cq.Frequency, 
            cq.QuestionChannel, 
            cq.CheckOut, 
            cq.Whisper, 
            cq.RepeatAfterAttemps, 
            cq.BargeIn
        FROM 
            [main].[Question] cq
        INNER JOIN 
            [main].[CarePathwayQuestions] cwq 
            ON cq.Id = cwq.QuestionID
        INNER JOIN 
            [main].[CarePlanQuestions] cpq  
            ON cq.Id = cpq.QuestionID
        WHERE 
            cpq.CarePlanID = @CarePlanID
        
        UNION ALL
        
        SELECT  
            cq.Id AS QuestionId, 
            cq.Id AS ParentId,
            cq.QuestionTypeID, 
            cq.VitalTypeID, 
            cq.PromptID, 
            cq.Sample AS SampleID, 
            cq.IsPublic, 
            cq.QuestionCategory, 
            cq.QuestionHangUp, 
            cq.InstructionMode, 
            cq.MinDigits, 
            cq.MaxDigits, 
            cq.Decimals, 
            cq.Wait, 
            cq.LanguageID, 
            cq.ReadNumberAs, 
            cq.Frequency, 
            cq.QuestionChannel, 
            cq.CheckOut, 
            cq.Whisper, 
            cq.RepeatAfterAttemps, 
            cq.BargeIn
        FROM 
            [main].[Question] cq
        INNER JOIN 
            [main].[QuestionAnswers] AS cqa 
            ON cqa.NextID = cq.Id
        INNER JOIN 
            SubQuestions AS sq
            ON cqa.QuestionID = sq.QuestionId
    )
    
    SELECT 
        sq.*,
        cqa.Id,
        cqa.ReadingLevel,
        cqa.TriggerAlert,
        cqa.NextID,
        o.Options,
        o.OptionWeb,
        o.OptionSms,
        cqa.[From],
        cqa.[To],
        p.PromptContent,
        cqa.OptionID,
        p.[AudioDescription],
        p.PromptUrl, 
        cqa.DisableAnswerReaction,
        cqa.[Action], 
        cqa.[Sample] AS AnswerSampleId, 
        a.content AS SummaryText, 
        a.DescriptionUrl AS SummaryUrl, 
        p.[PromptContentWeb], 
        p.[PromptContentSms],
        cqa.[TriggerFaxAlert] AS 'TriggerFaxAlert',
        cqa.[Value] AS 'Value'
    FROM 
        SubQuestions sq
    LEFT JOIN 
        [main].[QuestionAnswers] cqa 
        ON cqa.QuestionID = sq.QuestionID
    LEFT JOIN 
        [main].[Prompts] p 
        ON p.Id = sq.PromptID 
        AND p.LanguageId = sq.LanguageID
    LEFT JOIN 
        [main].[Options] o 
        ON o.Id = cqa.OptionID 
        AND o.LanguageId = sq.LanguageID
    LEFT JOIN 
        [main].[Alerts] a 
        ON a.VitalTypeID = sq.VitalTypeID 
        AND a.Frequency = 1 
        AND a.AlertType = 1 
        AND a.LanguageID = sq.LanguageID 
        AND sq.QuestionID = a.QuestionID;
END
GO
/****** Object:  StoredProcedure [IVR].[usp_CarePlanQuestions_Get]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CarePlanQuestions_Get]
	@CarePlanID bigint = null,
	@SchedulerId bigint = null	
AS
BEGIN
	SET NOCOUNT ON;
	SELECT *
	FROM 
		[main].[CarePlanQuestions] cf  WITH (NOLOCK)
	INNER JOIN 
		[main].[AutomatedCallsSchedule] s WITH (NOLOCK) ON s.WorkflowTemplate = CAST(cf.CarePlanID AS NVARCHAR)  		
	WHERE [CarePlanID] = @CarePlanID
		AND [ID] = @SchedulerId
	ORDER BY [QuestionOrder];
END
GO
/****** Object:  StoredProcedure [IVR].[usp_CarePlanQuestions_GetQuestionCount]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CarePlanQuestions_GetQuestionCount]
(
   @CarePlanId bigint = null
)
AS
BEGIN
    SET NOCOUNT ON
	DECLARE @CountValue int = 0;

    IF (@CarePlanId IS NOT NULL)
    BEGIN
        SELECT @CountValue = COUNT(QuestionTypeId)
        FROM main.CarePlanQuestions cfq
        INNER JOIN main.Question cq
            ON cfq.questionid = cq.id
        WHERE cfq.CarePlanID = @CarePlanId
            AND cq.QuestionTypeID NOT IN (3, 7, 11)  /* 3, 7, 11 -> They are not questions, they are comments or informative tips */
        GROUP BY cq.QuestionTypeID;

        SELECT @CountValue AS CountValue
    END
END
GO
/****** Object:  StoredProcedure [IVR].[usp_CarePlanRecipient_ActiveByRecipientIds]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CarePlanRecipient_ActiveByRecipientIds]
	 @RecipientIds NVARCHAR(MAX)
AS
BEGIN
    UPDATE [main].[CarePlanRecipients]
    SET [Status] = 1
    WHERE CAST(CareRecipientId AS nvarchar(20)) IN (SELECT Value  FROM STRING_SPLIT(@RecipientIds, ','));
END
GO
/****** Object:  StoredProcedure [IVR].[usp_CarePlanRecipient_Get]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CarePlanRecipient_Get]
   @RecipientId BIGINT NULL,
   @CarePlanId BIGINT NULL
AS
	SELECT TOP 1
        CP.Id, 
        CP.Name, 
        CP.Description, 
        CP.CarePlanGroupID AS GroupId, 
        CP.Duration, 
        CP.UnitMeasure, 
        CP.Schedule, 
        CP.Segment, 
        CP.Scope, 
        CP.FlowTemplate, 
        CPR.Id AS CarePlanRecipientId, 
        CPR.CareRecipientId, 
        CPR.StartDate, 
        CPR.EndDate, 
        CPR.Status AS CarePlanRecipientStatus, 
        CPR.OverRiding, 
        CPR.Channel, 
        CPR.CustomFlowGroupsId, 
        CPR.CreatedOn, 
        CP.LanguageId,
        (
            SELECT TOP (1) ACS.IvrClient
            FROM		[Main].[CarePlanRecipients] AS CPR2 
            INNER JOIN	[Main].CarePlanRecipientsSchedule AS CFRS 
			    ON		CPR2.Id = CFRS.CarePlanRecipientsID  
            INNER JOIN	[Main].AutomatedCallsSchedule AS ACS 
			    ON		CFRS.AutomatedCallsScheduleId = ACS.ID
            WHERE		CPR.CareRecipientId = CPR2.CareRecipientId
			    AND		CPR.CarePlanID = CPR2.CarePlanID
        ) AS Client
    FROM		[Main].[CarePlan] AS CP 
    INNER JOIN	[Main].[CarePlanRecipients] AS CPR 
	    ON		CP.Id = CPR.CarePlanID
    WHERE		(CPR.CareRecipientId = @RecipientId OR @RecipientId is null)
        AND     (CP.ID = @CarePlanId OR @CarePlanId is null)

GO
/****** Object:  StoredProcedure [IVR].[usp_CarePlanRecipients_UpdateStatusAndLockCall]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CarePlanRecipients_UpdateStatusAndLockCall]
	@CarePlanRecipientId [bigint],
	@Status [int],
	@IsLocked [int]
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE		[main].[AutomatedCallsSchedule] 
	SET			IsLocked = @IsLocked 
	FROM		[main].[AutomatedCallsSchedule]			AS ACS
	INNER JOIN	[main].[CarePlanRecipientsSchedule]		AS CRS
		ON		CRS.AutomatedCallsScheduleID = ACS.ID
	WHERE		CRS.CarePlanRecipientsId = @CarePlanRecipientId
			
	UPDATE		[main].[CarePlanRecipients] 
	SET			Status = @Status 
	WHERE		Id = @CarePlanRecipientId
END
GO
/****** Object:  StoredProcedure [IVR].[usp_CareRecipient_Get]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CareRecipient_Get]   
@RID bigint  
AS  
BEGIN         
SET NOCOUNT ON;          
SELECT cr.*, r.LastModifiedOn as LastModified             
FROM [main].[CareRecipients] cr WITH (NOLOCK)    
JOIN main.R r on r.RID=cr.RID             
WHERE cr.RID = @RID     
END
GO
/****** Object:  StoredProcedure [IVR].[usp_CareRecipient_GetCarePlanQuestions]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CareRecipient_GetCarePlanQuestions] 
    @ScheduledId INT  
AS  
BEGIN  
    SET NOCOUNT ON;  
  
    WITH SubQuestions AS  
    (   
        SELECT 
            cfq.[QuestionOrder], 
            cq.Id AS QuestionId, 
            cq.Id AS ParentId, 
            cq.QuestionTypeId AS QuestionType, 
            cq.VitalTypeId, 
            cq.PromptId AS TextId, 
            cq.Sample AS SampleId, 
            cq.IsPublic,
            cq.Grammar,
            cq.DisableReaction,
            cq.DisableInstruction,
            cq.QuestionHangUp,
            cq.InstructionMode,
            cq.MinDigits,
            cq.MaxDigits,
            cq.Decimals,
            cq.Wait,
            cq.LanguageId,
            cq.ReadNumberAs,
            cq.Frequency,
            cq.QuestionChannel,
            cq.QuestionCategory,
            cq.CheckOut, 
            cq.Whisper,  
            cq.BargeIn, 
            cq.RepeatAfterAttemps  
        FROM 
            main.Question cq WITH (NOLOCK)
        INNER JOIN 
            main.CarePlanQuestions cfq WITH (NOLOCK) ON cq.Id = CONVERT(INT, cfq.QuestionId)  
        INNER JOIN 
            main.AutomatedCallsSchedule acs WITH (NOLOCK) ON acs.WorkflowTemplate = CAST(cfq.CarePlanID AS NVARCHAR)             
        WHERE 
            cfq.IsCustomQuestion = 1 
            AND acs.Id = @ScheduledId   
        
        UNION ALL  
         
        SELECT  
            sq.[QuestionOrder], 
            cq.Id AS QuestionId, 
            cqa.QuestionId AS ParentId, 
            cq.QuestionTypeId AS QuestionType, 
            cq.VitalTypeId, 
            cq.PromptId AS TextId, 
            cq.Sample AS SampleId, 
            cq.IsPublic,
            cq.Grammar,
            cq.DisableReaction,
            cq.DisableInstruction,
            cq.QuestionHangUp,
            cq.InstructionMode,
            cq.MinDigits,
            cq.MaxDigits,
            cq.Decimals,
            cq.Wait,
            cq.LanguageId,
            cq.ReadNumberAs,
            cq.Frequency,
            cq.QuestionChannel,
            cq.QuestionCategory,
            cq.CheckOut, 
            cq.Whisper,  
            cq.BargeIn, 
            cq.RepeatAfterAttemps  
        FROM 
            main.Question cq WITH (NOLOCK)
        INNER JOIN 
            main.QuestionAnswers cqa WITH (NOLOCK) ON cqa.NextId = cq.Id   
        INNER JOIN 
            SubQuestions sq ON cqa.QuestionId = sq.QuestionId    
    )  
  
    SELECT 
        sq.*, 
        cqa.Id,
        cqa.ReadingLevel,
        cqa.TriggerAlert,
        cqa.[NextId],
        o.Options,
        o.OptionWeb,
        o.OptionSms,
        cqa.[From],
        cqa.[To],
        p.PromptContent,
        cqa.[OptionId] AS OptionId,
        p.[AudioDescription],
        cqa.Action, 
        cqa.DisableAnswerReaction,
        cqa.Value, 
        cqa.[Sample] AS AnswerSampleId, 
        p.[PromptContentWeb], 
        p.[PromptContentSms],  
        cqa.[TriggerFaxAlert] AS 'TriggerFaxAlert',  
        cqa.[Value] AS 'Value' 
    FROM 
        SubQuestions sq   
    LEFT JOIN 
        main.QuestionAnswers cqa WITH (NOLOCK) ON cqa.QuestionId = sq.QuestionId   
    LEFT JOIN 
        main.Prompts p WITH (NOLOCK) ON p.Id = sq.TextId AND p.LanguageId = sq.LanguageId  
    LEFT JOIN 
        main.Options o WITH (NOLOCK) ON o.Id = cqa.OptionId AND o.LanguageId = sq.LanguageId;  

END
GO
/****** Object:  StoredProcedure [IVR].[usp_CareRecipient_GetPathwaysQuestions]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CareRecipient_GetPathwaysQuestions] -- [CORE].[usp_CareRecipient_QuestionBlocksQuestions]  
@RID bigint  
AS  
 BEGIN  
  SET NOCOUNT ON;  
  
  CREATE TABLE #RecipientCarePathway (
    RecipientId BIGINT PRIMARY KEY,
    CarePathwayId BIGINT,
    Order1 tinyint 
);

  WITH SubQuestions (
  [Order],QuestionId,ParentId,QuestionType,VitalTypeId,TextId,SampleId,IsPublic,Grammar,
  DisableReaction,DisableInstruction,QuestionHangUp,InstructionMode,MinDigits,MaxDigits,
  Decimals,Wait,LanguageId,ReadNumberAs,Frequency,QuestionChannel,CheckOut, Whisper, RepeatAfterAttemps, BargeIn)  
  AS  
  (   (SELECT qbq.[QuestionOrder],cq.Id as QuestionId, cq.Id as ParentId,cq.QuestionTypeID,cq.VitalTypeId,cq.PromptID as TextId,
	cq.Sample as SampleId,cq.IsPublic,cq.Grammar,cq.DisableReaction,cq.DisableInstruction,cq.QuestionHangUp,
	cq.InstructionMode,cq.MinDigits,cq.MaxDigits,cq.Decimals,cq.Wait,cq.LanguageId,cq.ReadNumberAs,cq.Frequency,
	cq.QuestionChannel,cq.CheckOut, cq.Whisper, cq.RepeatAfterAttemps , cq.BargeIn  
   FROM #RecipientCarePathway rcqb  
   inner join main.CarePathwayQuestions qbq on rcqb.CarePathwayID=qbq.CarePathwayID
   inner join main.Question cq on cq.id = (CASE WHEN (isnumeric(qbq.CarePathwayID) = 1)   THEN    CAST(qbq.CarePathwayID AS bigint)  ELSE    0  END)  
   where rcqb.RecipientId=@RID AND QBQ.IsCustomQuestion = 1)  
   UNION ALL  

   SELECT  sq.[Order],cq.Id as QuestionId,cqa.QuestionID as ParentId,cq.QuestionTypeID,cq.VitalTypeId,cq.PromptID as TextId,
   cq.Sample as SampleId,cq.IsPublic,cq.Grammar,cq.DisableReaction,cq.DisableInstruction,cq.QuestionHangUp,cq.InstructionMode,
   cq.MinDigits,cq.MaxDigits,cq.Decimals,cq.Wait,cq.LanguageId,cq.ReadNumberAs,cq.Frequency,cq.QuestionChannel,
   cq.CheckOut, cq.Whisper, cq.RepeatAfterAttemps, cq.BargeIn  
   FROM main.Question cq  
   INNER JOIN main.QuestionAnswers AS cqa on cqa.NextID=cq.Id  
   INNER JOIN SubQuestions AS sq  
    ON cqa.QuestionID = sq.QuestionId  
  )  
  
  SELECT distinct sq.*,cqa.Id,cqa.ReadingLevel,cqa.TriggerAlert,cqa.TriggerFaxAlert,cqa.[NextId],o.Options,o.OptionWeb,o.OptionSms,cqa.[From],cqa.[To],p.PromptContent,cqa.OptionID as OptionId,p.[AudioDescription],p.PromptUrl,cqa.Action,cqa.Value, cqa.[Sample]
 as AnswerSampleId, a.content as SummaryText, a.DescriptionUrl as SummaryUrl, p.[PromptContentWeb], p.[PromptContentSms]  
  ,cqa.[Value] AS 'Value'  
  From SubQuestions sq  
  left Join main.QuestionAnswers cqa on cqa.QuestionID = sq.QuestionId  
  left join main.Prompts p on p.Id=sq.TextId and p.LanguageId=sq.LanguageId  
  left join main.Options o on o.Id=cqa.OptionID and o.LanguageId=sq.LanguageId  
  left join main.Alerts a on a.VitalTypeID = sq.VitalTypeId AND a.Frequency = 1 AND a.AlertType = 1 AND a.LanguageId = sq.LanguageId and sq.QuestionId = a.QuestionId  
    END  
 drop TABLE #RecipientCarePathway
GO
/****** Object:  StoredProcedure [IVR].[usp_CareRecipient_GetQuestions]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CareRecipient_GetQuestions] -- CORE.usp_CareRecipient_CustomQuestions  
@RID bigint  
AS  
 BEGIN  
  CREATE TABLE #RecipientQuestion (
    RecipientId BIGINT PRIMARY KEY,
    QuestionId BIGINT,
    Order1 tinyint 
);

  CREATE TABLE #RecipientCarePathway (
    RecipientId BIGINT PRIMARY KEY,
    CarePathwayId BIGINT,
    Order1 tinyint 
);

  SET NOCOUNT ON;  
  
  WITH SubQuestions ([Order],QuestionId,ParentId,QuestionType,VitalTypeId,TextId,SampleId,IsPublic,Grammar,
  DisableReaction,DisableInstruction,QuestionHangUp,InstructionMode,MinDigits,MaxDigits,Decimals,Wait,
  LanguageId,ReadNumberAs,Frequency,QuestionChannel,CheckOut, Whisper, RepeatAfterAttemps, BargeIn)  
  AS  
  ((SELECT rcq.[Order1],cq.Id as QuestionId, cq.Id as ParentId,cq.QuestionTypeID,cq.VitalTypeId,cq.PromptID as TextId,
  cq.Sample as SampleId,cq.IsPublic,cq.Grammar,cq.DisableReaction,cq.DisableInstruction,cq.QuestionHangUp,
  cq.InstructionMode,cq.MinDigits,cq.MaxDigits,cq.Decimals,cq.Wait,cq.LanguageId,cq.ReadNumberAs,cq.Frequency,
  cq.QuestionChannel,cq.CheckOut, cq.Whisper, cq.RepeatAfterAttemps, 
  cq.BargeIn
  FROM main.Question cq  
  inner join #RecipientQuestion rcq on cq.Id=rcq.QuestionId  
  where rcq.RecipientId=@RID 
   
   UNION    
   
   SELECT rcqb.[Order1],cq.Id as QuestionId, cq.Id as ParentId,cq.QuestionTypeID,cq.VitalTypeId,cq.PromptID as TextId,cq.Sample as SampleId,
   cq.IsPublic,cq.Grammar,cq.DisableReaction,cq.DisableInstruction,cq.QuestionHangUp,cq.InstructionMode,cq.MinDigits,cq.MaxDigits,
   cq.Decimals,cq.Wait,cq.LanguageId,cq.ReadNumberAs,cq.Frequency,cq.QuestionChannel,cq.CheckOut, cq.Whisper, cq.RepeatAfterAttemps, 
   cq.BargeIn
   FROM main.Question cq  
   inner join main.CarePathwayQuestions qbq on cq.Id=qbq.CarePathwayID
   inner join #RecipientCarePathway rcqb on rcqb.CarePathwayId=qbq.CarePathwayID
   where rcqb.RecipientId=@RID)  
   
   UNION ALL  
   
   SELECT  sq.[Order],cq.Id as QuestionId,cqa.QuestionID as ParentId,cq.QuestionTypeId,cq.VitalTypeId,cq.PromptID as TextId,
   cq.Sample as SampleId,cq.IsPublic,cq.Grammar,cq.DisableReaction,cq.DisableInstruction,cq.QuestionHangUp,cq.InstructionMode,
   cq.MinDigits,cq.MaxDigits,cq.Decimals,cq.Wait,cq.LanguageId,cq.ReadNumberAs,cq.Frequency,cq.QuestionChannel,cq.CheckOut, 
   cq.Whisper, cq.RepeatAfterAttemps, cq.BargeIn 
   FROM main.Question cq  
   INNER JOIN main.QuestionAnswers AS cqa on cqa.NextId=cq.Id  
   INNER JOIN SubQuestions AS sq  
    ON cqa.QuestionID = sq.QuestionId  
  )  
  
  SELECT distinct sq.*,cqa.Id,cqa.ReadingLevel,cqa.TriggerAlert,cqa.[NextId],o.Options,o.OptionWeb,o.OptionSms,cqa.[From],cqa.[To],
  p.PromptContent,cqa.[OptionID] as OptionId,p.[AudioDescription],p.PromptUrl,cqa.Action,cqa.Value, cqa.[Sample] as AnswerSampleId, 
a.content as SummaryText, a.DescriptionUrl as SummaryUrl, p.[PromptContentWeb], p.[PromptContentSms]  
  ,cqa.[Value] AS 'Value'  
  From SubQuestions sq  
  left Join main.QuestionAnswers cqa on cqa.QuestionId = sq.QuestionId  
  left join main.Prompts p on p.Id=sq.TextId and p.LanguageId=sq.LanguageId  
  left join main.Options o on o.Id=cqa.OptionID and o.LanguageId=sq.LanguageId  
  left join main.Alerts a on a.VitalTypeID = sq.VitalTypeId AND a.Frequency = 1 AND a.AlertType = 1   
   AND a.LanguageId = sq.LanguageId and sq.QuestionId = a.QuestionId  
 END  

 drop TABLE #RecipientQuestion
 drop TABLE #RecipientCarePathway
GO
/****** Object:  StoredProcedure [IVR].[usp_CareRecipient_GetRecipientsByPhoneAndCountryCode]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CareRecipient_GetRecipientsByPhoneAndCountryCode]
	@PhoneCountryCode varchar(3)
	, @PhoneNumber varchar(15) 	
	, @PartnerId int
	, @IsActive bit
AS
BEGIN
	;WITH cteRecipientIds AS(
		SELECT		CR.RID	AS RecipientId
		FROM		[main].[Phones] P 
		INNER JOIN	[main].PersonPhones RP
			ON		RP.PhoneId = P.Id
		INNER JOIN	[main].CareRecipients CR 
			ON		CR.RID = RP.RID
		WHERE		P.PhoneCountryCode = @PhoneCountryCode
			AND		P.PhoneNumber = @PhoneNumber
			AND		rp.IsPrimary = 1	
	)

	SELECT		RP.RecipientId AS RecipientId 
	FROM		cteRecipientIds RP
	INNER JOIN  [main].[R] R 
		ON		R.RID = RP.RecipientId
	INNER JOIN  [main].[PartnerEndUsers] PU
		ON		PU.RID = R.RID
	LEFT JOIN	main.PartnerGroupEndUsers G
		ON		G.PartnerID = PU.PartnerID
	WHERE		R.IsActive = @IsActive 
		AND		PU.PartnerID = @PartnerId
	GROUP BY	RP.RecipientId
END
GO
/****** Object:  StoredProcedure [IVR].[usp_CareRecipient_Questions]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CareRecipient_Questions] -- CORE.usp_CareRecipient_CustomQuestions  
@RID bigint  
AS  
 BEGIN  
  CREATE TABLE #RecipientQuestion (
    RecipientId BIGINT PRIMARY KEY,
    QuestionId BIGINT,
    Order1 tinyint 
);

  CREATE TABLE #RecipientCarePathway (
    RecipientId BIGINT PRIMARY KEY,
    CarePathwayId BIGINT,
    Order1 tinyint 
);

  SET NOCOUNT ON;  
  
  WITH SubQuestions ([Order],QuestionId,ParentId,QuestionType,VitalTypeId,TextId,SampleId,IsPublic,Grammar,
  DisableReaction,DisableInstruction,QuestionHangUp,InstructionMode,MinDigits,MaxDigits,Decimals,Wait,
  LanguageId,ReadNumberAs,Frequency,QuestionChannel,CheckOut, Whisper, RepeatAfterAttemps, BargeIn)  
  AS  
  ((SELECT rcq.[Order1],cq.Id as QuestionId, cq.Id as ParentId,cq.QuestionTypeID,cq.VitalTypeId,cq.PromptID as TextId,
  cq.Sample as SampleId,cq.IsPublic,cq.Grammar,cq.DisableReaction,cq.DisableInstruction,cq.QuestionHangUp,
  cq.InstructionMode,cq.MinDigits,cq.MaxDigits,cq.Decimals,cq.Wait,cq.LanguageId,cq.ReadNumberAs,cq.Frequency,
  cq.QuestionChannel,cq.CheckOut, cq.Whisper, cq.RepeatAfterAttemps, 
  cq.BargeIn
  FROM main.Question cq  
  inner join #RecipientQuestion rcq on cq.Id=rcq.QuestionId  
  where rcq.RecipientId=@RID 
   
   UNION    
   
   SELECT rcqb.[Order1],cq.Id as QuestionId, cq.Id as ParentId,cq.QuestionTypeID,cq.VitalTypeId,cq.PromptID as TextId,cq.Sample as SampleId,
   cq.IsPublic,cq.Grammar,cq.DisableReaction,cq.DisableInstruction,cq.QuestionHangUp,cq.InstructionMode,cq.MinDigits,cq.MaxDigits,
   cq.Decimals,cq.Wait,cq.LanguageId,cq.ReadNumberAs,cq.Frequency,cq.QuestionChannel,cq.CheckOut, cq.Whisper, cq.RepeatAfterAttemps, 
   cq.BargeIn
   FROM main.Question cq  
   inner join main.CarePathwayQuestions qbq on cq.Id=qbq.CarePathwayID
   inner join #RecipientCarePathway rcqb on rcqb.CarePathwayId=qbq.CarePathwayID
   where rcqb.RecipientId=@RID)  
   
   UNION ALL  
   
   SELECT  sq.[Order],cq.Id as QuestionId,cqa.QuestionID as ParentId,cq.QuestionTypeId,cq.VitalTypeId,cq.PromptID as TextId,
   cq.Sample as SampleId,cq.IsPublic,cq.Grammar,cq.DisableReaction,cq.DisableInstruction,cq.QuestionHangUp,cq.InstructionMode,
   cq.MinDigits,cq.MaxDigits,cq.Decimals,cq.Wait,cq.LanguageId,cq.ReadNumberAs,cq.Frequency,cq.QuestionChannel,cq.CheckOut, 
   cq.Whisper, cq.RepeatAfterAttemps, cq.BargeIn 
   FROM main.Question cq  
   INNER JOIN main.QuestionAnswers AS cqa on cqa.NextId=cq.Id  
   INNER JOIN SubQuestions AS sq  
    ON cqa.QuestionID = sq.QuestionId  
  )  
  
  SELECT distinct sq.*,cqa.Id,cqa.ReadingLevel,cqa.TriggerAlert,cqa.[NextId],o.Options,o.OptionWeb,o.OptionSms,cqa.[From],cqa.[To],
  p.PromptContent,cqa.[OptionID] as OptionId,p.[AudioDescription],p.PromptUrl,cqa.Action,cqa.Value, cqa.[Sample] as AnswerSampleId, 
a.content as SummaryText, a.DescriptionUrl as SummaryUrl, p.[PromptContentWeb], p.[PromptContentSms]  
  ,cqa.[Value] AS 'Value'  
  From SubQuestions sq  
  left Join main.QuestionAnswers cqa on cqa.QuestionId = sq.QuestionId  
  left join main.Prompts p on p.Id=sq.TextId and p.LanguageId=sq.LanguageId  
  left join main.Options o on o.Id=cqa.OptionID and o.LanguageId=sq.LanguageId  
  left join main.Alerts a on a.VitalTypeID = sq.VitalTypeId AND a.Frequency = 1 AND a.AlertType = 1   
   AND a.LanguageId = sq.LanguageId and sq.QuestionId = a.QuestionId  
 END  

 drop TABLE #RecipientQuestion
 drop TABLE #RecipientCarePathway
GO
/****** Object:  StoredProcedure [IVR].[usp_CareRecipients_Update]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CareRecipients_Update]
    @CareRecipientJson NVARCHAR(MAX)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @ErrorMessage NVARCHAR(100) = N'';
    DECLARE @NOW DATETIME = GETUTCDATE();

    DECLARE @O_RID BIGINT,
            @O_IsProfileComplete BIT,
            @O_PhotoUrl NVARCHAR(255),
            @O_Language NVARCHAR(255),
            @O_Timezone NVARCHAR(50),
            @O_ZipCode NVARCHAR(10),
            @O_DTUTC_Modified DATETIME,
            @O_StartDate DATETIME,
            @O_EMRSystemName NVARCHAR(255),
            @O_MRN NVARCHAR(255),
            @O_ExternalId NVARCHAR(255);

    DECLARE @Rid BIGINT,
            @IsProfileComplete BIT,
            @HasChangedIsProfileComplete BIT,
            @Language NVARCHAR(100),
            @HasChangedLanguage BIT,
            @Timezone NVARCHAR(100),
            @HasChangedTimezone BIT,
            @ZipCode NVARCHAR(20),
            @HasChangedZipCode BIT,
            @PropBag NVARCHAR(MAX),
            @HasChangedPropBag BIT,
            @Mrn NVARCHAR(100),
            @HasChangedMrn BIT,
            @PhotoUrl NVARCHAR(200),
            @HasChangedPhotoUrl BIT,
            @StartDate DATETIME,
            @EmrSystemName NVARCHAR(100),
            @HasChangedEmrSystemName BIT,
            @ExternalId NVARCHAR(100),
            @HasChangedExternalId BIT;

    -- Read Json
    SELECT 
        @Rid = Rid,
        @IsProfileComplete = IsProfileComplete,
        @HasChangedIsProfileComplete = HasChangedIsProfileComplete,
        @Language = Language,
        @HasChangedLanguage = HasChangedLanguage,
        @Timezone = Timezone,
        @HasChangedTimezone = HasChangedTimezone,
        @ZipCode = ZipCode,
        @HasChangedZipCode = HasChangedZipCode,
        @PropBag = PropBag,
        @HasChangedPropBag = HasChangedPropBag,
        @Mrn = Mrn,
        @HasChangedMrn = HasChangedMrn,
        @PhotoUrl = PhotoUrl,
        @HasChangedPhotoUrl = HasChangedPhotoUrl,
        @StartDate = StartDate,
        @EmrSystemName = EmrSystemName,
        @HasChangedEmrSystemName = HasChangedEmrSystemName,
        @ExternalId = ExternalId,
        @HasChangedExternalId = HasChangedExternalId
    FROM OPENJSON(@CareRecipientJson)
    WITH (
        Rid BIGINT,
        IsProfileComplete BIT,
        HasChangedIsProfileComplete BIT,
        Language NVARCHAR(100),
        HasChangedLanguage BIT,
        Timezone NVARCHAR(100),
        HasChangedTimezone BIT,
        ZipCode NVARCHAR(20),
        HasChangedZipCode BIT,
        PropBag NVARCHAR(MAX) AS JSON,
        HasChangedPropBag BIT,
        Mrn NVARCHAR(100),
        HasChangedMrn BIT,
        PhotoUrl NVARCHAR(200),
        HasChangedPhotoUrl BIT,
        StartDate DATETIME,
        EmrSystemName NVARCHAR(100),
        HasChangedEmrSystemName BIT,
        ExternalId NVARCHAR(100),
        HasChangedExternalId BIT
    );

    IF (@HasChangedIsProfileComplete = 0
        AND @HasChangedPhotoUrl = 0
        AND @HasChangedLanguage = 0
        AND @HasChangedTimezone = 0
        AND @HasChangedZipCode = 0
        AND @HasChangedEMRSystemName = 0
        AND @HasChangedMRN = 0
        AND @HasChangedExternalId = 0)
        RETURN 0;

    SELECT @O_RID = [RID],
           @O_IsProfileComplete = [IsProfileComplete],
           @O_PhotoUrl = [PhotoUrl],
           @O_Language = [Language],
           @O_Timezone = [Timezone],
           @O_ZipCode = [ZipCode],
           @O_DTUTC_Modified = LastModifiedOn,
           @O_StartDate = [StartDate],
           @O_EMRSystemName = [EMRSystemName],
           @O_MRN = [MRN],
           @O_ExternalId = [ExternalId]
    FROM [main].[CareRecipients] WITH (NOLOCK)
    WHERE RID = @RID;

    -- IF record does not exist, there is nothing to update
    IF (@O_RID IS NULL)
        RETURN 0;

    DECLARE @IsWithinTran BIT = CASE WHEN @@TRANCOUNT > 0 THEN 1 ELSE 0 END;

    IF (@IsWithinTran = 0)
        BEGIN TRAN;

    BEGIN TRY
        UPDATE [main].[CareRecipients]
        SET IsProfileComplete = CASE WHEN @HasChangedIsProfileComplete = 1 THEN @IsProfileComplete ELSE @O_IsProfileComplete END,
            [Language] = CASE WHEN @HasChangedLanguage = 1 THEN @Language ELSE @O_Language END,
            [Timezone] = CASE WHEN @HasChangedTimezone = 1 THEN @Timezone ELSE @O_Timezone END,
            [ZipCode] = CASE WHEN @HasChangedZipCode = 1 THEN @ZipCode ELSE @O_ZipCode END,
            PhotoUrl = CASE WHEN @HasChangedPhotoUrl = 1 THEN @PhotoUrl ELSE @O_PhotoUrl END,
            LastModifiedOn = @NOW,
            StartDate = CASE WHEN @StartDate IS NOT NULL THEN @StartDate ELSE @O_StartDate END,
            EMRSystemName = CASE WHEN @HasChangedEMRSystemName = 1 THEN @EMRSystemName ELSE @O_EMRSystemName END,
            MRN = CASE WHEN @HasChangedMRN = 1 THEN @MRN ELSE @O_MRN END,
            ExternalId = CASE WHEN @HasChangedExternalId = 1 THEN @ExternalId ELSE @O_ExternalId END
        WHERE RID = @RID;

        IF (@IsWithinTran = 0)
            COMMIT TRAN;
        RETURN 0;
    END TRY
    BEGIN CATCH
        SET @ErrorMessage = ERROR_MESSAGE();
        IF (@IsWithinTran = 0)
            ROLLBACK TRAN;
        RETURN -99;
    END CATCH
END

/*==================Test script==================
-- Sample JSON input for testing
DECLARE @CareRecipientJson NVARCHAR(MAX) = N'
{
    "Rid": 1,
    "IsProfileComplete": 1,
    "HasChangedIsProfileComplete": 1,
    "Language": "en-US",
    "HasChangedLanguage": 1,
    "Timezone": "UTC",
    "HasChangedTimezone": 1,
    "ZipCode": "12345",
    "HasChangedZipCode": 1,
    "PropBag": "{}",
    "HasChangedPropBag": 0,
    "Mrn": "MRN123",
    "HasChangedMrn": 1,
    "PhotoUrl": "http://example.com/photo.jpg",
    "HasChangedPhotoUrl": 1,
    "StartDate": "2023-01-01T00:00:00Z",
    "EmrSystemName": "EMR System",
    "HasChangedEmrSystemName": 1,
    "ExternalId": "EXT123",
    "HasChangedExternalId": 1
}';

-- Execute the stored procedure with the sample JSON input
EXEC [IVR].[usp_CareRecipients_Update] @CareRecipientJson;
*/
GO
/****** Object:  StoredProcedure [IVR].[usp_CareRecordings_GetQuestionAnswerRecordingsByCarePathway]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*
Migrated from [IVR].[usp_CareRecordings_GetQuestionAnswerRecordingsByQuestionBlock]
*/
CREATE PROCEDURE [IVR].[usp_CareRecordings_GetQuestionAnswerRecordingsByCarePathway]
    @CarePathwayId BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    -- Recursive Common Table Expression (CTE) to get SubQuestions
    WITH SubQuestions (QuestionId, ParentId) AS
    (
        -- Initial anchor member
        SELECT 
            q.Id AS QuestionId, 
            q.Id AS ParentId
        FROM 
            [main].[Question] q
        INNER JOIN 
            [main].[CarePathwayQuestions] cpq 
            ON q.Id = cpq.QuestionId
        WHERE 
            cpq.CarePathwayID = @CarePathwayId
        
        UNION ALL
        
        -- Recursive member
        SELECT 
            q.Id AS QuestionId, 
            qa.QuestionID AS ParentId
        FROM 
            [main].[Question] q
        INNER JOIN 
            [main].[QuestionAnswers] qa 
            ON qa.NextID = q.Id
        INNER JOIN 
            SubQuestions sq 
            ON qa.QuestionID = sq.QuestionId
    )

    -- Final select to retrieve results
    SELECT 
        qar.QuestionAnswerID AS QuestionId, 
        cr.*, 
        p.PromptUrl AS AudioUrl, 
        qar.QuestionRecordingTypeID
    FROM 
        [main].[QuestionAnswerCareRecordings] qar
    INNER JOIN 
        [main].[CareRecordings] cr 
        ON qar.CareRecordingId = cr.Id
    INNER JOIN 
        [main].[Prompts] p 
        ON cr.PromptId = p.Id 
        AND cr.LanguageId = p.LanguageId
    WHERE 
        qar.QuestionAnswerID IN (
            SELECT DISTINCT qa.Id 
            FROM SubQuestions sq
            LEFT JOIN [main].[QuestionAnswers] qa 
            ON qa.QuestionID = sq.QuestionId
        );
END
GO
/****** Object:  StoredProcedure [IVR].[usp_CareRecordings_GetQuestionAnswerRecordingsByCarePlan]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CareRecordings_GetQuestionAnswerRecordingsByCarePlan]
    @CarePlanId BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    -- Recursive Common Table Expression (CTE) to get SubQuestions
    WITH SubQuestions (QuestionId, ParentId) AS
    (
        -- Initial anchor member
        SELECT 
            cq.Id AS QuestionId, 
            cq.Id AS ParentId
        FROM 
            [main].[Question] cq
        INNER JOIN 
            [main].[CarePlanQuestions] flq 
            ON cq.Id = flq.QuestionId
        WHERE 
            flq.CarePlanId = @CarePlanId
        
        UNION ALL
        
        -- Recursive member
        SELECT 
            cq.Id AS QuestionId, 
            cqa.QuestionID AS ParentId
        FROM 
            [main].[Question] cq
        INNER JOIN 
            [main].[QuestionAnswers] cqa 
            ON cqa.NextID = cq.Id
        INNER JOIN 
            SubQuestions sq 
            ON cqa.QuestionID = sq.QuestionId
    )

    -- Select statement to get Question Answer Recordings
    SELECT 
        CQR.QuestionAnswerID AS QuestionId,
        CR.*,
        P.PromptUrl AS AudioUrl,
        CQR.QuestionRecordingTypeID
    FROM 
        [main].[QuestionAnswerCareRecordings] CQR
    INNER JOIN 
        [main].[CareRecordings] CR 
        ON CQR.CareRecordingId = CR.Id
    INNER JOIN 
        [main].[Prompts] P 
        ON CR.PromptId = P.Id AND CR.LanguageId = P.LanguageId
    WHERE 
        QuestionAnswerID IN (
            SELECT DISTINCT 
                cqa.ID 
            FROM 
                SubQuestions sq
            LEFT JOIN 
                [main].[QuestionAnswers] cqa 
                ON cqa.QuestionID = sq.QuestionId
        )

END
GO
/****** Object:  StoredProcedure [IVR].[usp_CareRecordings_GetQuestionRecordingsByCarePathway]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CareRecordings_GetQuestionRecordingsByCarePathway]
    @CarePathwayId BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    -- Recursive Common Table Expression (CTE) to get SubQuestions
    WITH SubQuestions (QuestionId, ParentId) AS
    (
        -- Initial anchor member
        SELECT 
            cq.Id AS QuestionId, 
            cq.Id AS ParentId
        FROM 
            [main].[Question] cq
        INNER JOIN 
            [main].[CarePathwayQuestions] QBQ 
            ON cq.Id = QBQ.QuestionId
        WHERE 
            QBQ.CarePathwayID = @CarePathwayId 
        
        UNION ALL
        
        -- Recursive member
        SELECT 
            cq.Id AS QuestionId, 
            cqa.QuestionId AS ParentId
        FROM 
            [main].[Question] cq
        INNER JOIN 
            [main].[QuestionAnswers] cqa 
            ON cqa.NextID = cq.Id
        INNER JOIN 
            SubQuestions sq 
            ON cqa.QuestionID = sq.QuestionId
    )

    -- Final select to retrieve results
    SELECT 
        CQR.QuestionId AS QuestionId, 
        CR.*, 
        P.PromptUrl AS AudioUrl, 
        CQR.QuestionRecordingTypeID 
    FROM 
        [main].[QuestionCareRecordings] CQR
    INNER JOIN 
        [main].[CareRecordings] CR 
        ON CQR.CareRecordingId = CR.Id
    INNER JOIN 
        [main].[Prompts] P 
        ON CR.PromptId = P.Id 
        AND CR.LanguageId = P.LanguageId
    WHERE 
        CQR.QuestionId IN (
            SELECT DISTINCT QuestionId 
            FROM SubQuestions sq
        );
END
GO
/****** Object:  StoredProcedure [IVR].[usp_CareRecordings_GetQuestionRecordingsByCarePlan]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CareRecordings_GetQuestionRecordingsByCarePlan]
    @CarePlanId BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    -- Recursive Common Table Expression (CTE) to get SubQuestions
    WITH SubQuestions (QuestionId, ParentId) AS
    (
        -- Initial anchor member
        SELECT cq.Id AS QuestionId, cq.Id AS ParentId
        FROM [main].[Question] cq
        INNER JOIN [main].[CarePlanQuestions] flq
            ON cq.Id = flq.QuestionId
        WHERE flq.CarePlanID = @CarePlanId
        
        UNION ALL
        
        -- Recursive member
        SELECT cq.Id AS QuestionId, cqa.QuestionID AS ParentId
        FROM [main].[Question] cq
        INNER JOIN [main].[QuestionAnswers] cqa
            ON cqa.NextID = cq.Id
        INNER JOIN SubQuestions sq
            ON cqa.QuestionID = sq.QuestionId
    )

    -- Select statement to get Question Recordings
    SELECT 
        CQR.QuestionID AS QuestionId,
        CR.*,
        P.PromptUrl AS AudioUrl,
        CQR.QuestionRecordingTypeID
    FROM 
        [main].[QuestionCareRecordings] CQR
    INNER JOIN [main].[CareRecordings] CR
        ON CQR.CareRecordingId = CR.Id
    INNER JOIN [main].[Prompts] P
        ON CR.PromptId = P.Id AND CR.LanguageId = P.LanguageId
    WHERE 
        QuestionID IN (SELECT DISTINCT QuestionId FROM SubQuestions)
END
GO
/****** Object:  StoredProcedure [IVR].[usp_CareRules_GetQuestionRulesByCarePathway]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CareRules_GetQuestionRulesByCarePathway]
    @CarePathwayId BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    -- Recursive Common Table Expression (CTE) to get SubQuestions
    WITH SubQuestions (QuestionId, ParentId) AS
    (
        -- Initial anchor member
        SELECT 
            cq.Id AS QuestionId, 
            cq.Id AS ParentId
        FROM 
            [main].[Question] cq
        INNER JOIN 
            [main].[CarePathwayQuestions] cpq 
            ON cq.Id = cpq.QuestionId
        WHERE 
            cpq.CarePathwayID = @CarePathwayId 
        
        UNION ALL
        
        -- Recursive member
        SELECT 
            cq.Id AS QuestionId, 
            cqa.QuestionId AS ParentId
        FROM 
            [main].[Question] cq
        INNER JOIN 
            [main].[QuestionAnswers] cqa 
            ON cqa.NextID = cq.Id
        INNER JOIN 
            SubQuestions sq 
            ON cqa.QuestionID = sq.QuestionId
    )

    -- Final select to retrieve results
    SELECT 
        cqr.QuestionId AS QuestionId, 
        cr.Id AS CareRuleId, 
        cr.CareRule
    FROM 
        [main].[QuestionCareRules] cqr
    INNER JOIN 
        [main].[CareRules] cr 
        ON cqr.CareRuleId = cr.Id
    WHERE 
        cqr.QuestionId IN (
            SELECT DISTINCT sq.QuestionId 
            FROM SubQuestions sq
        );
END
GO
/****** Object:  StoredProcedure [IVR].[usp_CareRules_GetQuestionRulesByCarePlan]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CareRules_GetQuestionRulesByCarePlan]
    @CarePlanId BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    -- Recursive Common Table Expression (CTE) to get SubQuestions
    WITH SubQuestions (QuestionId, ParentId) AS
    (
        -- Initial anchor member
        SELECT 
            cq.Id AS QuestionId, 
            cq.Id AS ParentId
        FROM 
            [main].[Question] cq
        INNER JOIN 
            [main].[CarePlanQuestions] flq 
            ON cq.Id = flq.QuestionId
        WHERE 
            flq.CarePlanID = @CarePlanId
        
        UNION ALL
        
        -- Recursive member
        SELECT 
            cq.Id AS QuestionId, 
            cqa.QuestionID AS ParentId
        FROM 
            [main].[Question] cq
        INNER JOIN 
            [main].[QuestionAnswers] cqa 
            ON cqa.NextID = cq.Id
        INNER JOIN 
            SubQuestions sq 
            ON cqa.QuestionID = sq.QuestionId
    )

    -- Select statement to get Question Rules
    SELECT 
        CQR.QuestionId AS QuestionId,
        CR.Id AS CareRuleId,
        CR.CareRule
    FROM 
        [main].[QuestionCareRules] CQR
    INNER JOIN 
        [main].[CareRules] CR 
        ON CQR.CareRuleId = CR.Id
    WHERE 
        QuestionId IN (
            SELECT DISTINCT 
                QuestionId 
            FROM 
                SubQuestions
        )

END
GO
/****** Object:  StoredProcedure [IVR].[usp_CareRules_GetQuestionRulesByCarePlanV2]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CareRules_GetQuestionRulesByCarePlanV2] -- [IVR].[usp_CareRules_GetQuestionRulesByCustomFlow]   
@CarePlanId bigint  
AS  
 BEGIN  
        SET NOCOUNT ON;  
  
  WITH SubQuestions (QuestionId,ParentId)  
  AS  
  (   
   SELECT cq.Id as QuestionId, cq.Id as ParentId  
   FROM main.Question cq  
   inner join main.CarePlanQuestions flq on cq.Id = (CASE WHEN     (isnumeric(flq.QuestionId) = 1)   THEN    CAST(flq.QuestionId AS bigint)  ELSE    0  END)  
   where flq.CarePlanID = @CarePlanId AND flq.IsCustomQuestion=1  
   UNION ALL  
   SELECT  cq.Id as QuestionId,cqa.QuestionID as ParentId  
   FROM main.Question cq  
   INNER JOIN main.QuestionAnswers AS cqa on cqa.NextID=cq.Id  
   INNER JOIN SubQuestions AS sq  
    ON cqa.QuestionID = sq.QuestionId  
  )  
  SELECT CQR.QuestionID AS CqrId ,CR.id AS CareRuleId,CR.CareRule 
  FROM main.QuestionCareRules CQR  
  INNER JOIN main.CareRules CR on CQR.CareRuleId = CR.Id  
  WHERE QuestionID IN (  
   select distinct QuestionId From SubQuestions sq  
  )  
  
    END
GO
/****** Object:  StoredProcedure [IVR].[usp_CareRules_GetQuestionRulesByRecipient]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_CareRules_GetQuestionRulesByRecipient] -- usp_CareRules_GetQuestionRulesByRecipient  
@RecipientId bigint  
AS  
 BEGIN  
        SET NOCOUNT ON;  
  
    CREATE TABLE #RecipientCarePathway (
    RecipientId BIGINT PRIMARY KEY,
    CarePathwayId BIGINT,
    Order1 tinyint 
	);

  WITH SubQuestions (QuestionId,ParentId)  
  AS  
  (   
   SELECT cq.Id as QuestionId, cq.Id as ParentId  
   FROM main.Question cq  
   inner join main.CarePathwayQuestions QBQ on cq.Id = (CASE WHEN (isnumeric(QBQ.QuestionID) = 1)   THEN    CAST(QBQ.QuestionID AS bigint)  ELSE    0  END)  
   join #RecipientCarePathway RCQB on QBQ.CarePathwayID=RCQB.CarePathwayId
   WHERE RCQB.RecipientId = @RecipientId AND QBQ.IsCustomQuestion = 1  
   UNION ALL  
   SELECT  cq.Id as QuestionId,cqa.QuestionID as ParentId  
   FROM main.Question cq  
   INNER JOIN main.QuestionAnswers AS cqa on cqa.NextID=cq.Id  
   INNER JOIN SubQuestions AS sq  
    ON cqa.QuestionID = sq.QuestionId  
  )  
  SELECT CQR.QuestionID AS CqrId ,CR.Id as CareRuleId,CR.CareRule 
  FROM   main.QuestionCareRules CQR  
  INNER JOIN main.CareRules CR on CQR.CareRuleId = CR.Id  
  WHERE QuestionID IN (  
   select distinct QuestionId From SubQuestions sq  
  )  
  
    END
GO
/****** Object:  StoredProcedure [IVR].[usp_Clients_List]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_Clients_List]  
      
AS  
BEGIN  
   SELECT  *   
   FROM ivr.Clients  
END
GO
/****** Object:  StoredProcedure [IVR].[usp_Get_CarePlan_Questions_By_CarePathway_Id]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-22-2024
-- Description: Get care plan questions by care pathway ID
-- =============================================
CREATE PROCEDURE [IVR].[usp_Get_CarePlan_Questions_By_CarePathway_Id] (
  -- Add the parameters for the stored procedure here
  @carePathwayID BIGINT, 
  @isCustomQuestion BIT = 1, 
  @alertTypeID INT = 1, 
  @frequency INT = 1
) AS BEGIN -- SET NOCOUNT ON added to prevent extra result sets from
-- interfering with SELECT statements.
SET 
  NOCOUNT ON;
-- Insert statements for procedure here
WITH SubQuestions (
  QuestionId, ParentId, QuestionTypeID, 
  VitalTypeId, TextId, SampleId, IsPublic, 
  QuestionCategory, [Order], Grammar, 
  DisableReaction, DisableInstruction, 
  QuestionHangUp, InstructionMode, 
  MinDigits, MaxDigits, Decimals, Wait, 
  LanguageId, ReadNumberAs, Frequency, 
  QuestionChannel, CheckOut, RepeatAfterAttemps
) AS (
  (
    SELECT 
      cq.Id AS QuestionId, 
      cq.Id AS ParentId, 
      cq.QuestionTypeID, 
      cq.VitalTypeId, 
      cq.PromptID AS TextId, 
      cq.[Sample] AS SampleId, 
      cq.IsPublic, 
      cq.QuestionCategory, 
      QBQ.QuestionOrder, 
      cq.Grammar, 
      cq.DisableReaction, 
      cq.DisableInstruction, 
      cq.QuestionHangUp, 
      cq.InstructionMode, 
      cq.MinDigits, 
      cq.MaxDigits, 
      cq.Decimals, 
      cq.Wait, 
      cq.LanguageId, 
      cq.ReadNumberAs, 
      cq.Frequency, 
      cq.QuestionChannel, 
      cq.CheckOut, 
      cq.RepeatAfterAttemps 
    FROM 
      [Main].[Question] cq 
      INNER JOIN [Main].[CarePathwayQuestions] QBQ ON cq.Id = QBQ.QuestionId 
    WHERE 
      QBQ.CarePathwayID = @carePathwayID 
      AND QBQ.IsCustomQuestion = @isCustomQuestion
  ) 
  UNION ALL 
  SELECT 
    cq.Id AS QuestionId, 
    cqa.QuestionId AS ParentId, 
    cq.QuestionTypeID, 
    cq.VitalTypeId, 
    cq.PromptID AS TextId, 
    cq.[Sample] AS SampleId, 
    cq.IsPublic, 
    cq.QuestionCategory, 
    sq.[Order], 
    cq.Grammar, 
    cq.DisableReaction, 
    cq.DisableInstruction, 
    cq.QuestionHangUp, 
    cq.InstructionMode, 
    cq.MinDigits, 
    cq.MaxDigits, 
    cq.Decimals, 
    cq.Wait, 
    cq.LanguageId, 
    cq.ReadNumberAs, 
    cq.Frequency, 
    cq.QuestionChannel, 
    cq.CheckOut, 
    cq.RepeatAfterAttemps 
  FROM 
    [Main].[Question] cq 
    INNER JOIN [Main].[QuestionAnswers] AS cqa ON cqa.NextID = cq.Id 
    INNER JOIN SubQuestions AS sq ON cqa.QuestionId = sq.QuestionId
) 
SELECT 
  distinct sq.*, 
  cqa.Id, 
  cqa.ReadingLevel, 
  cqa.TriggerAlert, 
  cqa.[NextID], 
  o.Options, 
  o.OptionWeb, 
  o.OptionSms, 
  cqa.[From], 
  cqa.[To], 
  p.PromptContent, 
  cqa.[OptionID] AS OptionId, 
  p.[AudioDescription], 
  p.PromptUrl, 
  [Order], 
  cqa.Action, 
  cqa.DisableAnswerReaction, 
  cqa.[Sample] AS AnswerSampleId, 
  a.content AS SummaryText, 
  a.DescriptionUrl AS SummaryUrl, 
  p.[PromptContentWeb], 
  p.[PromptContentSms], 
  [cqa].[TriggerFaxAlert] AS 'TriggerFaxAlert', 
  cqa.[Value] AS 'Value', 
  sq.RepeatAfterAttemps 
FROM 
  SubQuestions sq 
  LEFT JOIN [Main].[QuestionAnswers] cqa ON cqa.QuestionId = sq.QuestionId 
  LEFT JOIN [Main].[Prompts] p ON p.Id = sq.TextId 
  AND p.LanguageId = sq.LanguageId 
  LEFT JOIN [Main].[Options] o ON o.Id = cqa.OptionID 
  AND o.LanguageId = sq.LanguageId 
  LEFT JOIN [Main].[Alerts] a ON a.VitalTypeID = sq.VitalTypeId 
  AND a.Frequency = @frequency 
  AND a.AlertType = @alertTypeID 
  AND a.LanguageId = sq.LanguageId 
  AND sq.QuestionId = a.QuestionId 
  
  END
GO
/****** Object:  StoredProcedure [IVR].[usp_Get_CarePlan_Questions_By_CarePlanId]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-22-2024
-- Description: Get care plan questions by care plan ID
-- =============================================
CREATE PROCEDURE [IVR].[usp_Get_CarePlan_Questions_By_CarePlanId]
(
    -- Add the parameters for the stored procedure here
     @carePlanId BIGINT
	,@isCustomQuestion BIT = 1
	,@numericResult INT = 1
	,@alertTypeID INT = 1
	,@frequency INT = 1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
	WITH SubQuestions (QuestionId,ParentId,QuestionTypeID,VitalTypeId,TextId,SampleId,IsPublic,QuestionCategory,QuestionHangUp,InstructionMode,MinDigits,MaxDigits,Decimals,Wait,LanguageId,ReadNumberAs,Frequency,QuestionChannel,CheckOut, Whisper, RepeatAfterAttemps,BargeIn)
	AS
		(   (SELECT cq.Id AS  QuestionId, cq.Id AS  ParentId,cq.QuestionTypeID,cq.VitalTypeId,cq.PromptID AS  TextId,cq.[Sample] AS  SampleId,cq.IsPublic,cq.QuestionCategory,cq.QuestionHangUp,cq.InstructionMode,cq.MinDigits,cq.MaxDigits,cq.Decimals,cq.Wait,cq.LanguageId,cq.ReadNumberAs,cq.Frequency,cq.QuestionChannel,cq.CheckOut, cq.Whisper, cq.RepeatAfterAttemps, cq.BargeIn
			FROM [Main].[Question] AS cq
			INNER JOIN [Main].[CarePlanQuestions] flq ON cq.Id = flq.QuestionId
			WHERE flq.CarePlanID = @carePlanId AND flq.IsCustomQuestion = @isCustomQuestion 
		UNION  
			SELECT cq.Id AS  QuestionId, cq.Id AS  ParentId,cq.QuestionTypeID,cq.VitalTypeId,cq.PromptID AS  TextId,cq.Sample AS  SampleId,cq.IsPublic,cq.QuestionCategory,cq.QuestionHangUp,cq.InstructionMode,cq.MinDigits,cq.MaxDigits,cq.Decimals,cq.Wait,cq.LanguageId,cq.ReadNumberAs,cq.Frequency,cq.QuestionChannel,cq.CheckOut, cq.Whisper, cq.RepeatAfterAttemps, cq.BargeIn
			FROM [Main].[Question] AS cq
			INNER JOIN [Main].[CarePathwayQuestions] AS QBQ ON cq.Id = QBQ.QuestionId
			INNER JOIN [Main].[CarePlanQuestions] AS flq ON cq.Id = flq.QuestionId
			WHERE flq.CarePlanID = @carePlanId AND flq.IsCustomQuestion = @isCustomQuestion AND QBQ.IsCustomQuestion = @isCustomQuestion)
		UNION ALL
			SELECT  cq.Id AS  QuestionId,cqa.QuestionId AS  ParentId,cq.QuestionTypeID,cq.VitalTypeId,cq.PromptID AS  TextId,cq.[Sample] AS  SampleId,cq.IsPublic,cq.QuestionCategory,cq.QuestionHangUp,cq.InstructionMode,cq.MinDigits,cq.MaxDigits,cq.Decimals,cq.Wait,cq.LanguageId,cq.ReadNumberAs,cq.Frequency,cq.QuestionChannel,cq.CheckOut, cq.Whisper, cq.RepeatAfterAttemps, cq.BargeIn
			FROM [Main].[Question] AS cq
			INNER JOIN [Main].[QuestionAnswers] AS cqa ON cqa.NextId =cq.Id
			INNER JOIN SubQuestions AS sq
				ON cqa.QuestionId = sq.QuestionId
	)

	SELECT sq.*,cqa.Id,cqa.ReadingLevel,cqa.TriggerAlert,cqa.[NextId],o.Options,o.OptionWeb,o.OptionSms,cqa.[From],cqa.[To],p.PromptContent,cqa.[OptionID] AS  OptionId,p.[AudioDescription],p.PromptUrl, cqa.DisableAnswerReaction,cqa.[Action], cqa.[Sample] AS  AnswerSampleId, a.content AS  SummaryText, a.DescriptionUrl AS  SummaryUrl, p.[PromptContentWeb], p.[PromptContentSms],
		[CQA].[TriggerFaxAlert] AS 'TriggerFaxAlert',cqa.[Value] AS 'Value'
	FROM SubQuestions AS sq
	LEFT JOIN [Main].[QuestionAnswers] cqa ON cqa.QuestionId = sq.QuestionId
	LEFT JOIN [Main].[Prompts] p ON p.Id=sq.TextId AND  p.LanguageId=sq.LanguageId
	LEFT JOIN [Main].[Options] o ON o.Id=cqa.OptionID AND  o.LanguageId=sq.LanguageId
	LEFT JOIN [Main].[Alerts] a ON a.VitalTypeID = sq.VitalTypeId AND a.Frequency = @frequency AND a.AlertType = @alertTypeID AND a.LanguageId = sq.LanguageId AND  sq.QuestionId = a.QuestionId

END
GO
/****** Object:  StoredProcedure [IVR].[usp_Get_CarePlanQuestionPlaceHolder]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [IVR].[usp_Get_CarePlanQuestionPlaceHolder] 
@schedulerId BIGINT,
@questionTypeID INT = 11,
@isCarePlanQuestion BIT = 1
AS 
    BEGIN
        SET NOCOUNT ON;

        SELECT Q.[Id] FROM [Main].[Question] Q 
        INNER JOIN [Main].[CarePlanQuestions] CPQ ON CPQ.QuestionId = Q.Id AND CPQ.IsCustomQuestion = @isCarePlanQuestion
        INNER JOIN [Main].[AutomatedCallsSchedule] ACS ON ACS.[workflowtemplate] = CAST (CPQ.[CarePlanID] AS NVARCHAR) 
		AND ACS.[WeekDay] = CPQ.[WeekDay] AND ACS.[Call] = CPQ.[Call] 
        WHERE ACS.[ID] = @schedulerId AND Q.QuestionTypeID = @questionTypeID
        ORDER BY [QuestionOrder]
    END
GO
/****** Object:  StoredProcedure [IVR].[usp_Get_CarePlanQuestions_Id]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_Get_CarePlanQuestions_Id] 
@schedulerId BIGINT

AS 
BEGIN
        SET NOCOUNT ON;

        SELECT CPQ.[QuestionId] 
        FROM 
            [Main].[CarePlanQuestions] AS CPQ WITH (NOLOCK)
		INNER JOIN 
            [Main].[AutomatedCallsSchedule] AS ACS WITH (NOLOCK) ON ACS.[workflowtemplate] = CAST (CPQ.[CarePlanID] AS NVARCHAR) 
		WHERE [ID] = @schedulerId
        ORDER BY CPQ.[QuestionOrder]
END
GO
/****** Object:  StoredProcedure [IVR].[usp_Get_RecipientCarePathwayQuestionsId]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-21-2024
-- Description: Get recipient CarePathway Questions ID
-- =============================================
CREATE PROCEDURE [IVR].[usp_Get_RecipientCarePathwayQuestionsId]
(
    -- Add the parameters for the stored procedure here
    @schedulerId BIGINT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here

    SELECT CPQ.[QuestionId] FROM  [Main].[AutomatedCallsSchedule] ACS
    INNER JOIN [Main].[CarePathwayQuestions] CPQ 
        ON CPQ.[CarePathwayID] = CPQ.[CarePathwayId]
    WHERE ACS.[ID] = @schedulerId
    ORDER BY CPQ.[CarePathwayID],CPQ.[QuestionOrder]

END
GO
/****** Object:  StoredProcedure [IVR].[usp_GetAlertsByQuestionsIds]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_GetAlertsByQuestionsIds]
(
    @QuestionIds NVARCHAR(MAX)
)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @SQL NVARCHAR(MAX);

    SET @SQL = N'
        SELECT
            a.AlertID,
            a.Content,
            a.VitalTypeID,
            a.AlertType,
            a.LanguageId,
            a.QuestionId,
            a.Frequency,
            a.DescriptionUrl
        FROM 
            main.Alerts a WITH (NOLOCK)
        INNER JOIN 
            STRING_SPLIT(@QuestionIds, '','') s ON a.QuestionId = CAST(s.value AS BIGINT)';

    EXEC sp_executesql @SQL, N'@QuestionIds NVARCHAR(MAX)', @QuestionIds = @QuestionIds;

END
GO
/****** Object:  StoredProcedure [IVR].[usp_GetAll_Instruction_Filtered]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-27-2024
-- Description: Get all instructions by parameters
-- =============================================
CREATE PROCEDURE [IVR].[usp_GetAll_Instruction_Filtered] (
  -- Add the parameters for the stored procedure here
  @languageID INT, 
  @carePlanId VARCHAR(50) = NULL, 
  @overrides NVARCHAR(MAX) = NULL, 
  @isCustomQuestion BIT = 1, 
  @careMenuAttribute INT = 52, 
  @emergecyPathwayAttribute INT = 53, 
  @emptyPrompt INT = 100
) AS BEGIN -- SET NOCOUNT ON added to prevent extra result sets from
-- interfering with SELECT statements.
SET 
  NOCOUNT ON;
-- Insert statements for procedure here
WITH PARTNERATTRIBUTES AS (
  SELECT 
    AttributeValue 
  FROM 
    [Main].[PartnerAttributes] sba 
    INNER JOIN [Main].[CarePlan] cf ON sba.[PartnerId] = cf.[PartnerId] 
  WHERE 
    sba.AttributeTypeID IN (
      @careMenuAttribute, @emergecyPathwayAttribute
    ) 
    AND cf.Id = @carePlanId
), 
CAREPATHWAY AS (
  SELECT 
    sqb.Id 
  FROM 
    [Main].[CarePlan] scf 
    INNER JOIN [Main].[CarePathway] sqb ON scf.PartnerID = sqb.[PartnerId] 
  WHERE 
    scf.Id = @carePlanId
), 
questions (QuestionId, SampleId) AS (
  (
    SELECT 
      cq.Id AS QuestionId, 
      cq.[Sample] AS SampleId 
    FROM 
      [Main].[Question] AS cq 
      INNER JOIN [Main].[CarePlanQuestions] flq ON cq.Id = flq.QuestionId 
    WHERE 
      flq.CarePlanID = @carePlanId 
      AND flq.IsCustomQuestion = @isCustomQuestion 
    UNION 
    SELECT 
      cq.Id AS QuestionId, 
      cq.[Sample] AS SampleId 
    FROM 
      [Main].[Question] cq 
      INNER JOIN [Main].[CarePathwayQuestions] QBQ ON cq.Id = QBQ.CarePathwayID 
      INNER JOIN [Main].[CarePlanQuestions] flq ON cq.Id = flq.QuestionId 
    WHERE 
      flq.CarePlanID = @carePlanId 
      AND flq.IsCustomQuestion = @isCustomQuestion 
      AND QBQ.IsCustomQuestion = @isCustomQuestion 
      /*PathWays*/
    UNION 
    SELECT 
      cq.Id AS QuestionId, 
      cq.[Sample] AS SampleId 
    FROM 
      [Main].[Question] cq 
      INNER JOIN [Main].[CarePathwayQuestions] QBQ ON cq.Id = QBQ.QuestionId 
      INNER JOIN CAREPATHWAY ON CAREPATHWAY.ID = QBQ.CarePathwayID 
      /*Care Menu*/
    UNION 
    SELECT 
      cq.Id AS QuestionId, 
      cq.[Sample] AS SampleId 
    FROM 
      [Main].[Question] cq 
      INNER JOIN [Main].[CarePathwayQuestions] QBQ ON cq.Id = QBQ.QuestionId 
      INNER JOIN PARTNERATTRIBUTES ON QBQ.CarePathwayID = PARTNERATTRIBUTES.AttributeValue
  ) 
  UNION ALL 
  SELECT 
    cq.Id AS QuestionId, 
    cq.[Sample] AS SampleId 
  FROM 
    [Main].[Question] cq 
    INNER JOIN [Main].[QuestionAnswers] AS cqa ON cqa.NextId = cq.Id 
    INNER JOIN questions AS sq ON cqa.QuestionId = sq.QuestionId
) 

SELECT 
  i.[ID], 
  i.[ModeType] as InputMode, 
  i.[WorkflowMode], 
  p.[ID] as PromptId, 
  p.[PromptContent], 
  p.[PromptUrl], 
  p.[DefaultPrompt], 
  p.[PromptContentSms], 
  p.[LastModifiedOn] 
FROM 
  questions sq 
  INNER JOIN [Main].[Instructions] AS i ON sq.SampleId = i.id 
  INNER JOIN [Main].[Prompts] AS p ON i.PromptID = p.ID 
WHERE 
  p.LanguageID = @languageID 
UNION 
SELECT 
  i.[ID], 
  i.[ModeType] as InputMode, 
  i.[WorkflowMode], 
  p.[ID] as PromptId, 
  p.[PromptContent], 
  p.[PromptUrl], 
  p.[DefaultPrompt], 
  p.[PromptContentSms], 
  p.[LastModifiedOn] 
FROM 
  [Main].[Instructions] AS i 
  INNER JOIN [Main].[Prompts] AS p ON i.PromptID = p.ID 
  INNER JOIN (
    SELECT 
      [value] as TextId 
    FROM 
      STRING_SPLIT(@overrides, ',')
  ) sq ON p.id = sq.TextId 
WHERE 
  p.LanguageID = @languageID 
  AND p.id NOT IN (@emptyPrompt) 
UNION 
SELECT 
  i.[ID], 
  i.[ModeType] as InputMode, 
  i.[WorkflowMode], 
  p.[ID] as PromptId, 
  p.[PromptContent], 
  p.[PromptUrl], 
  p.[DefaultPrompt], 
  p.[PromptContentSms], 
  p.[LastModifiedOn] 
FROM 
  [Main].[Instructions] AS i 
  INNER JOIN [IVR].[SystemInstructions] AS si ON i.id = si.InstructionId 
  INNER JOIN [Main].[Prompts] AS p ON i.PromptID = p.ID 
WHERE 
  p.LanguageID = @languageID 
UNION 
SELECT 
  i.[ID], 
  i.[ModeType] as InputMode, 
  i.[WorkflowMode], 
  p.[ID] as PromptId, 
  p.[PromptContent], 
  p.[PromptUrl], 
  p.[DefaultPrompt], 
  p.[PromptContentSms], 
  p.[LastModifiedOn] 
FROM 
  questions AS q 
  INNER JOIN [Main].[QuestionAnswers] cqa ON Q.QuestionId = cqa.QuestionId 
  INNER JOIN [Main].[Instructions] i ON cqa.[Sample] = i.ID 
  INNER JOIN [Main].[Prompts] p ON i.PromptID = p.ID 
WHERE 
  p.LanguageID = @languageID 
  END	
GO
/****** Object:  StoredProcedure [IVR].[usp_GetAll_Options_Filtered]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Esteban Beckett
-- Create Date: 08-27-2024
-- Description: Get all options by parameters
-- =============================================
CREATE PROCEDURE [IVR].[usp_GetAll_Options_Filtered] (
  -- Add the parameters for the stored procedure here
  @languageID INT,
  @carePlanId VARCHAR(50) = NULL,
  @careMenuAttribute INT = 52,
  @emergecyPathwayAttribute INT = 53,
  @speakRepresentativePathwayAttribute INT = 77,
  @isCustomQuestion BIT = 1,
  @careMenuOptionAttribute INT = 54,
  @emergencyProtocolOptionAttribute INT = 55,
  @speakRepresentativeAttribute INT = 76,
  @yesOption INT = 1
) AS
BEGIN
  -- SET NOCOUNT ON added to prevent extra result sets from interfering with SELECT statements.
  SET NOCOUNT ON;

  -- Insert statements for procedure here
  ;WITH CAREMENUEMERGENCYPROTOCOL AS (
    SELECT DISTINCT sba.AttributeValue
    FROM [Main].[PartnerAttributes] AS sba
    INNER JOIN [Main].[CarePlan] cf ON sba.PartnerID = cf.PartnerID
    WHERE sba.AttributeTypeID IN (@careMenuOptionAttribute, @emergencyProtocolOptionAttribute, @speakRepresentativeAttribute)
    AND cf.Id = @carePlanId
  ),
  PARTNERATTRIBUTES AS (
    SELECT AttributeValue
    FROM [Main].[PartnerAttributes] sba
    INNER JOIN [Main].[CarePlan] cf ON sba.[PartnerId] = cf.[PartnerId]
    WHERE sba.AttributeTypeID IN (@careMenuAttribute, @emergecyPathwayAttribute, @speakRepresentativePathwayAttribute)
    AND cf.Id = @carePlanId
  ),
  CAREPATHWAY AS (
    SELECT sqb.ID
    FROM [Main].[CarePlan] scf
    INNER JOIN [Main].[CarePathway] sqb ON scf.PartnerID = sqb.PartnerID
    WHERE scf.ID = @carePlanId
  ),
  questions (QuestionId, TextId) AS (
    (
      SELECT cq.Id AS QuestionId, cq.PromptID AS TextId
      FROM [Main].[Question] cq
      INNER JOIN [Main].[CarePlanQuestions] flq ON cq.Id = flq.QuestionId
      WHERE flq.CarePlanID = @carePlanId
      AND flq.IsCustomQuestion = @isCustomQuestion
      UNION
      SELECT cq.Id AS QuestionId, cq.PromptID AS TextId
      FROM [Main].[Question] cq
      INNER JOIN [Main].[CarePathwayQuestions] QBQ ON cq.Id = QBQ.QuestionId
      INNER JOIN [Main].[CarePlanQuestions] flq ON cq.Id = flq.QuestionId
      WHERE flq.CarePlanID = @carePlanId
      AND flq.IsCustomQuestion = @isCustomQuestion
      AND QBQ.IsCustomQuestion = @isCustomQuestion
      /*PathWay*/
      UNION
      SELECT cq.Id AS QuestionId, cq.PromptID AS TextId
      FROM [Main].[Question] cq
      INNER JOIN [Main].[CarePathwayQuestions] QBQ ON cq.Id = QBQ.QuestionId
      INNER JOIN CAREPATHWAY ON CAREPATHWAY.ID = QBQ.CarePathwayID
      /*Care Menu*/
      UNION
      SELECT cq.Id AS QuestionId, cq.PromptID AS TextId
      FROM [Main].[Question] AS cq
      INNER JOIN [Main].[CarePathwayQuestions] QBQ ON cq.Id = QBQ.QuestionId
      INNER JOIN PARTNERATTRIBUTES ON QBQ.CarePathwayID = PARTNERATTRIBUTES.AttributeValue
    )
    UNION ALL
    SELECT cq.Id AS QuestionId, cq.PromptID AS TextId
    FROM [Main].[Question] AS cq
    INNER JOIN [Main].[QuestionAnswers] AS cqa ON cqa.NextID = cq.Id
    INNER JOIN questions AS sq ON cqa.QuestionID = sq.QuestionId
  ),
  options AS (
    SELECT DISTINCT o.ID
    FROM questions sq
    INNER JOIN [Main].[QuestionAnswers] AS cqa ON cqa.QuestionID = sq.QuestionId
    INNER JOIN [Main].[Options] AS o ON cqa.OptionId = o.ID
    WHERE o.LanguageID = @languageID
  ),
  multipleAnswerOptions AS (
    SELECT (
      SELECT options
      FROM [Main].[Options]
      WHERE id = @yesOption
      AND LanguageID = @languageID
    ) + ',' + o.options AS AnswerOption
    FROM options op
    INNER JOIN [Main].[Options] AS o ON op.id = o.id
    AND o.LanguageID = @languageID
  )

  SELECT
    o.id,
    o.languageId,
    o.Options,
    o.CreatedOn,
    o.LastModifiedOn,
    o.AudioUrl,
    o.optionWeb,
    o.OptionSms
  FROM options op
  INNER JOIN [Main].[Options] AS o ON op.id = o.id
  WHERE o.LanguageID = @languageID
  UNION
  SELECT
    op.id,
    op.languageId,
    op.Options,
    op.CreatedOn,
    op.LastModifiedOn,
    op.AudioUrl,
    op.optionWeb,
    op.OptionSms
  FROM [Main].[Options] op
  INNER JOIN [IVR].[SystemOptions] AS so ON op.id = so.Id
  WHERE op.LanguageID = @languageID
  /*Multiple choice Questions, answers with Yes plus option*/
  UNION
  SELECT
    o.id,
    o.languageId,
    o.Options,
    o.CreatedOn,
    o.LastModifiedOn,
    o.AudioUrl,
    o.optionWeb,
    o.OptionSms
  FROM multipleAnswerOptions op
  INNER JOIN [Main].[Options] AS o ON replace(op.AnswerOption, ' ', '') = replace(o.Options, ' ', '')
  /*Care Menu*/
  UNION
  SELECT
    op.id,
    op.languageId,
    op.Options,
    op.CreatedOn,
    op.LastModifiedOn,
    op.AudioUrl,
    op.optionWeb,
    op.OptionSms
  FROM [Main].[Options] AS op
  INNER JOIN CAREMENUEMERGENCYPROTOCOL ON op.ID = CAREMENUEMERGENCYPROTOCOL.AttributeValue
  WHERE op.LanguageID = @languageID
END
GO
/****** Object:  StoredProcedure [IVR].[usp_GetAll_Prompts_Filtered]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-27-2024
-- Description: Get all prompts by parameters
-- =============================================
CREATE PROCEDURE [IVR].[usp_GetAll_Prompts_Filtered] (
  -- Add the parameters for the stored procedure here
  @languageID INT, 
  @carePlanId VARCHAR(50) = NULL, 
  @overrides NVARCHAR(MAX) = NULL, 
  @careMenuAttribute INT = 52, 
  @emergecyPathwayAttribute INT = 53, 
  @vm_sms_Escalation INT = 69, 
  @isValidJson BIT = 1, 
  @isCustomQuestion BIT = 1
) AS BEGIN -- SET NOCOUNT ON added to prevent extra result sets from
-- interfering with SELECT statements.
SET 
  NOCOUNT ON -- Insert statements for procedure here
  CREATE TABLE #TempOverrides (VALUE INT);

  INSERT INTO #TempOverrides (VALUE)
	SELECT 
	  VALUE 
	FROM 
	  STRING_SPLIT(@overrides, ',');

WITH VMSMSEscalation AS (
	SELECT 
      COALESCE(
        json_value(a.value, '$.promptId'), 
        json_value(a.value, '$.PromptId')
      ) as promptId 
    FROM 
      [Main].[PartnerAttributes] sa WITH(NOLOCK) 
      INNER JOIN [Main].[CarePlan] scf WITH(NOLOCK) ON sa.PartnerID = scf.PartnerID CROSS APPLY OPENJSON(sa.AttributeValue) a 
    WHERE 
      scf.Id = @carePlanId 
      AND sa.AttributeTypeID = @vm_sms_Escalation 
      AND ISJSON(sa.AttributeValue) = @isValidJson),
CareMenuEmergencyPathwayAttributes AS (
  SELECT 
    AttributeValue 
  FROM 
    [Main].[PartnerAttributes] sba WITH(NOLOCK) 
    INNER JOIN [Main].[CarePlan] cf WITH(NOLOCK) ON sba.PartnerID = cf.PartnerID 
  WHERE 
    sba.AttributeTypeID IN (
      @careMenuAttribute, @emergecyPathwayAttribute
    ) 
    AND cf.Id = @carePlanId
), 
CarePathway AS (
  SELECT 
    sqb.ID 
  FROM 
    [Main].[CarePlan] scf WITH(NOLOCK) 
    INNER JOIN [Main].[CarePathway] sqb WITH(NOLOCK) ON scf.PartnerID = sqb.PartnerID 
  WHERE 
    scf.Id = @carePlanId
), 
questions (QuestionId, TextId, SampleId) AS (
  (
    SELECT 
      cq.Id AS QuestionId, 
      cq.PromptID AS TextId, 
      cq.[Sample] AS SampleId 
    FROM 
      [Main].[Question] cq WITH(NOLOCK) 
      INNER JOIN [Main].[CarePlanQuestions] flq WITH(NOLOCK) ON cq.Id = flq.QuestionId 
    WHERE 
      flq.CarePlanID = @carePlanId 
      AND flq.IsCustomQuestion = @isCustomQuestion 
    UNION 
    SELECT 
      cq.Id AS QuestionId, 
      cq.PromptID AS TextId, 
      cq.[Sample] AS SampleId 
    FROM 
      [Main].[Question] cq WITH(NOLOCK) 
      INNER JOIN [Main].[CarePathwayQuestions] QBQ WITH(NOLOCK) ON cq.Id = QBQ.QuestionId 
      INNER JOIN [Main].[CarePlanQuestions] flq WITH(NOLOCK) ON cq.Id = flq.QuestionId 
    WHERE 
      flq.CarePlanID = @carePlanId 
      AND flq.IsCustomQuestion = @isCustomQuestion 
      AND QBQ.IsCustomQuestion = @isCustomQuestion 
      /*PathWay*/
    UNION 
    SELECT 
      cq.Id AS QuestionId, 
      cq.PromptID AS TextId, 
      cq.[Sample] AS SampleId 
    FROM 
      [Main].[Question] cq WITH(NOLOCK) 
      INNER JOIN [Main].[CarePathwayQuestions] QBQ WITH(NOLOCK) ON cq.Id = QBQ.QuestionId 
      INNER JOIN CarePathway ON CarePathway.ID = QBQ.CarePathwayID 
      /*Care Menu*/
    UNION 
    SELECT 
      cq.Id AS QuestionId, 
      cq.PromptID AS TextId, 
      cq.[Sample] AS SampleId 
    FROM 
      [Main].[Question] cq WITH(NOLOCK) 
      INNER JOIN [Main].[CarePathwayQuestions] QBQ WITH(NOLOCK) ON cq.ID = QBQ.QuestionId 
      INNER JOIN CareMenuEmergencyPathwayAttributes ON CareMenuEmergencyPathwayAttributes.AttributeValue = QBQ.ID
  ) 
  UNION ALL 
  SELECT 
    cq.Id AS QuestionId, 
    cq.PromptID AS TextId, 
    cq.[Sample] AS SampleId 
  FROM 
    [Main].[Question] cq WITH(NOLOCK) 
    INNER JOIN [Main].[QuestionAnswers] AS cqa WITH(NOLOCK) ON cqa.NextID = cq.Id 
    INNER JOIN questions AS sq ON cqa.QuestionId = sq.QuestionId
) 
SELECT 
  p.id, 
  p.languageId, 
  p.promptContent, 
  p.CreatedOn, 
  p.LastModifiedOn, 
  p.promptUrl, 
  p.PromptContentWeb, 
  p.AudioDescription, 
  p.defaultPrompt, 
  p.promptContentSms, 
  p.PromptContentforReport 
FROM 
  questions sq 
  INNER JOIN [Main].[Prompts] p WITH(NOLOCK) ON sq.textId = p.ID 
WHERE 
  p.LanguageID = @languageID 
UNION 
SELECT 
  p.id, 
  p.languageId, 
  p.promptContent, 
  p.CreatedOn, 
  p.LastModifiedOn, 
  p.promptUrl, 
  p.PromptContentWeb, 
  p.AudioDescription, 
  p.defaultPrompt, 
  p.promptContentSms, 
  p.PromptContentforReport 
FROM 
  [Main].[Prompts] p WITH(NOLOCK) 
  INNER JOIN [dbo].[SystemPrompts] sp WITH(NOLOCK) ON p.Id = sp.Id 
  AND p.languageId = @languageID 
UNION 
SELECT 
  p.id, 
  p.languageId, 
  p.promptContent, 
  p.CreatedOn, 
  p.LastModifiedOn, 
  p.promptUrl, 
  p.PromptContentWeb, 
  p.AudioDescription, 
  p.defaultPrompt, 
  p.promptContentSms, 
  p.PromptContentforReport 
FROM 
  [Main].[Prompts] p WITH(NOLOCK) 
  INNER JOIN #TempOverrides sp ON p.Id = sp.VALUE AND p.languageId = @languageID
UNION 
SELECT 
  p.id, 
  p.languageId, 
  p.promptContent, 
  p.CreatedOn, 
  p.LastModifiedOn, 
  p.promptUrl, 
  p.PromptContentWeb, 
  p.AudioDescription, 
  p.defaultPrompt, 
  p.promptContentSms, 
  p.PromptContentforReport 
FROM 
  questions q 
  INNER JOIN [Main].[Instructions] i WITH(NOLOCK) ON q.SampleId = i.id 
  INNER JOIN [Main].[Prompts] p WITH(NOLOCK) ON i.promptId = p.id 
  AND p.languageId = @languageID 
UNION 
SELECT 
  p.id, 
  p.languageId, 
  p.promptContent, 
  p.CreatedOn, 
  p.LastModifiedOn, 
  p.promptUrl, 
  p.PromptContentWeb, 
  p.AudioDescription, 
  p.defaultPrompt, 
  p.promptContentSms, 
  p.PromptContentforReport 
FROM 
  questions q 
  INNER JOIN [Main].[QuestionAnswers] cqa WITH(NOLOCK) ON Q.QuestionId = cqa.QuestionId 
  INNER JOIN [Main].[Instructions] i WITH(NOLOCK) ON cqa.[Sample] = i.ID 
  INNER JOIN [Main].[Prompts] p WITH(NOLOCK) ON i.PromptID = p.ID 
WHERE 
  p.LanguageID = @languageID 
UNION 
SELECT 
  p.id, 
  p.languageId, 
  p.promptContent, 
  p.CreatedOn, 
  p.LastModifiedOn, 
  p.promptUrl, 
  p.PromptContentWeb, 
  p.AudioDescription, 
  p.defaultPrompt, 
  p.promptContentSms, 
  p.PromptContentforReport 
FROM 
  [Main].[Prompts] p WITH(NOLOCK) 
  INNER JOIN VMSMSEscalation ON VMSMSEscalation.promptId = P.ID 
  WHERE p.LanguageID = @languageID 
  END 
GO
/****** Object:  StoredProcedure [IVR].[usp_GetAll_Reactions_Filtered]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author: Raul Juarez
-- Create Date: 09-23-2024
-- Description: Get all reactions by parameters
-- =============================================
CREATE PROCEDURE [IVR].[usp_GetAll_Reactions_Filtered] (
  -- Add the parameters for the stored procedure here
  @languageID INT
) AS
BEGIN
SELECT 
  DISTINCT
  p.id AS Id, 
  p.languageId, 
  p.promptContent, 
  p.CreatedOn, 
  p.LastModifiedOn, 
  p.promptUrl, 
  p.PromptContentWeb, 
  p.AudioDescription, 
  p.defaultPrompt, 
  p.promptContentSms, 
  p.PromptContentforReport,
  r.ReactionType
FROM 
  [IVR].[Reactions] AS r WITH(NOLOCK) 
  INNER JOIN [Main].[Prompts] AS p WITH(NOLOCK) ON r.ID = p.ID 
WHERE 
  p.[LanguageID] = @LanguageID

END
GO
/****** Object:  StoredProcedure [IVR].[usp_GetCareRecordingUrl_ByCareRecordingId]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_GetCareRecordingUrl_ByCareRecordingId]
    @id INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @promptId INT;
    DECLARE @languageId INT;
    DECLARE @audioUrl NVARCHAR(MAX);

    -- Retrieve the recording
    SELECT 
        @promptId = PromptId,
        @languageId = LanguageId
    FROM [main].[CareRecordings]
    WHERE [ID] = @id;

    -- Retrieve the audio URL
    SELECT 
        @audioUrl = PromptUrl
    FROM [main].[Prompts]
    WHERE [Id] = @promptId AND [LanguageId] = @languageId;

    -- Return the result
    SELECT @audioUrl AS AudioUrl;
END
GO
/****** Object:  StoredProcedure [IVR].[usp_GetCustomQuestionCarePathwayById]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*

Migration of CAREANGEL.CUSTOMQUESTIONS.CustomQuestionBlockMethods
GetCustomQuestionBlock(long questionBlockId)

*/
CREATE PROCEDURE [IVR].[usp_GetCustomQuestionCarePathwayById]
    @carePathwayId INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        cpq.CarePathwayID, 
        cpq.QuestionID, 
        cpq.QuestionOrder, 
        cpq.IsCustomQuestion 
    FROM 
        [main].[CarePathwayQuestions] cpq
    INNER JOIN 
        [main].[CarePathway] cpw 
        ON cpq.CarePathwayID = cpw.ID
    WHERE 
        cpq.CarePathwayID = @carePathwayId;
END
GO
/****** Object:  StoredProcedure [IVR].[usp_GetPrimaryPhoneByRecipientId]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-05-2024
-- Description: Get Primary Phone by recipient ID
-- =============================================
CREATE PROCEDURE [IVR].[usp_GetPrimaryPhoneByRecipientId]
(
    @recipientId BIGINT
)
AS
BEGIN
    SELECT TOP 1 [PhoneCountryCode] + [PhoneNumber] as PhoneNumber FROM [main].[Phones]
    INNER JOIN [main].[PersonPhones] ON [ID] = [PhoneID]
    WHERE [RID] = @recipientId AND [IsValid] = 1
    ORDER BY [IsPrimary] DESC
END
GO
/****** Object:  StoredProcedure [IVR].[usp_GetRecipientGroupNameByRecipientId]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-05-2024
-- Description: Get Recipient Group Name
-- =============================================
CREATE PROCEDURE [IVR].[usp_GetRecipientGroupNameByRecipientId]
(
    @recipientId BIGINT
)
AS
BEGIN

    SELECT TOP 1 PG.[Name] FROM [main].[PartnerGroupEndUsers] SGEU
    INNER JOIN main.PartnerGroup PG ON PG.ID = SGEU.PartnerGroupID
    WHERE  SGEU.[RID] = @recipientId
END
GO
/****** Object:  StoredProcedure [IVR].[usp_GiverAlertsInsert]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_GiverAlertsInsert] 
    @CareGiverID bigint,
    @CreatedOn datetime = NULL,
    @AlertText nvarchar(MAX),
    @AlertType smallint,
    @PropBag xml,
    @ID bigint = 0 output
AS 
BEGIN
    SET NOCOUNT ON;
    SET XACT_ABORT ON;
    
    BEGIN TRANSACTION;
    
    BEGIN TRY
        INSERT INTO [IVR].[GiverAlerts] ([CareGiverID], [CreatedOn], [AlertText], [AlertType], [PropBag])
        VALUES (@CareGiverID, @CreatedOn, @AlertText, @AlertType, @PropBag);
        
        SET @ID = SCOPE_IDENTITY();
        
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
/****** Object:  StoredProcedure [IVR].[usp_Instruction_getPromptId]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_Instruction_getPromptId]
	@ModeType NVARCHAR(80),
	@InstructionId INT,
	@WorkflowMode INT
AS

	SELECT	[PromptID]
    FROM	[main].[Instructions] 
    WHERE	[ModeType] = @ModeType 
		AND [ID] = @InstructionId 
		AND ([WorkflowMode] = @WorkflowMode OR (@WorkflowMode = 2 AND [WorkflowMode] = 1))   -- @WorkflowMode = 2 for Verbose, 1 for Normal
GO
/****** Object:  StoredProcedure [IVR].[usp_LostCalls_InsertOrUpdate]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_LostCalls_InsertOrUpdate]
	@RecipientId bigint,
	@LostCalls int,
    @Pauses int
AS
IF EXISTS (SELECT TOP 1 1 FROM [IVR].[LostCalls] WHERE [RecipientId] = @RecipientId)
    UPDATE [IVR].[LostCalls] SET CountLostCalls = @lostCalls, CountPauses = @pauses WHERE [RecipientId] = @recipientId
ELSE 
    INSERT INTO [IVR].[LostCalls] ([RecipientId], [CountLostCalls], [CountPauses])
    VALUES (@RecipientId, @lostCalls, @pauses)
GO
/****** Object:  StoredProcedure [IVR].[usp_OptumApiCarePlan_Get]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_OptumApiCarePlan_Get] 
AS 
BEGIN

	SELECT [Id]
		  ,[CarePlanId]
		  ,[Type]
		  ,[AssessmentTemplateID],
		  [BuilderAssessmentID],
		  [RunApiOptum]
	  FROM [IVR].[OPTUM_API_CarePlan]

END
GO
/****** Object:  StoredProcedure [IVR].[usp_OptumCTP_GetStatusRecipientCall]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_OptumCTP_GetStatusRecipientCall]
	@WorkflowId bigint
AS
BEGIN
	 SELECT TOP 1 rs.[Status], 
				Case 
					when sc.CurrentStatus like '%no-answer%'   then 'No Answer'  
					else sc.CurrentStatus
				end AS CurrentStatus 
	FROM dbo.RecipientCall rs
	INNER JOIN ivr.StatusCall sc on sc.WorkflowId = rs.WorkflowId
	where  rs.WorkFlowId = @WorkflowId
	ORDER BY sc.CurrentDateTime DESC
END
GO
/****** Object:  StoredProcedure [IVR].[usp_OptumOTH_GetOutcome]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_OptumOTH_GetOutcome] 
    @WorkflowId bigint = NULL
AS
   BEGIN

		--insert into DBO.[RequestCallStatus] (InsertDt,WFID,RecipientCallCurrentStatus,StatucCallCurrentStatus)
		--	select getutcdate(), @WorkflowId, rs.Status, a.CurrentStatus
		--	from IVR.StatusCall a 
		--	left join dbo.RecipientCall rs on rs.WorkFlowId = a.WorkflowId
		--	where a.WorkflowId = @WorkflowId
		--	and CurrentStatus in('busy','failed','no-answer','completed','transfer');

		 SELECT TOP 1 a.*
        FROM (
            -- First subquery
            SELECT 
                OptumOutcome = CASE 
                    WHEN CurrentStatus LIKE '%busy%' THEN 'Busy Signal'
                    WHEN CurrentStatus LIKE '%failed%' THEN 'Invalid #'
                    WHEN CurrentStatus LIKE '%no-answer%' THEN 'No Answer'
                    ELSE 'Successful'
                END,
                EHCallStatus = CASE
                    WHEN CurrentStatus LIKE '%busy%' THEN 11
                    WHEN CurrentStatus LIKE '%failed%' THEN 11
                    WHEN CurrentStatus LIKE '%no-answer%' THEN 11
                    ELSE 0
                END,
                EHOutboundCallStatus = CASE
                    WHEN CurrentStatus LIKE '%transfer%' THEN 'completed'
                    ELSE CurrentStatus
                END,
                EHVitaltypeId = '',
                EHVitalValue = '',
                OrderValue = 1
            FROM IVR.StatusCall a
            WHERE a.WorkflowId = @WorkflowId
              AND CurrentStatus IN ('busy', 'failed', 'no-answer', 'transfer')

            UNION 

            -- Second subquery
            SELECT 
                OptumOutcome = CASE 
                    WHEN rs.Status = 1 AND v.VitalTypeId = 3333 THEN 'Left VM'
                    WHEN rs.Status = 1 THEN 'No Answer/No VM'
                    ELSE 'Hang Up'
                END,
                EHCallStatus = CASE
                    WHEN rs.Status = 1 THEN 1
                    ELSE 6
                END,
                EHOutboundCallStatus = CurrentStatus,
                EHVitaltypeId = '',
                EHVitalValue = '',
                OrderValue = 2
            FROM IVR.StatusCall a
            LEFT JOIN dbo.RecipientCall rs ON rs.WorkFlowId = a.WorkflowId
            LEFT JOIN dbo.RecipientStudy s ON s.WorkFlowId = a.WorkflowId
            JOIN dbo.RecipientStudyVitalReadings v ON s.Id = v.StudyId
            WHERE a.WorkflowId = @WorkflowId
              AND CurrentStatus = 'completed'
        ) AS a
        ORDER BY OrderValue;

	END
GO
/****** Object:  StoredProcedure [IVR].[usp_Partner_CustomQuestionsInCarePathway]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_Partner_CustomQuestionsInCarePathway]
    @CarePathwayId BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    -- Recursive Common Table Expression (CTE) to get SubQuestions
    WITH SubQuestions (
        QuestionId, ParentId, QuestionTypeID, VitalTypeId, TextId, SampleId, IsPublic, 
        QuestionCategory, [Order], Grammar, DisableReaction, DisableInstruction, 
        QuestionHangUp, InstructionMode, MinDigits, MaxDigits, Decimals, Wait, 
        LanguageId, ReadNumberAs, Frequency, QuestionChannel, CheckOut, 
        RepeatAfterAttemps
    ) AS
    (
        -- Initial anchor member
        SELECT 
            cq.Id AS QuestionId, 
            cq.Id AS ParentId, 
            cq.QuestionTypeID, 
            cq.VitalTypeId, 
            cq.PromptID AS TextId, 
            cq.Sample AS SampleId, 
            cq.IsPublic, 
            cq.QuestionCategory, 
            QBQ.QuestionOrder AS [Order], 
            cq.Grammar, 
            cq.DisableReaction, 
            cq.DisableInstruction, 
            cq.QuestionHangUp, 
            cq.InstructionMode, 
            cq.MinDigits, 
            cq.MaxDigits, 
            cq.Decimals, 
            cq.Wait, 
            cq.LanguageId, 
            cq.ReadNumberAs, 
            cq.Frequency, 
            cq.QuestionChannel, 
            cq.CheckOut, 
            cq.RepeatAfterAttemps
        FROM 
            [main].[Question] cq
        INNER JOIN 
            [main].[CarePathwayQuestions] QBQ 
            ON cq.Id = QBQ.QuestionId
        WHERE 
            QBQ.CarePathwayID = @CarePathwayId
        
        UNION ALL
        
        -- Recursive member
        SELECT 
            cq.Id AS QuestionId, 
            cqa.QuestionID AS ParentId, 
            cq.QuestionTypeID, 
            cq.VitalTypeId, 
            cq.PromptID AS TextId, 
            cq.Sample AS SampleId, 
            cq.IsPublic, 
            cq.QuestionCategory, 
            sq.[Order], 
            cq.Grammar, 
            cq.DisableReaction, 
            cq.DisableInstruction, 
            cq.QuestionHangUp, 
            cq.InstructionMode, 
            cq.MinDigits, 
            cq.MaxDigits, 
            cq.Decimals, 
            cq.Wait, 
            cq.LanguageId, 
            cq.ReadNumberAs, 
            cq.Frequency, 
            cq.QuestionChannel, 
            cq.CheckOut, 
            cq.RepeatAfterAttemps
        FROM 
            [main].[Question] cq
        INNER JOIN 
            [main].[QuestionAnswers] cqa 
            ON cqa.NextID = cq.Id
        INNER JOIN 
            SubQuestions sq 
            ON cqa.QuestionID = sq.QuestionId
    )

    -- Final select to retrieve results
    SELECT DISTINCT 
        sq.*, 
        cqa.Id, 
        cqa.ReadingLevel, 
        cqa.TriggerAlert, 
        cqa.[NextID], 
        o.Options, 
        o.OptionWeb, 
        o.OptionSms, 
        cqa.[From], 
        cqa.[To], 
        p.PromptContent, 
        cqa.[OptionId] AS OptionId, 
        p.[AudioDescription], 
        p.PromptUrl, 
        [Order], 
        cqa.Action, 
        cqa.DisableAnswerReaction, 
        cqa.[Sample] AS AnswerSampleId, 
        a.content AS SummaryText, 
        a.DescriptionUrl AS SummaryUrl, 
        p.[PromptContentWeb], 
        p.[PromptContentSms],
        cqa.[TriggerFaxAlert], 
        cqa.[Value], 
        sq.RepeatAfterAttemps
    FROM 
        SubQuestions sq
    LEFT JOIN 
        [main].[QuestionAnswers] cqa 
        ON cqa.QuestionID = sq.QuestionId
    LEFT JOIN 
        [main].[Prompts] p 
        ON p.Id = sq.TextId 
        AND p.LanguageId = sq.LanguageId
    LEFT JOIN 
        [main].[Options] o 
        ON o.Id = cqa.OptionID
        AND o.LanguageId = sq.LanguageId
    LEFT JOIN 
        [main].[Alerts] a 
        ON a.VitalTypeID = sq.VitalTypeId 
        AND a.Frequency = 1 
        AND a.AlertType = 1 
        AND a.LanguageId = sq.LanguageId 
        AND sq.QuestionId = a.QuestionId;
END
GO
/****** Object:  StoredProcedure [IVR].[usp_Partner_EndUsers_Get]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [IVR].[usp_Partner_EndUsers_Get]   
@EndUserID bigint  
AS   
  SELECT top 1  s.RID, s.PartnerID, g.PartnerGroupID, s.PartnerProgramID, s.PartnerInvitationCampaignID, s.[IsActive], s.[PropBag]   
  FROM   main.PartnerEndUsers s  
  LEFT JOIN main.PartnerGroupEndUsers g on g.RID=s.RID 
  WHERE  s.RID = @EndUserID
GO
/****** Object:  StoredProcedure [IVR].[usp_PartnerAttributes_Get]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [IVR].[usp_PartnerAttributes_Get]   
@PartnerID bigint=null
AS   
  
 SELECT PartnerID, AttributeTypeID , [AttributeValue], [IsActive]   
 FROM   main.PartnerAttributes
 WHERE  (PartnerID = @PartnerID) AND [AttributeValue] <> ''
GO
/****** Object:  StoredProcedure [IVR].[usp_PartnerAttributes_GetByCarePlan]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_PartnerAttributes_GetByCarePlan]
	@CarePlanId bigint
AS

SELECT 
    CarePlanID, 
    AttributeTypeID, 
    [AttributeValue], 
    [AttributeDescription] AS Description, 
    [IsActive], 
    CreatedOn, 
    LastModifiedOn, 
    [PropBag]
FROM 
    [main].[CarePlanAttributes]
WHERE 
    (CarePlanID = @CarePlanID) 
    AND [AttributeValue] <> ''
GO
/****** Object:  StoredProcedure [IVR].[usp_PartnerGroupAttributes_Get]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [IVR].[usp_PartnerGroupAttributes_Get]   
 @PartnerGroupID bigint=null  
AS   
  
  SELECT [PartnerGroupID], AttributeTypeID, [AttributeValue], [IsActive]  
  FROM   main.PartnerGroupAttributes   SGA  
 WHERE  (PartnerGroupID = @PartnerGroupID) AND [AttributeValue] <> ''
GO
/****** Object:  StoredProcedure [IVR].[usp_PersonalExternalInfo_Get]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_PersonalExternalInfo_Get]    
     @RID BIGINT = null     
    ,@externalId VARCHAR(40) = null     
    ,@fileuploadId varchar(50) = null    
    ,@partnerId INT = null     
AS    
BEGIN    
    
DECLARE     
    @aux_select VARCHAR(3000) = 'SELECT '    
    ,@aux_from VARCHAR(500) = 'FROM '    
    ,@aux_where VARCHAR(100) = 'WHERE '    
    ,@aux_param NVARCHAR(100) = '@ExternalId VARCHAR(50), @fileuploadId varchar(50)'    
    ,@fields VARCHAR(3000) = ''    
    ,@table VARCHAR(500) = ''    
    ,@conditions VARCHAR(500) = ''    
    ,@query NVARCHAR(4000) = ''    
    ,@isSourceFunction BIT = 0    
    
BEGIN TRY     
    
IF @partnerId IS NULL     
BEGIN     
    
/*Call Function to get partner*/    
SET @partnerId =  (SELECT TOP 1 PartnerID FROM [main].[CareRecipientDemographicsBAK] WHERE ExternalID = @externalId AND RID = @rid)-- ORDER BY creat DESC)    
    
END     
    
SELECT @fields= STRING_AGG(SourceFieldName + ' ' + SourceFieldAlias, ',') FROM FileUpload.PersonalExternalInfo WHERE partnerId = @partnerId AND SourceFieldIsWhereCondition = 0    
SELECT @table = SourcetableName, @conditions = SourceFieldName FROM FileUpload.PersonalExternalInfo WHERE partnerId = @partnerId AND SourceFieldIsWhereCondition = 1    
SELECT distinct @isSourceFunction = isSourceTableNameAFuntion FROM FileUpload.PersonalExternalInfo WHERE partnerId = @partnerId     
    
SET @aux_select = @aux_select + @fields     
SET @aux_from = @aux_from + @table    
SET @aux_where = @aux_where + @conditions    
    
IF @isSourceFunction = 0     
BEGIN     
    SET @query = @aux_select + ' ' + @aux_from + ' ' + @aux_where  END      
ELSE     
BEGIN     
    SET @query = @aux_select + ' ' + @aux_from
END     
    
print @query    
EXEC sp_executesql @query,@aux_param,@externalId = @externalId, @fileuploadid =  @fileuploadId    
    
END TRY     
    
BEGIN CATCH     
    
--SELECT @query    
THROW        
    
END CATCH     
    
END
GO
/****** Object:  StoredProcedure [IVR].[usp_PersonalMessage_getMessageUrl]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_PersonalMessage_getMessageUrl]
	@Id int = 0
AS
	SELECT [MessageUrl] FROM [IVR].[PersonalMessage] WHERE [ID] = @Id
GO
/****** Object:  StoredProcedure [IVR].[usp_PersonInfo_Get]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_PersonInfo_Get]   
@RID BIGINT  
AS  
    BEGIN  
        SET NOCOUNT ON;  
  
        SELECT p.[RID]  
               ,[FName]  
               ,[MName]  
               ,[LName]  
               ,[MaidenName]  
               ,[SingleName]  
               ,[XofYName]  
               ,[Title]  
               ,[Ordinal]  
               ,[Nickname]  
               ,p.[DOB]  
               ,p.[Gender]  
               ,p.[DTUTC_Created]  
               ,p.[DTUTC_Modified]  
               ,p.[PropBag]                
               ,p.[Ordinal] AS Contract  
            FROM main.[PersonInfo] p WITH (NOLOCK)     
              LEFT JOIN main.CareRecipients cr WITH (NOLOCK)   ON cr.RID = p.RID  
      
       
            WHERE p.RID = @RID  
  
    END
GO
/****** Object:  StoredProcedure [IVR].[usp_PersonPhones_InsertOrUpdate]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_PersonPhones_InsertOrUpdate]
	@PhoneNumber nvarchar(16)     
    , @CountryCode bigint
    , @PhoneUsageId nvarchar(10) = null 
    , @IsValid bit
    , @IsPrimary bit
    , @CareRecipientId bigint
AS

DECLARE @PhoneId bigint, @CarrierTypeId bigint
IF OBJECT_ID('tempdb..#PhoneId') IS NULL
BEGIN
    CREATE TABLE #PhoneId (
        Id bigint
    )
END


IF EXISTS (SELECT TOP 1 1 FROM main.Phones WHERE PhoneNumber = @PhoneNumber)
    BEGIN
        SELECT  @PhoneId = p.Id
        FROM    main.Phones p
        WHERE   p.PhoneNumber = @PhoneNumber
    END 
ELSE
    BEGIN  
        SELECT @CarrierTypeId = CarrierTypeID FROM main.[Phones] WHERE [PhoneNumber] = @PhoneNumber OR ([PhoneCountryCode]+[PhoneNumber] = @PhoneNumber)

        INSERT INTO main.Phones (
            PhoneCountryCode
            , PhoneNumber
            , PhoneExtension
            , IsValid
            , CarrierTypeID
            , PropBag)
       OUTPUT Inserted.ID INTO #PhoneId
       VALUES ( 
            @CountryCode
            , @PhoneNumber 
            , null 
            , @IsValid  
            , @CarrierTypeId  
            , '<PropBag />'  
        ) 
        SELECT @PhoneId = Id FROM #PhoneId
    END

IF NOT EXISTS (SELECT TOP 1 1 FROM main.PersonPhones WHERE [RID] = @CareRecipientId AND [PhoneID] = @PhoneId)
    BEGIN
        INSERT INTO main.PersonPhones (RID, PhoneID, PhoneUsageID, IsPrimary, CreatedBy, LastModifiedBy, PropBag)
        VALUES (@CareRecipientId, @PhoneId, @PhoneUsageId, @IsPrimary, GETUTCDATE(), GETUTCDATE(), '<PropBag />')
    END
ELSE 
    BEGIN
        UPDATE main.PersonPhones
        SET IsPrimary = @isPrimary
        WHERE RID = @CareRecipientId AND PhoneID = @phoneId
    END
GO
/****** Object:  StoredProcedure [IVR].[usp_Phone_UpdateToIsNotPrimary]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_Phone_UpdateToIsNotPrimary]
	@CareRecipientId int
AS

UPDATE [main].PersonPhones SET IsPrimary = 0 WHERE RID = @CareRecipientId AND IsPrimary = 1
GO
/****** Object:  StoredProcedure [IVR].[usp_Phones_Get]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_Phones_Get]     
@RID BIGINT      
AS          
BEGIN             
SET NOCOUNT ON;              
SELECT rp.[RID]                    
,rp.[PhoneID]  as ID  
,rp.[PhoneUsageID]    
,rp.[IsPrimary]    
,rp.[PhoneStatusID]    
,p.[PhoneCountryCode]                    
,p.[PhoneNumber]    
,p.[PhoneExtension]                    
,p.[IsValid]    
,p.[CarrierTypeID]                 
FROM [main].PersonPhones rp WITH (NOLOCK)                      
INNER JOIN [main].[Phones] p WITH (NOLOCK) ON rp.PhoneID = p.ID                 
WHERE rp.RID = @RID      
END
GO
/****** Object:  StoredProcedure [IVR].[usp_Phones_GetCarrierType]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_Phones_GetCarrierType]
@PhoneNumber varchar(26)
AS

BEGIN  
SELECT [CarrierTypeID] 
FROM [main].[Phones] 
WHERE [PhoneNumber] = @PhoneNumber 
OR [PhoneCountryCode]+[PhoneNumber] = @PhoneNumber

END
GO
/****** Object:  StoredProcedure [IVR].[usp_Phones_GetOrCreate]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_Phones_GetOrCreate]
    @Phone NVARCHAR(16),     
    @PhoneCountryCode BIGINT,
    @CarrierTypeID BIGINT,
    @PhoneExtension NVARCHAR(10) = NULL, 
    @IsValid BIT
AS
BEGIN
    SET NOCOUNT ON;

    -- Trim input parameters
    SET @PhoneCountryCode = LTRIM(RTRIM(@PhoneCountryCode));
    SET @Phone = LTRIM(RTRIM(@Phone));
    SET @PhoneExtension = LTRIM(RTRIM(@PhoneExtension));

    -- Default PhoneCountryCode to '1' if not provided
    IF (@PhoneCountryCode IS NULL OR @PhoneCountryCode = '') 
        SET @PhoneCountryCode = '1';

    -- Set PhoneExtension to NULL if empty
    IF (@PhoneExtension = '') 
        SET @PhoneExtension = NULL;

    -- Check if the Phone number is already exists
    IF EXISTS (
        SELECT 1
        FROM [main].[Phones] P
        WHERE P.PhoneNumber = @Phone
        AND P.PhoneCountryCode = @PhoneCountryCode
        AND (P.PhoneExtension = @PhoneExtension OR P.PhoneExtension IS NULL AND @PhoneExtension IS NULL)
    )
    BEGIN
        -- Return existing ID
        SELECT P.ID
        FROM [main].[Phones] P
        WHERE P.PhoneNumber = @Phone
        AND P.PhoneCountryCode = @PhoneCountryCode
        AND (P.PhoneExtension = @PhoneExtension OR P.PhoneExtension IS NULL AND @PhoneExtension IS NULL);
    END 
    ELSE
    BEGIN  
        -- Insert new record and return the new ID of Phone
        INSERT INTO [main].[Phones] (
            PhoneCountryCode,
            PhoneNumber,
            PhoneExtension,
            IsValid,
            CreatedOn,
            LastModifiedOn,
            CarrierTypeID,
            PropBag
        )
        OUTPUT Inserted.ID
        VALUES (
            @PhoneCountryCode,
            @Phone,
            @PhoneExtension,
            @IsValid,
            GETUTCDATE(),
            GETUTCDATE(),
            @CarrierTypeID,
            '<PropBag />'
        );
    END
END
GO
/****** Object:  StoredProcedure [IVR].[usp_Phones_Update_CarrierType]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_Phones_Update_CarrierType]  
(  
    @PhoneNumber VARCHAR(16),  
    @CarrierTypeId INT = 0  
)  
AS  
BEGIN  
    SET NOCOUNT ON  
  
    -- Insert statements for procedure here  
 UPDATE [main].[Phones]   
 SET [CarrierTypeId] = @CarrierTypeId  
  ,LastModifiedOn = GETDATE()  
 WHERE [PhoneNumber] = @PhoneNumber OR [PhoneCountryCode]+[PhoneNumber] = @PhoneNumber  
  
END
GO
/****** Object:  StoredProcedure [IVR].[usp_Prompt_GetPromptContent]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_Prompt_GetPromptContent]
    @LanguageId INT,
    @PromptId INT,
    @IsTextToSpeech BIT NULL,
    @IsWebPrompt BIT NULL,
    @IsSmsPrompt BIT NULL
AS
BEGIN
    SELECT  
        Prompt = (CASE 
                     WHEN @IsSmsPrompt = 1 THEN [PromptContentSms]
                     WHEN @IsWebPrompt = 1 THEN [PromptContentWeb]
                     WHEN @IsTextToSpeech = 1 THEN [PromptContent]
                     ELSE ISNULL(NULLIF(PromptUrl, ''), PromptContent) 
                  END),
        Date = CreatedOn    
    FROM [main].[Prompts]
    WHERE [LanguageID] = @LanguageId AND ID = @PromptId;
END
GO
/****** Object:  StoredProcedure [IVR].[usp_Quote_getById]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_Quote_getById]
	@QuoteId int,
	@LanguageId int 
AS
	SELECT [QuoteURL] FROM [IVR].[Quotes] WHERE [QuoteID] = @QuoteId AND [LanguageId] = @LanguageId
GO
/****** Object:  StoredProcedure [IVR].[usp_R_Deactivate_ByRecipientIds]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_R_Deactivate_ByRecipientIds]
	@RecipientIds NVARCHAR(MAX)
    , @DeactivationReasonID INT      
    , @DeactivationMethod VARCHAR(50) = null      
AS
BEGIN
    ;WITH cteRecipientIds AS(
		SELECT value AS RecipientId  FROM STRING_SPLIT(@RecipientIds, ',')
	)
    INSERT INTO [main].[R_Deactivated] (RID, DeactivationReasonID, CreatedOn, DeactivationMethod)     
	SELECT	C.RecipientId			AS CRRID, 
			@DeactivationReasonID	AS DeactivationReasonID,
			GETUTCDATE()			AS CreatedOn,
			@DeactivationMethod		AS DeactivationMethod
	FROM	cteRecipientIds C
END
GO
/****** Object:  StoredProcedure [IVR].[usp_R_Demographic_ActivateByRecipientIds]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_R_Demographic_ActivateByRecipientIds]
	 @RecipientIds NVARCHAR(MAX)
AS
BEGIN
    UPDATE [main].[R]
    SET IsActive = 1
    WHERE CAST(RID AS nvarchar(20)) IN (SELECT Value  FROM STRING_SPLIT(@RecipientIds, ','));

    -- Pending migrate view into 2.0 DB
    --UPDATE [LegacyMain].[CareRecipientDemographics]
    --SET IsActive = 0
    --WHERE CAST(RID AS nvarchar(20)) IN (SELECT Value  FROM STRING_SPLIT(@recipientIds, ','));
END
GO
/****** Object:  StoredProcedure [IVR].[usp_R_Demographic_DeactivateByRecipientIds]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_R_Demographic_DeactivateByRecipientIds]
	 @RecipientIds NVARCHAR(MAX)
AS
BEGIN
    UPDATE [main].[R]
    SET IsActive = 0
    WHERE CAST(RID AS nvarchar(20)) IN (SELECT Value  FROM STRING_SPLIT(@RecipientIds, ','));

    -- Pending migrate view into 2.0 DB
    --UPDATE [LegacyMain].[CareRecipientDemographics]
    --SET IsActive = 0
    --WHERE CAST(RID AS nvarchar(20)) IN (SELECT Value  FROM STRING_SPLIT(@recipientIds, ','));
END
GO
/****** Object:  StoredProcedure [IVR].[usp_Reaction_getByType]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_Reaction_getByType]
	@ReactionType NVARCHAR(40)
AS
	SELECT [ID] FROM [IVR].[Reactions] WHERE [ReactionType] = @ReactionType
GO
/****** Object:  StoredProcedure [IVR].[usp_RecipientChannels_UpdateChannelState]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_RecipientChannels_UpdateChannelState]
    @CareRecipientId BIGINT = 0,
    @ChannelId INT,
    @IsActive BIT
AS
BEGIN
    IF EXISTS (SELECT TOP 1 1 FROM IVR.RecipientChannels WHERE CareRecipientId = @CareRecipientId AND ChannelId = @ChannelId)
    BEGIN
        UPDATE IVR.RecipientChannels
        SET IsActive = @IsActive
        WHERE CareRecipientId = @CareRecipientId AND ChannelId = @ChannelId;
    END
    ELSE
    BEGIN
        INSERT INTO IVR.RecipientChannels(CareRecipientId, ChannelId, IsActive)
        VALUES (@CareRecipientId, @ChannelId, @IsActive);
    END
END
GO
/****** Object:  StoredProcedure [IVR].[usp_RPhones_Upsert]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [IVR].[usp_RPhones_Upsert]
    @CareRecipientId bigint
    , @PhoneId bigint
    , @PhoneUsageId bigint = null
    , @IsPrimary bit
AS
 
IF NOT EXISTS (SELECT TOP 1 1 FROM main.PersonPhones WHERE [RID] = @CareRecipientId AND [PhoneID] = @PhoneId)
BEGIN
	INSERT INTO main.PersonPhones (RID, PhoneID, PhoneUsageID, IsPrimary, CreatedOn, LastModifiedOn, PropBag)
	VALUES (@CareRecipientId, @PhoneId, @PhoneUsageId, @IsPrimary, GETUTCDATE(), GETUTCDATE(), '<PropBag />')
END  
ELSE 
BEGIN
	UPDATE main.PersonPhones
	SET IsPrimary = @isPrimary
	WHERE RID = @CareRecipientId AND PhoneID = @PhoneId
END 
GO
/****** Object:  StoredProcedure [IVR].[usp_StatusCall_Insert]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [IVR].[usp_StatusCall_Insert]
    @WorkflowId BIGINT = NULL,
    @WorkflowName VARCHAR(300) = NULL,
    @PhoneFrom VARCHAR(50) = NULL,
    @PhoneTo VARCHAR(50) = NULL,
    @DirectionCall VARCHAR(50) = NULL,
    @CurrentStatus VARCHAR(50) = NULL,
    @CurrentDateTime DATETIME2 = NULL,
    @Uuid VARCHAR(50) = NULL,
    @Conversation_uuid VARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;
 
    BEGIN TRY
        BEGIN TRANSACTION
 
        INSERT INTO [IVR].[StatusCall]
        (
            [WorkflowId],
            [WorkflowName],
            [PhoneFrom],
            [PhoneTo],
            [DirectionCall],
            [CurrentStatus],
            [CurrentDateTime],
            [Uuid],
            [Conversation_uuid]
        )
        VALUES
        (
            @WorkflowId,
            @WorkflowName,
            @PhoneFrom,
            @PhoneTo,
            @DirectionCall,
            @CurrentStatus,
            @CurrentDateTime,
            @Uuid,
            @Conversation_uuid
        );
 
        COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;  -- Rollback in case of error
 
        DECLARE @ErrorMessage NVARCHAR(4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;
 
        SELECT
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();
 
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO
/****** Object:  StoredProcedure [LegacyMain].[Insert_existing_client]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [LegacyMain].[Insert_existing_client]
	@partnerId bigint
AS
BEGIN
	
	SET NOCOUNT ON;

	IF NOT EXISTS(SELECT * FROM [LegacyMain].[SBU] WHERE RID = @partnerId)
	BEGIN
		RAISERROR ('The Partner ID does not exist in Portal 1.0.', 16, 1);  
		RETURN
	END
	
	IF  EXISTS(SELECT * FROM main.[Partner] WHERE ID = @partnerId)
	BEGIN
		RAISERROR ('The Partner ID already exists in Portal 2.0.', 16, 1);  
		RETURN
	END
	
	BEGIN TRY
	BEGIN TRANSACTION
		--INSERT partner
		SET IDENTITY_INSERT [main].[Partner] ON;
		INSERT INTO [main].[Partner] ( [ID], [Name], [DisplayInAdminPortal], [IsActive], [DataSchema], [CreatedOn], [LastModifiedOn])
		SELECT 
			p.[RID], 
			p.[SBUName], 
			p.[DisplayInAdminPortal], 
			1, --Active
			s.[Schema],
			p.[DTUTC_Created],
			p.[DTUTC_Modified]
		FROM [LegacyMain].[SBU] p
		LEFT JOIN [LegacyMain].[SchemaByPartner] s  ON p.[RId] = s.[PartnerId]
		WHERE p.RID = @partnerId
		SET IDENTITY_INSERT [main].[Partner] OFF;
		
		DECLARE @schema nvarchar(100);
		select @schema = [DataSchema] from main.Partner where ID = @partnerId
		
		--CREATE [schema].personinfo
		
		if NULLIF(@schema, '') is not null and @schema <> 'EmpowerHealth'
		begin
			EXEC [main].[usp_NewSchema] @schema, @partnerId
		end

		--INSERT partner group
		SET IDENTITY_INSERT [main].[PartnerGroup] ON;

		INSERT INTO [main].[PartnerGroup]( [ID], [PartnerID], [Name], [PARENTRID], [CreatedOn], [LastModifiedOn])
		SELECT 
			pg.[RID], 
			pg.[SBURID], 
			pg.[Name], 
			pg.[PARENTRID],
			pg.[DTUTC_Created],
			pg.[DTUTC_Modified]
		FROM [LegacyMain].[SBUGroup] pg 
		WHERE pg.[SBURID] = @partnerId


		SELECT 
			pg.[RID]
			into #partnerGroupIds
		FROM [LegacyMain].[SBUGroup] pg 
		WHERE pg.[SBURID] = @partnerId

		SET IDENTITY_INSERT [main].[PartnerGroup] OFF;

		--INSERT partner attribute
		INSERT INTO [main].[PartnerAttributes] ( [PartnerID],  [AttributeTypeID],  [AttributeValue], [IsActive],[CreatedOn], [LastModifiedOn])
		SELECT 
			pa.[SBURID], 
			pa.[TypeID], 
			CASE WHEN pa.[TypeID] = 34 THEN REPLACE(pa.[AttributeValue], '+', '') 
			ELSE pa.[AttributeValue] END AS [AttributeValue], 
			pa.[IsActive],
			pa.[DTUTC_Created],
			pa.[DTUTC_Modified]
		FROM [LegacyMain].[SBUAttributes] pa 
		INNER JOIN [main].[M_AttributeType] ma ON pa.[TypeID] = ma.ID
		WHERE pa.[SBURID] = @partnerId
		
	
		--INSERT partner default attribute
		IF NOT EXISTS(SELECT * FROM [main].[PartnerAttributes]  WHERE PartnerID = @partnerId AND AttributeTypeID = 54)
		BEGIN
			INSERT INTO [main].[PartnerAttributes] ( [PartnerID],  [AttributeTypeID],  [AttributeValue], [IsActive])
			VALUES (@partnerId, 54, '', 1)
		END
		IF NOT EXISTS(SELECT * FROM [main].[PartnerAttributes]  WHERE PartnerID = @partnerId AND AttributeTypeID = 55)
		BEGIN
			INSERT INTO [main].[PartnerAttributes] ( [PartnerID],  [AttributeTypeID],  [AttributeValue], [IsActive])
			VALUES (@partnerId, 55, '', 1)
		END
		IF NOT EXISTS(SELECT * FROM [main].[PartnerAttributes]  WHERE PartnerID = @partnerId AND AttributeTypeID = 76)
		BEGIN
			INSERT INTO [main].[PartnerAttributes] ( [PartnerID],  [AttributeTypeID],  [AttributeValue], [IsActive])
			VALUES (@partnerId, 76, '', 1)
		END

		--INSERT partnergroup attributes
		INSERT INTO [main].[PartnerGroupAttributes] ( [PartnerGroupID], [AttributeTypeID], [AttributeValue], [IsActive], [CreatedOn], [LastModifiedOn])
		SELECT 
			pga.[SBUGroupRID], 
			pga.[TypeID], 
			pga.[AttributeValue], 
			pga.[IsActive],
			pga.[DTUTC_Created],
			pga.[DTUTC_Modified]
		FROM #partnerGroupIds gr
		join [LegacyMain].[SBUGroupAttributes] pga on gr.RID = pga.SBUGroupRID
		inner join main.M_AttributeType ma ON pga.[TypeID] = ma.ID

		-- get active RId
		Create table #TempRIds 
		(
			RID INT
		);

		INSERT INTO #TempRIds  ( RID )
		SELECT DISTINCT cg.RID
		from LegacyMain.[SBUs_EndUsers] pe 
		inner join LegacyMain.CareGivers cg ON pe.EndUserRID = cg.RID
		inner join LegacyMain.R_Phones p ON pe.EndUserRID = p.RID
		inner join LegacyMain.R_EmailAddresses e ON pe.EndUserRID = e.RID
		left join LegacyMain.SBUGroup_EndUsers g on pe.EndUserRID = g.EndUserRID
		where pe.SBURID = @partnerId
			and  cg.GIVERTYPE = 1 -- PRO
			and (g.SBUGroupRID is not null or cg.IsPartnerDefaultGiver = 1 )
		--create R entity
		INSERT INTO [main].[R] ( [RID], [RTypeID], [IsActive], [IsTesting], [PropBag], [CreatedOn], [LastModifiedOn])
		SELECT r.RID, r.RTypeID, r.IsActive, r.IsTesting, '<PropBag />', r.[DTUTC_Created], r.[DTUTC_Modified]
		FROM #TempRIds temp
		join LegacyMain.R r on temp.RID = r.RID
		left join main.R r2 on r.RID = r2.RID
		where r2.rid is null

		--create care giver
		INSERT INTO main.CareGivers
		(
			[RID]
           ,[PhotoUrl]
           ,[Language]
           ,[Timezone]
           ,[NotificationType]
           ,[LastLogin]
           ,[DTUTC_PlanEnd]
           ,[PlanType]
           ,[ExternalId]
           ,[Designation]
           ,[GiverType]
           ,[CustomField1]
           ,[CustomField2]
           ,[CustomField3]
           ,[CustomField4]
           ,[IsPartnerDefaultGiver]
		   ,[CareRoleID]
		   ,[SpecialtyID]
		   ,[CreatedOn]
		   ,[LastModifiedOn]
		)
		SELECT
			 cg.[RID]
			,cg.[PhotoUrl]
			,cg.[Language]
			,cg.[Timezone]
			,cg.[NotificationType]
			,cg.[LastLogin]
			,cg.[DTUTC_PlanEnd]
			,cg.[PlanType]
			,cg.[ExternalId]
			,cg.[Designation]
			,cg.[GiverType]
			,cg.[CustomField1]
			,cg.[CustomField2]
			,cg.[CustomField3]
			,cg.[CustomField4]
			,cg.[IsPartnerDefaultGiver]
			,(SELECT TOP 1 [RoleID] FROM LegacyMain.GiversCareRoles where [CareGiverID] = cg.RID) as [RoleID]
			,(select top 1 [SpecialtyID] from [LegacyMain].[GiversSpecialties] where [CareGiverID] = cg.RID) as [SpecialtyID]
			,r.DTUTC_Created
			,ISNULL(cg.DTUTC_Modified,  r.DTUTC_Modified)
		FROM [LegacyMain].[CareGivers] cg
		JOIN [LegacyMain].R r ON cg.RID = r.RID
		inner join #TempRIds r1 on cg.RID = r1.RID
		left join main.CareGivers cg2 on r1.RID = cg2.RID
		where cg2.RID is null
		
		--INSERT phone
		SET IDENTITY_INSERT [main].[Phones] ON;
		INSERT INTO main.Phones ([ID], [PhoneCountryCode], [PhoneNumber], [FIPSCode], [IsValid] , [CreatedOn], [LastModifiedOn])
		SELECT DISTINCT 
			b.[ID], 
			b.[PhoneCountryCode], 
			b.[PhoneNumber],
			NULL, 
			b.[IsValid],
			b.[DTUTC_Created],
			b.[DTUTCModified]
		FROM #TempRIds r1  
		JOIN [LegacyMain].[R_Phones] a on r1.RID = a.RID
		JOIN [LegacyMain].[Phones] b ON a.PhoneID = b.ID 
		LEFT JOIN MAIN.Phones c on b.ID = c.ID
		WHERE c.ID IS NULL

		SET IDENTITY_INSERT [main].[Phones] OFF;

		--INSERT PersonPhones
		INSERT INTO main.PersonPhones (RID, PhoneID, PhoneUsageID, IsPrimary, [CreatedOn], [LastModifiedOn] )
		SELECT 
			a.[RID], 
			a.[PhoneID], 
			a.[PhoneUsageID], 
			a.[IsPrimary],
			a.[DTUTC_Created],
			a.[DTUTC_Modified]
		FROM #TempRIds r1  
		JOIN [LegacyMain].[R_Phones] a on r1.RID = a.RID
		LEFT JOIN main.PersonPhones b ON a.RID = b.RID and a.PhoneID = b.PhoneID and a.[PhoneUsageID] = b.[PhoneUsageID]
		WHERE b.RID IS NULL

		--create email address
		SET IDENTITY_INSERT [main].[EmailAddresses] ON;
		INSERT INTO main.EmailAddresses ([ID], [EmailAddress], [IsValid], [CreatedOn], [LastModifiedOn])
		SELECT DISTINCT 
			b.[ID], 
			b.[EmailAddress], 
			b.[IsValid],
			b.[DTUTC_Created],
			b.[DTUTC_Modified]
		FROM #TempRIds r1
		JOIN [LegacyMain].[R_EmailAddresses] a ON r1.RID = a.RID
		JOIN [LegacyMain].[EmailAddresses] b on a.EmailAddressID  = b.ID
		LEFT JOIN main.[EmailAddresses] c on b.ID = c.ID
		WHERE c.ID IS NULL
		SET IDENTITY_INSERT [main].[EmailAddresses] OFF;

		--insert PersonEmailAddresses
		INSERT INTO main.PersonEmailAddresses([RID], [EmailAddressID], [EmailAddressUsageID], [IsPrimary], [CreatedOn], [LastModifiedOn])
		SELECT 
			a.[RID], 
			a.[EmailAddressID], 
			a.[EmailAddressUsageID], 
			a.[IsPrimary],
			a.[DTUTC_Created],
			a.[DTUTC_Modified]
		FROM #TempRIds r1
		JOIN [LegacyMain].[R_EmailAddresses] a ON r1.RID = a.RID
		JOIN [LegacyMain].[EmailAddresses] b on a.EmailAddressID  = b.ID
		left join main.PersonEmailAddresses c on a.RID = c.RID  and a.EmailAddressID = c.EmailAddressID
		where c.RID is null
		
		----create person info
		INSERT INTO EmpowerHealth.PersonInfo
		(
			[SBURID],
			[RID],
			[FName],
			[MName],
			[LName],
			[MaidenName],
			[SingleName],
			[XofYName],
			[Title],
			[Ordinal],
			[Nickname],
			[DOB],
			[Gender],
			[DTUTC_Created],
			[DTUTC_Modified],
			[PropBag]
		)
		select DISTINCT 
			@partnerId,
			p.[RID],
			p.[FName],
			p.[MName],
			p.[LName],
			p.[MaidenName],
			p.[SingleName],
			p.[XofYName],
			p.[Title],
			p.[Ordinal],
			p.[Nickname],
			p.[DOB],
			p.[Gender],
			p.[DTUTC_Created],
			p.[DTUTC_Modified],
			'<PropBag />'
		FROM #TempRIds r1 
		JOIN [LegacyMain].[PersonInfo] p on p.RID = r1.RID
		LEFT JOIN EmpowerHealth.PersonInfo c on r1.RID = c.RID and @partnerId = c.SBURID
		where c.RID is null

		exec [main].[usp_PersonInfo_ChangeDataSchema] @partnerId
  
		-- create partner end user
		INSERT INTO main.PartnerEndUsers ([PartnerID], [RID], [PartnerGroupID], [PartnerProgramID], [PartnerInvitationCampaignID], [IsActive], [PropBag], [CreatedOn], [LastModifiedOn])
		SELECT
			@PartnerID,
			[EndUserRID],
			[SBUGroupRID],
			[SBUProgramID],
			[SBUInvitationCampaignID],
			[IsActive],
			'<PropBag/>',
			[DTUTC_Created],
			[DTUTC_Modified]
		FROM LegacyMain.[SBUs_EndUsers] a
		JOIN #TempRIds r on a.EndUserRID = r.RID
		WHERE SBURID = @PartnerID 

		--insert partner group enduser
		INSERT INTO main.[PartnerGroupEndUsers] ( [RID],  [PartnerID],  [PartnerGroupID], [CreatedOn], [LastModifiedOn])
		SELECT 
			pgeu.[EndUserRID], 
			pgeu.[SBURID], 
			pgeu.[SBUGroupRID],
			pgeu.[DTUTC_Created],
			pgeu.[DTUTC_Modified]
		FROM [LegacyMain].[SBUGroup_EndUsers] pgeu 
		inner join #partnerGroupIds pg on pgeu.SBUGroupRID = pg.RID
		inner join #TempRIds r on pgeu.EndUserRID = r.RID
		--insert care recording
		select
			cr.[Id], 
			cr.[Name] ,
			cr.[Description],
			cr.[Text],
			cr.[Section],
			cr.[Type],
			cr.[PromptID],
			cr.[LanguageID],
			cr.[DTUTC_Created],
			cr.[DTUTC_Modified],

			pr.[SBURID],
			pr.[CareRecordingId],
			pr.[IvrOverrideType]
		into #PartnerCareRecordings
		from [LegacyMain].[SBUCareRecordings] pr
		join [LegacyMain].CareRecordings cr on cr.Id = pr.CareRecordingId
		--left join main.CareRecordings c on cr.ID = c.ID 
		where pr.SBURID = @partnerId and pr.IvrOverrideType IS NOT NULL --and c.ID is null
		
		--insert prompts
		SET IDENTITY_INSERT [main].Prompts ON;
		insert into main.Prompts (ID, LanguageID, PromptContent, PropBag, PromptUrl, PromptContentWeb, AudioDescription, PromptContentSms, CreatedOn,  LastModifiedOn)
		select 
				b.ID
				,b.LanguageID
				,b.PromptContent
				,'<propBag />'
				,b.PromptUrl
				,b.PromptContentWeb
				,b.AudioDescription
				,b.promptContentSms
				,b.DTUTC_Created
				,b.DTUTC_Modified
		from (select distinct [PromptID], [LanguageID] from #PartnerCareRecordings) a
		join [LegacyMain].Prompts b on a.PromptID = b.ID and a.[LanguageID] = b.[LanguageID]
		left join main.Prompts c on b.ID = c.ID and b.[LanguageID] = c.[LanguageID]
		where c.ID is  null
		SET IDENTITY_INSERT [main].Prompts OFF;

		--insert CareRecordings
		SET IDENTITY_INSERT [main].CareRecordings ON;
		insert into main.CareRecordings
		(
			[ID], [Name], [Description], [Text], [Section], [Type], [PromptID], [LanguageID], [CreatedOn], [LastModifiedOn]
		)
		select DISTINCT 
			a.[Id], 
			a.[Name] ,
			a.[Description],
			a.[Text],
			a.[Section],
			a.[Type],
			a.[PromptID],
			a.[LanguageID],
			a.[DTUTC_Created],
			a.[DTUTC_Modified]
		from #PartnerCareRecordings a
		LEFT JOIN main.CareRecordings b on a.ID = b.ID
		where b.ID is null
		
		SET IDENTITY_INSERT [main].CareRecordings OFF;
		
		
		--insert partner care recording
		insert into main.PartnerCareRecordings ( [PartnerID], [CareRecordingId], [IvrOverrideTypeId] )
		select distinct 
			[SBURID],
			[CareRecordingId],
			[IvrOverrideType]
		from #PartnerCareRecordings

		DELETE #PartnerCareRecordings

		--create partner columns configuration
		INSERT INTO main.PartnerConfigurationColumns
		(
			[PartnerId], 
			[VitalTypeId], 
			[Title], 
			[ColumnActionableAlertName], 
			[ColumnAlertManagementName], 
			[HasFilter], 
			[Show],
			[PreviewPhase],
			[Sortable],
			[AdminColumn],
			[ColumnOrder],
			[Clickable],
			[ActionableAlert],
			[ParentId],
			[DefaultColumn],
			[ShowUnit],
			[UnitText],
			[CareFaxAlertName],
			[SettingId]
		)
		SELECT 
			pc.[PartnerId], 
			pc.[VitalTypeId], 
			pc.[Title], 
			pc.[ColumnActionableAlertName], 
			pc.[ColumnAlertManagementName], 
			pc.[HasFilter], 
			pc.[Show],
			pc.[PreviewPhase],
			pc.[Sortable],
			pc.[AdminColumn],
			pc.[ColumnOrder],
			pc.[Clickable],
			pc.[ActionableAlert],
			pc.[ParentId],
			pc.[DefaultColumn],
			pc.[ShowUnit],
			pc.[UnitText],
			pc.[CareFaxAlertName],
			pc.[SettingId]
		FROM [LegacyMain].[SbuPartnerConfigurationColumns] pc
		WHERE pc.[PartnerId] = @partnerId

		drop table #TempRIds

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
			SELECT 'TRANSACTION ROLLBACKED' as [Message]
				ROLLBACK TRANSACTION --RollBack in case of Error
				 DECLARE @ErrorMessage NVARCHAR(4000);  
				DECLARE @ErrorSeverity INT;  
				DECLARE @ErrorState INT;  

				SELECT   
				   @ErrorMessage = ERROR_MESSAGE(),  
				   @ErrorSeverity = ERROR_SEVERITY(),  
				   @ErrorState = ERROR_STATE();  

				RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	END CATCH
END
GO
/****** Object:  StoredProcedure [LegacyMain].[usp_Addresses_SyncUp_Data]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [LegacyMain].[usp_Addresses_SyncUp_Data]
	@AddressLine1 NVARCHAR(255)
   ,@AddressLine2 NVARCHAR(150) = NULL
   ,@AddressLine3 NVARCHAR(150) = NULL
   ,@City NVARCHAR(50)
   ,@State NVARCHAR(50)
   ,@ZipCode NVARCHAR(20)
   ,@CountryCode CHAR(2)
   ,@IsValid BIT = 1
   ,@ID bigint OUTPUT
AS
BEGIN
	DECLARE @LegacyID bigint
    --DECLARE @ID bigint

    SET @AddressLine1 = ISNULL(LTRIM(RTRIM(@AddressLine1)) , '')

    SET @AddressLine2 = NULLIF(LTRIM(RTRIM(@AddressLine2)),'')

    SET @AddressLine3 = NULLIF(LTRIM(RTRIM(@AddressLine3)),'')

    SET @City = ISNULL(LTRIM(RTRIM(@City)),'')

    SET @State = ISNULL(LTRIM(RTRIM(@State)), '')

    SET @ZipCode = ISNULL(LTRIM(RTRIM(@ZipCode)), '')

    SET @CountryCode = ISNULL( LTRIM(RTRIM(@CountryCode)) ,'')


    SELECT TOP 1 @LegacyID = ID 
    FROM [LegacyMain].[Addresses] 
    WHERE AddressLine1 = @AddressLine1
	    AND ((AddressLine2 IS NULL AND @AddressLine2 IS NULL) OR AddressLine2 = @AddressLine2)
	    AND ((AddressLine3 IS NULL AND @AddressLine3 IS NULL) OR AddressLine3 = @AddressLine3)
	    AND City = @City
	    AND [State] = @State
	    AND ZipCode = @ZipCode
	    AND CountryCode = @CountryCode
    
    IF @LegacyID IS NOT NULL
    BEGIN
         SELECT TOP 1 @ID = ID
         FROM main.[Addresses] 
         WHERE ID = @LegacyID

         IF @ID IS NULL
         BEGIN
			SET @ID = @LegacyID
            SET IDENTITY_INSERT main.[Addresses] ON;
            INSERT INTO main.[Addresses]
				( ID
				,[AddressLine1]			
				,[AddressLine2]		
				,[AddressLine3]
				,[City]
				,[State]
				,[ZipCode]
				,[CountryCode]
				,[IsValid]
				,[PropBag]
				,CreatedOn 
				,LastModifiedOn)
			SELECT source.ID
					,source.[AddressLine1]
					,source.[AddressLine2]
					,source.[AddressLine3]
					,source.[City]
					,source.[State]
					,source.[ZipCode]
					,source.[CountryCode]
					,source.[IsValid]
					,'<propBag />'
					,source.DTUTC_Created
					,GETDATE()
            FROM LegacyMain.[Addresses] source WHERE ID = @LegacyID

            SET IDENTITY_INSERT main.[Addresses] OFF;
         END
    END
END
GO
/****** Object:  StoredProcedure [LegacyMain].[usp_CareRules_Lookup]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [LegacyMain].[usp_CareRules_Lookup]
	@partnerId BIGINT, 
    @Module VARCHAR(50)
AS
BEGIN
    
    CREATE TABLE #LookupData
    (
        [Id] bigint,
        [Name] nvarchar(255),
        [Code] nvarchar(255)
    )


    IF @Module = 'Program'
    BEGIN
        IF EXISTS(SELECT 1 FROM MAIN.[Partner] WHERE ID = @partnerId AND [Name] LIKE '%Reemo%')
        BEGIN
            INSERT INTO #LookupData ([Name])
            SELECT DISTINCT lower(Program) AS Program
            FROM [LegacyMain].[Reemohealth_enrollment_Hist]

        END
    END

    declare @PARTNER_OHS BIGINT = 727

    IF @Module = 'Policy' AND @partnerId = @PARTNER_OHS
    BEGIN
        INSERT INTO #LookupData ([Code], [Name])
        SELECT DISTINCT
            Policy_Id AS Code, 
            Policy_ID AS [Name]
        FROM [LegacyMain].ohs_hist
        WHERE Policy_ID IS NOT NULL 

    END

    IF @Module = 'HealthPlanLob'
    BEGIN
        IF EXISTS(SELECT 1 FROM MAIN.[Partner] WHERE ID = @partnerId AND [Name] LIKE '%DIABETES%')
        BEGIN
            INSERT INTO #LookupData ([Name])
            select distinct a.HEALTHPLAN_LOB 
            from [LegacyMain].HealPlanLob a
            where CO_DIM_STATE = (SELECT DISTINCT stateCode FROM [LegacyMain].[SbuState] where sburid = @partnerId)
        END
    END

    IF @Module = 'ClientEventType'
    BEGIN

         IF EXISTS(SELECT TOP 1 1 FROM MAIN.[Partner] WHERE ID = @partnerId AND [Name] LIKE '%Wider%')
		BEGIN
			INSERT INTO #LookupData ([Name])
			SELECT DISTINCT ClientName 
			FROM [LegacyMain].[Wider_Circle_Connect_for_Life_Hist]
		END
		ELSE IF @partnerId = 1128 BEGIN	--One Medical
			INSERT INTO #LookupData ([Name])
			SELECT lower('Live Well')
			UNION ALL
			SELECT lower('Book an appointment')
			UNION ALL
			SELECT lower('Virtual Care')
		END
    END

    IF @Module = 'PlanType'
    BEGIN
        INSERT INTO #LookupData ([Id], [Name], [Code])
        SELECT 
            [Id], [Name] ,Plantype
        FROM   [LegacyMain].SbuPlanType
        WHERE  partnerId = @partnerId
    END

    IF @Module = 'PbpContract'
    BEGIN
        INSERT INTO #LookupData ([Id], [Name])
        select 
            [Id], [Name] 
        from [LegacyMain].HContractPbp 
        where partnerId  = @partnerId
    END

    SELECT * FROM #LookupData

END
GO
/****** Object:  StoredProcedure [LegacyMain].[usp_EmailAddresses_SyncUp_Data]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [LegacyMain].[usp_EmailAddresses_SyncUp_Data]
    @EmailAddress NVARCHAR(150)
   ,@ID INT OUTPUT
AS
BEGIN

	DECLARE @LegacyID bigint

	SET @EmailAddress = ISNULL(LTRIM(RTRIM(@EmailAddress)),'')

	SELECT TOP 1  @LegacyID = ID
    FROM [LegacyMain].[EmailAddresses] 
    WHERE EmailAddress = @EmailAddress

   IF @LegacyID IS NOT NULL
    BEGIN
         SELECT TOP 1 @ID = ID
         FROM main.[EmailAddresses] 
         WHERE ID = @LegacyID

         IF @ID IS NULL
         BEGIN
			SET @ID = @LegacyID
            SET IDENTITY_INSERT main.[EmailAddresses] ON;
            INSERT INTO main.[EmailAddresses]
				([ID]
				,[EmailAddress]			
				,[IsValid]
				,[PropBag]
				,[CreatedOn] 
				,[LastModifiedOn])
			SELECT  source.ID
					,source.EmailAddress
					,source.[IsValid]
					,'<propBag />'
					,source.DTUTC_Created
					,GETDATE()
            FROM LegacyMain.[EmailAddresses] source WHERE source.ID = @LegacyID

            SET IDENTITY_INSERT main.[EmailAddresses] OFF;
         END
    END


END
GO
/****** Object:  StoredProcedure [LegacyMain].[usp_Options_SyncUp_Data]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [LegacyMain].[usp_Options_SyncUp_Data]
    @languageId int = NULL
    ,@option nvarchar(max)
    ,@audioUrl nvarchar(max) = NULL
    ,@webText nvarchar(max) = NULL
    ,@smsText nvarchar(max) = NULL
    ,@optionID bigint OUTPUT
AS
BEGIN
    DECLARE @LegacyOptionID bigint
    --DECLARE @optionID bigint

    SELECT top 1 @LegacyOptionID =  id 
    FROM LegacyMain.Options 
    WHERE Options = @option  
        AND (LanguageID = @languageId OR @languageId IS NULL)
        AND (AudioUrl = @audioUrl    OR @audioUrl IS NULL)
        AND (OptionWeb = @webText    OR @webText IS NULL)
        AND (OptionSms = @smsText    OR @smsText IS NULL)
    
    IF @LegacyOptionID IS NOT NULL
    BEGIN

        SELECT top 1 @optionID =  id 
        FROM main.Options 
        WHERE id = @LegacyOptionID AND LanguageID = @languageId 

        IF @optionID IS NULL
        BEGIN
            SET @optionID = @LegacyOptionID

            SET IDENTITY_INSERT main.Options ON;
           INSERT INTO main.Options (ID, LanguageID, Options, CreatedOn, LastModifiedOn, PropBag, AudioUrl, OptionWeb, OptionSms )
           SELECT top 1 ID, LanguageID, Options, DTUTC_Created, GETDATE(), '<propBag />', AudioUrl, OptionWeb, OptionSms 
           FROM LegacyMain.Options 
           WHERE id = @LegacyOptionID AND LanguageID = @languageId 
           SET IDENTITY_INSERT main.Options OFF;
        END
    END
END
GO
/****** Object:  StoredProcedure [LegacyMain].[usp_Options_SyncUp_Data_Bulk]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [LegacyMain].[usp_Options_SyncUp_Data_Bulk]
    @Options dbo.OptionParams READONLY
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @LegacyOptionID BIGINT;
    DECLARE @OptionID BIGINT;
    DECLARE @LanguageId INT;
    DECLARE @Option NVARCHAR(MAX);
    DECLARE @AudioUrl NVARCHAR(MAX);
    DECLARE @WebText NVARCHAR(MAX);
    DECLARE @SmsText NVARCHAR(MAX);
    DECLARE @Results dbo.OptionResults;

    DECLARE cur CURSOR FOR 
    SELECT languageId, [option], audioUrl, webText, smsText
    FROM @Options;

    OPEN cur;

    FETCH NEXT FROM cur INTO @LanguageId, @Option, @AudioUrl, @WebText, @SmsText;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Process for sync up data
        SELECT TOP 1 @LegacyOptionID = id 
        FROM LegacyMain.Options 
        WHERE Options = @Option  
            AND (LanguageID = @LanguageId OR @LanguageId IS NULL)
            AND (AudioUrl = @AudioUrl OR @AudioUrl IS NULL)
            AND (OptionWeb = @WebText OR @WebText IS NULL)
            AND (OptionSms = @SmsText OR @SmsText IS NULL);

        IF @LegacyOptionID IS NOT NULL
        BEGIN
            SELECT TOP 1 @OptionID = id 
            FROM main.Options 
            WHERE id = @LegacyOptionID 
              AND LanguageID = @LanguageId;

            IF @OptionID IS NULL
            BEGIN
                SET @OptionID = @LegacyOptionID;

                SET IDENTITY_INSERT main.Options ON;
                INSERT INTO main.Options (ID, LanguageID, Options, CreatedOn, LastModifiedOn, PropBag, AudioUrl, OptionWeb, OptionSms)
                SELECT ID, LanguageID, Options, DTUTC_Created, GETDATE(), '<propBag />', AudioUrl, OptionWeb, OptionSms
                FROM LegacyMain.Options
                WHERE ID = @LegacyOptionID AND LanguageID = @LanguageId;
                SET IDENTITY_INSERT main.Options OFF;
            END
        END
        ELSE
        BEGIN
            -- Insert new option
            INSERT INTO main.Options (LanguageID, Options, PropBag, AudioUrl, OptionWeb, OptionSms, CreatedOn, LastModifiedOn)
            VALUES (@LanguageId, @Option, '<propBag />', @AudioUrl, @WebText, @SmsText, GETUTCDATE(), GETUTCDATE());

            SET @OptionID = SCOPE_IDENTITY();
        END

        -- Collect the result
        INSERT INTO @Results (OptionId, ConcatString)
        VALUES (@OptionID, CONCAT(@Option, '|', @LanguageId, '|', @AudioUrl, '|', @WebText, '|', @SmsText));

        FETCH NEXT FROM cur INTO @LanguageId, @Option, @AudioUrl, @WebText, @SmsText;
    END

    CLOSE cur;
    DEALLOCATE cur;

        -- Return results
    SELECT * FROM @Results;
END;
GO
/****** Object:  StoredProcedure [LegacyMain].[usp_Phones_SyncUp_Data]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [LegacyMain].[usp_Phones_SyncUp_Data]
	@PhoneCountryCode VARCHAR(5)
   ,@PhoneNumber VARCHAR(16)
   ,@PhoneExtension VARCHAR(10) = NULL
   ,@IsValid BIT = 1
   ,@ID BIGINT OUTPUT
AS
BEGIN
	--DECLARE @ID BIGINT
    DECLARE @LegacyD bigint

    SET @PhoneCountryCode = LTRIM(RTRIM(@PhoneCountryCode))
    IF (@PhoneCountryCode IS NULL OR @PhoneCountryCode = '') 
        set @PhoneCountryCode = '1'

    SET @PhoneNumber = LTRIM(RTRIM(@PhoneNumber))
      
    SET @PhoneExtension = LTRIM(RTRIM(@PhoneExtension))
    IF (@PhoneExtension = '') 
        SET @PhoneExtension = NULL
  
    SELECT TOP 1 @LegacyD = ID
    FROM LegacyMain.[Phones] 
    WHERE PhoneCountryCode = @PhoneCountryCode 
        AND PhoneNumber = @PhoneNumber 
        AND ((PhoneExtension IS NULL AND @PhoneExtension IS NULL)  OR (PhoneExtension = @PhoneExtension))
	
    IF @LegacyD IS NOT NULL
    BEGIN
        SELECT TOP 1 @ID = ID
        FROM main.[Phones] 
        WHERE ID = @LegacyD
        
        IF @ID IS NULL
        BEGIN
            SET @ID = @LegacyD

            SET IDENTITY_INSERT main.[Phones] ON;
            INSERT INTO main.[Phones]
                (ID
                ,[PhoneCountryCode]
                ,[PhoneNumber]
                ,[PhoneExtension]
                ,[IsValid]
                ,[CreatedOn]	
                ,[LastModifiedOn]
                ,[PropBag]
                ,CarrierTypeID
                )
            SELECT ID, PhoneCountryCode, PhoneNumber, PhoneExtension, IsValid, [DTUTC_Created], GETDATE(), '<propBag />', CarrierType
            FROM LegacyMain.[Phones] WHERE ID = @LegacyD

            SET IDENTITY_INSERT main.[Phones] OFF;

        END
    END 
END
GO
/****** Object:  StoredProcedure [LegacyMain].[usp_Prompts_SyncUp_Data]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [LegacyMain].[usp_Prompts_SyncUp_Data]
	@languageId int 
	,@text nvarchar(max) = NULL
	,@audioUrl nvarchar(max)  =NULL
	,@audioDescription nvarchar(max) = NULL
	,@PromptContentweb nvarchar(max) = NULL
	,@PromptContentsms nvarchar(max) = NULL
	,@ID BIGINT OUTPUT
AS
BEGIN
	DECLARE @LegacyID bigint
	--DECLARE @ID bigint

	SELECT @LegacyID = p.id
    FROM [LegacyMain].Prompts p
    WHERE (p.PromptContent = @text OR @text IS NULL )
     AND (p.LanguageID = @languageId OR @languageId IS NULL )
     AND (p.PromptUrl = @audioUrl OR @audioUrl IS NULL)
     AND (p.PromptContentWeb = @PromptContentweb OR @PromptContentweb IS NULL)
     AND (p.PromptContentSms = @PromptContentsms OR @PromptContentsms IS NULL)

	IF @LegacyID IS NOT NULL
	BEGIN
		SELECT @ID = p.id
		FROM main.Prompts p
		WHERE ID = @LegacyID AND LanguageID = @languageId

		IF @ID IS NULL
		BEGIN
			SET @ID = @LegacyID
			 SET IDENTITY_INSERT main.Prompts ON;
			insert into main.Prompts
			(
				ID, 
				LanguageID,
				PromptContent,
				PropBag,
				PromptUrl,
				PromptContentWeb,
				AudioDescription,
				PromptContentSms,
				CreatedOn, 
				LastModifiedOn
			)
			SELECT 
				ID
				,LanguageID
				,PromptContent
				,'<propBag />'
				,PromptUrl
				,PromptContentWeb
				,AudioDescription
				,promptContentSms
				,DTUTC_Created
				,GETDATE()
			FROM [LegacyMain].Prompts
			where ID = @LegacyID and LanguageID = @languageId
			 SET IDENTITY_INSERT main.Prompts OFF;
		END
	END
END
GO
/****** Object:  StoredProcedure [LegacyMain].[usp_Prompts_SyncUp_Data_Bulk]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [LegacyMain].[usp_Prompts_SyncUp_Data_Bulk]
    @Prompts dbo.PromptParams READONLY
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @LegacyPromptID BIGINT;
    DECLARE @PromptID BIGINT;
    DECLARE @LanguageId INT;
    DECLARE @Text NVARCHAR(MAX);
    DECLARE @AudioUrl NVARCHAR(MAX);
    DECLARE @AudioDescription NVARCHAR(MAX);
    DECLARE @PromptContentWeb NVARCHAR(MAX);
    DECLARE @PromptContentSms NVARCHAR(MAX);
    DECLARE @Results dbo.PromptResults;

    DECLARE cur CURSOR FOR 
    SELECT LanguageId, [Text], AudioUrl, AudioDescription, PromptContentWeb, PromptContentSms
    FROM @Prompts;

    OPEN cur;

    FETCH NEXT FROM cur INTO @LanguageId, @Text, @AudioUrl, @AudioDescription, @PromptContentWeb, @PromptContentSms;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Process for sync up data
        SELECT TOP 1 @LegacyPromptID = id 
        FROM LegacyMain.Prompts 
        WHERE (PromptContent = @Text OR @Text IS NULL)
            AND (LanguageID = @LanguageId OR @LanguageId IS NULL)
            AND (PromptUrl = @AudioUrl OR @AudioUrl IS NULL)
            AND (PromptContentWeb = @PromptContentWeb OR @PromptContentWeb IS NULL)
            AND (PromptContentSms = @PromptContentSms OR @PromptContentSms IS NULL);

        IF @LegacyPromptID IS NOT NULL
        BEGIN
            SELECT TOP 1 @PromptID = id 
            FROM main.Prompts 
            WHERE id = @LegacyPromptID 
              AND LanguageID = @LanguageId;

            IF @PromptID IS NULL
            BEGIN
                SET @PromptID = @LegacyPromptID;

                SET IDENTITY_INSERT main.Prompts ON;
                INSERT INTO main.Prompts (ID, LanguageID, PromptContent, CreatedOn, LastModifiedOn, PropBag, PromptUrl, PromptContentWeb, AudioDescription, PromptContentSms)
                SELECT ID, LanguageID, PromptContent, DTUTC_Created, GETDATE(), '<propBag />', PromptUrl, PromptContentWeb, AudioDescription, PromptContentSms
                FROM LegacyMain.Prompts
                WHERE ID = @LegacyPromptID AND LanguageID = @LanguageId;
                SET IDENTITY_INSERT main.Prompts OFF;
            END
        END
        ELSE
        BEGIN
            -- Insert new prompt
            INSERT INTO main.Prompts (LanguageID, PromptContent, PropBag, PromptUrl, PromptContentWeb, AudioDescription, PromptContentSms, CreatedOn, LastModifiedOn)
            VALUES (@LanguageId, @Text, '<propBag />', @AudioUrl, @PromptContentWeb, @AudioDescription, @PromptContentSms, GETUTCDATE(), GETUTCDATE());

            SET @PromptID = SCOPE_IDENTITY();
        END

        -- Collect the result
        INSERT INTO @Results (PromptId, ConcatString)
        VALUES (@PromptID, CONCAT(@Text, '|', @LanguageId, '|', @AudioUrl, '|', @AudioDescription, '|', @PromptContentWeb, '|', @PromptContentSms));

        FETCH NEXT FROM cur INTO @LanguageId, @Text, @AudioUrl, @AudioDescription, @PromptContentWeb, @PromptContentSms;
    END

    CLOSE cur;
    DEALLOCATE cur;

    -- Return results
    SELECT * FROM @Results;
END;
GO
/****** Object:  StoredProcedure [main].[DeleteQuestion]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[DeleteQuestion]
	 @PartnerID bigint,
	@QuestionID bigint
AS
BEGIN
	;With questionIDs (QuestionId,ParentId, LanguageId)
	AS 
	(
		(SELECT cq.ID as QuestionId, cq.ID as ParentId, cq.LanguageId
			FROM MAIN.Question cq
			JOIN MAIN.CarePlanQuestions FLQ ON CQ.ID = FLQ.QuestionID
			JOIN MAIN.CarePlan sbucf ON FLQ.CarePlanID = sbucf.ID
			AND sbucf.PartnerID = @PartnerId AND cq.ID = @QuestionID

			UNION  

			SELECT cq.ID as QuestionId, cq.ID as ParentId, cq.LanguageId
			FROM MAIN.Question cq
			JOIN MAIN.CarePathwayQuestions FLQ ON CQ.ID = FLQ.QuestionID
			JOIN MAIN.CarePathway sbuqb ON FLQ.CarePathwayID = sbuqb.ID
			WHERE sbuqb.PartnerID = @PartnerId AND cq.ID = @QuestionID   
		)

		UNION ALL

		SELECT chil.ID as QuestionId, cqa.QuestionID as ParentId, chil.LanguageId
		FROM questionIDs AS sq
		JOIN main.QuestionAnswers AS cqa on cqa.QuestionID = sq.QuestionId
		JOIN main.Question chil on cqa.NextID = chil.ID
		)
		SELECT DISTINCT
			[cq].ID as QuestionId, 
			[qa].ID as QaId
		into #Query
		FROM questionIDs ids
		JOIN main.Question cq ON ids.QuestionID = cq.ID 
								AND ids.LanguageId = cq.LanguageId
		LEFT JOIN main.QuestionAnswers qa ON cq.ID = qa.QuestionID
		
		Declare @tbCareRecording as Table
		(
			CareRecordingId bigint
		)

		BEGIN TRANSACTION DELETE_QUESTION_TRAN

		--delete QuestionAnswerCareRecordings
		DELETE MAIN.QuestionAnswerCareRecordings WHERE QuestionAnswerID IN (SELECT DISTINCT QaId FROM #Query)
		--delete QuestionAnswers
		DELETE MAIN.QuestionAnswers WHERE ID IN (SELECT DISTINCT QaId FROM #Query)
		--delete QuestionCareRecordings
		DELETE MAIN.QuestionCareRecordings WHERE QuestionID IN (SELECT DISTINCT QuestionId FROM #Query)
		--delete QuestionCareRules
		DELETE MAIN.QuestionCareRules WHERE QuestionID IN (SELECT DISTINCT QuestionId FROM #Query)
		--delete Alerts
		DELETE MAIN.Alerts WHERE QuestionID IN (SELECT DISTINCT QuestionId FROM #Query)
		--delete CarePlanQuestions
		DELETE MAIN.CarePlanQuestions WHERE QuestionID IN (SELECT DISTINCT QuestionId FROM #Query)
		--delete CarePathwayQuestions
		DELETE MAIN.CarePathwayQuestions WHERE QuestionID IN (SELECT DISTINCT QuestionId FROM #Query)
		--delete Question
		DELETE MAIN.Question WHERE ID IN (SELECT DISTINCT QuestionId FROM #Query)

		COMMIT TRANSACTION DELETE_QUESTION_TRAN
END
GO
/****** Object:  StoredProcedure [main].[DeleteQuestionsByFramework]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[DeleteQuestionsByFramework]
    @PartnerID bigint,
    @FrameworkId bigint
AS
BEGIN
    SET NOCOUNT ON;

    WITH QuestionIDs (QuestionId, ParentId, LanguageId) AS 
    (
        SELECT cq.ID AS QuestionId, cq.ID AS ParentId, cq.LanguageId
        FROM MAIN.Question cq
        JOIN MAIN.CarePlanQuestions FLQ ON cq.ID = FLQ.QuestionID
        JOIN MAIN.CarePlan sbucf ON FLQ.CarePlanID = sbucf.ID
        WHERE sbucf.PartnerID = @PartnerID AND FLQ.CarePlanID = @FrameworkId

        UNION  

        SELECT cq.ID AS QuestionId, cq.ID AS ParentId, cq.LanguageId
        FROM MAIN.Question cq
        JOIN MAIN.CarePathwayQuestions FLQ ON cq.ID = FLQ.QuestionID
        JOIN MAIN.CarePathway sbuqb ON FLQ.CarePathwayID = sbuqb.ID
        WHERE sbuqb.PartnerID = @PartnerID AND FLQ.CarePathwayID = @FrameworkId

        UNION ALL

        SELECT chil.ID AS QuestionId, cqa.QuestionID AS ParentId, chil.LanguageId
        FROM QuestionIDs AS sq
        JOIN main.QuestionAnswers AS cqa ON cqa.QuestionID = sq.QuestionId
        JOIN main.Question chil ON cqa.NextID = chil.ID
    )
    SELECT DISTINCT
        cq.ID AS QuestionId, 
        qa.ID AS QaId
    INTO #Query
    FROM QuestionIDs ids
    JOIN main.Question cq ON ids.QuestionID = cq.ID AND ids.LanguageId = cq.LanguageId
    LEFT JOIN main.QuestionAnswers qa ON cq.ID = qa.QuestionID;

    BEGIN TRANSACTION DELETE_QUESTION_TRAN

    -- Delete related records
    DELETE FROM MAIN.QuestionAnswerCareRecordings WHERE QuestionAnswerID IN (SELECT DISTINCT QaId FROM #Query);
    DELETE FROM MAIN.QuestionAnswers WHERE ID IN (SELECT DISTINCT QaId FROM #Query);
    DELETE FROM MAIN.QuestionCareRecordings WHERE QuestionID IN (SELECT DISTINCT QuestionId FROM #Query);
    DELETE FROM MAIN.QuestionCareRules WHERE QuestionID IN (SELECT DISTINCT QuestionId FROM #Query);
    DELETE FROM MAIN.Alerts WHERE QuestionID IN (SELECT DISTINCT QuestionId FROM #Query);
    DELETE FROM MAIN.CarePlanQuestions WHERE QuestionID IN (SELECT DISTINCT QuestionId FROM #Query);
    DELETE FROM MAIN.CarePathwayQuestions WHERE QuestionID IN (SELECT DISTINCT QuestionId FROM #Query);
    DELETE FROM MAIN.Question WHERE ID IN (SELECT DISTINCT QuestionId FROM #Query);

    COMMIT TRANSACTION DELETE_QUESTION_TRAN
END
GO
/****** Object:  StoredProcedure [main].[GetDefaultQuestionsByPartner]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[GetDefaultQuestionsByPartner] 
 @PartnerID bigint
AS
BEGIN

	;WITH questionAnswers (QuestionID, NextID) as 
		(select distinct QuestionID, NextID from main.QuestionAnswers where NextID is not null),
	questionIDs (QuestionId,ParentId, LanguageId,CarePlanID,CarePathWayID)
	AS 
	(
		(SELECT cq.ID as QuestionId, cq.ID as ParentId,cq.LanguageId,sbucf.ID as CarePlanID, null as CarePathWayID
			FROM MAIN.Question cq
			JOIN MAIN.CarePlanQuestions FLQ ON CQ.ID = FLQ.QuestionID
			JOIN MAIN.CarePlan sbucf ON FLQ.CarePlanID = sbucf.ID
			AND sbucf.PartnerID = @PartnerId

			UNION  

			SELECT cq.ID as QuestionId, cq.ID as ParentId,cq.LanguageId,null as CarePlanID, sbuqb.ID as CarePathWayID
			FROM MAIN.Question cq
			JOIN MAIN.CarePathwayQuestions FLQ ON CQ.ID = FLQ.QuestionID
			JOIN MAIN.CarePathway sbuqb ON FLQ.CarePathwayID = sbuqb.ID
			WHERE sbuqb.PartnerID = @PartnerId  
		)

		UNION ALL

		SELECT chil.id as QuestionId,cqa.QuestionID as ParentId, chil.LanguageId,sq.CarePlanID,sq.CarePathWayID
		FROM questionIDs AS sq
		JOIN questionAnswers AS cqa on cqa.QuestionID = sq.QuestionId
		JOIN main.Question chil on cqa.NextID = chil.ID
		)
		SELECT 
			ids.QuestionId, 
			ids.ParentId,
			cq.QuestionTypeID,
			cq.VitalTypeId,
			cq.PromptID,
			cq.Sample as SampleId,
			cq.IsPublic,
			cq.QuestionCategory,
			cq.QuestionHangUp,
			cq.InstructionMode,
			cq.MinDigits,
			cq.MaxDigits,
			cq.Wait,
			cq.LanguageId,
			cq.ReadNumberAs,
			cq.Frequency,
			[cf].[Name] AS CustomFlowName, 
			[cf].[Id] AS CustomFlowId, 
			qb.Title AS CarePathWayName, 
			qb.Id AS CarePathwayId, 
			[p].[PromptContent]
		FROM questionIDs ids
		JOIN MAIN.Question cq on ids.QuestionID = cq.id and ids.LanguageId = cq.LanguageId
		LEFT JOIN main.Prompts p on p.Id=cq.PromptID and p.LanguageId=cq.LanguageId
		LEFT JOIN main.CarePathway qb ON ids.CarePathWayID = qb.Id
		LEFT JOIN main.CarePlan cf ON ids.CarePlanID = cf.Id
		
		ORDER BY (CASE WHEN [cf].[Name] IS NULL THEN 1 ELSE 0 END), [cf].[Name] , qb.Title
END
GO
/****** Object:  StoredProcedure [main].[GetInstructionId]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[GetInstructionId]
	@mixedNormal bigint NULL,
	@mixedVerbose bigint NULL,
	@numeric bigint,
	@insertForConcise bit = 0,
    @ID bigint OUTPUT
AS
  DECLARE @verboseMode BIT = 0
  DECLARE @normalMode bit = 0
  DECLARE @verbose NVARCHAR(255) = ''
  DECLARE @normal NVARCHAR(255) = ''
  DECLARE @selectVerbose NVARCHAR(255)=''
  DECLARE @selectNormal NVARCHAR(255) = ''
  DECLARE @mixedConcise NVARCHAR(255) = ''
  DECLARE @numericConcise NVARCHAR(255) = ''
  DECLARE @selectMixedConcise NVARCHAR(255) = ''
  DECLARE @selectNumericConcise NVARCHAR(255) = ''
  DECLARE @notVerboseMode NVARCHAR(255) = ''
  DECLARE @notNormalMode NVARCHAR(255) = ''
  DECLARE @notIn NVARCHAR(255) = ''

  IF @mixedVerbose IS NOT NULL AND ISNULL(@mixedNormal,-1) <> ISNULL(@mixedVerbose,-1)
    SET @verboseMode = 1
    

  IF @mixedNormal IS NOT NULL 
    SET @normalMode = 1
    
    IF @verboseMode = 1 
        SET @verbose = '(@NewId,@mixedVerbose,''Mixed'',GetUtcDate(),GetUtcDate(),''<propBag />'',2),'

    IF @normalMode = 1
         SET @normal =  '(@NewId,@mixedNormal,''Mixed'',GetUtcDate(),GetUtcDate(),''<propBag />'',1),'

     IF @verboseMode = 1
        SET @selectVerbose =  'OR (PromptId = @mixedVerbose and ModeType = ''Mixed'' and WorkflowMode = 2)'
    
    IF @normalMode = 1
        SET @selectNormal =  'OR (PromptId = @mixedNormal and ModeType=''Mixed'' and WorkflowMode=1)'

    DECLARE @count INT = 1;

    IF @verboseMode = 1 
        SET @count += 1;
    
    IF @normalMode = 1 
        SET @count += 1;

    IF @insertForConcise  = 1
    BEGIN
         SET @mixedConcise = '(@NewId,@mixedNormal,''Mixed'',GetUtcDate(),GetUtcDate(),''<propBag />'',0),'
    
        SET @numericConcise = '(@NewId,@numeric,''Numeric'',GetUtcDate(),GetUtcDate(),''<propBag />'',0),'
    
        SET @selectMixedConcise =  'OR (PromptId = @mixedNormal and ModeType=''Mixed'' and WorkflowMode=0)'
    
        SET @selectNumericConcise = 'OR (PromptId = @numeric and ModeType=''Numeric'' and WorkflowMode=0)'
    
        SET @count += 2;
    
    END

    IF @verboseMode  = 0
        SET @notVerboseMode = 'OR (ModeType=''Mixed'' and WorkflowMode=2)'
    
    IF @normalMode  = 0
        SET @notNormalMode = 'OR (ModeType=''Mixed'' and WorkflowMode=1)'
    
    IF @verboseMode = 0 or @normalMode  = 0
        SET @notIn =  'AND [ID] NOT IN (SELECT [ID] FROM [MAIN].[Instructions] WHERE 1 = 1 
                                    ' + @notVerboseMode + ' 
                                    ' + @notNormalMode + ')'
    

    DECLARE @SqlCommand nvarchar(max) = ''

    set @SqlCommand = '   IF EXISTS (SELECT [ID] FROM [MAIN].[Instructions] 
                                    WHERE (PromptId = @numeric and ModeType=''Numeric'' and WorkflowMode=1) ' 
                                    + ' 
                                    ' + @selectVerbose 
                                    + ' 
                                    ' + @selectNormal 
                                    + ' 
                                    ' + @selectMixedConcise 
                                    + '
                                    ' + @selectNumericConcise 
                                    + '
                                    ' + @notIn 
                                    +' GROUP BY [ID],[WorkflowMode]
                                    HAVING COUNT(*) = ' + CONVERT(VARCHAR(10), @count) + ')

                        SELECT @NewId = [ID] FROM [MAIN].[Instructions] 
                        WHERE (PromptId = @numeric and ModeType=''Numeric'' and WorkflowMode=1) ' 
                        + '
                        ' + @selectVerbose 
                        + '
                        ' + @selectNormal 
                        + '
                        ' + @selectMixedConcise 
                        + '
                        ' + @selectNumericConcise 
                        + '
                        ' + @notIn 
                        + ' 
                        GROUP BY [ID],[WorkflowMode]
                        HAVING COUNT(*) = '+ CONVERT(VARCHAR(10), @count) +'

                    ELSE 
                    BEGIN
					   
                       SET @NewId = ISNULL(( IDENT_CURRENT(''main.Instructions'') ),0) + 1
                       SET IDENTITY_INSERT main.[Instructions] ON;
                        INSERT INTO [MAIN].[Instructions] ([ID], [PromptId],[ModeType],[CreatedBy],[LastModifiedBy],[PropBag],[WorkflowMode])
                        VALUES ' +
                            @normal +
                            @verbose +
                            @mixedConcise +
                            @numericConcise +
                            '(@NewId,@numeric,''Numeric'',GetUtcDate(),GetUtcDate(),''<propBag />'',1)
                        SET IDENTITY_INSERT main.[Instructions] OFF;
				    END'
        
        DECLARE @params NVARCHAR(4000) = '@mixedNormal bigint NULL, @mixedVerbose bigint NULL, @numeric bigint, @NewId int output'

        EXEC sp_executesql  @SqlCommand, 
                            @params,  
                            @mixedNormal= @mixedNormal, 
                            @mixedVerbose = @mixedVerbose,
                            @numeric = @numeric, 
                            @NewId = @ID OUTPUT

      
RETURN 0
GO
/****** Object:  StoredProcedure [main].[GetQuestionDetails]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[GetQuestionDetails] 
 @PartnerID bigint,
 @QuestionID bigint
AS
BEGIN
	declare @frequencyMorning int = 1
	declare @alertTypeSMSCallReport int = 2

	;With questionIDs (QuestionId,ParentId, LanguageId)
	AS 
	(
		(SELECT cq.ID as QuestionId, cq.ID as ParentId, cq.LanguageId
			FROM MAIN.Question cq
			JOIN MAIN.CarePlanQuestions FLQ ON CQ.ID = FLQ.QuestionID
			JOIN MAIN.CarePlan sbucf ON FLQ.CarePlanID = sbucf.ID
			AND sbucf.PartnerID = @PartnerId AND cq.ID = @QuestionID

			UNION  

			SELECT cq.ID as QuestionId, cq.ID as ParentId, cq.LanguageId
			FROM MAIN.Question cq
			JOIN MAIN.CarePathwayQuestions FLQ ON CQ.ID = FLQ.QuestionID
			JOIN MAIN.CarePathway sbuqb ON FLQ.CarePathwayID = sbuqb.ID
			WHERE sbuqb.PartnerID = @PartnerId AND cq.ID = @QuestionID   
		)

		UNION ALL

		SELECT chil.ID as QuestionId, cqa.QuestionID as ParentId, chil.LanguageId
		FROM questionIDs AS sq
		JOIN main.QuestionAnswers AS cqa on cqa.QuestionID = sq.QuestionId
		JOIN main.Question chil on cqa.NextID = chil.ID
		)
		SELECT 
			[ids].ParentId,
			--
			[cq].ID as QuestionId, 
			[cq].QuestionTypeId,
			[cq].VitalTypeId,
			[cq].PromptId,
			[cq].[Sample] as SampleId,
			[cq].IsPublic,
			[cq].QuestionCategory,
			[cq].QuestionHangUp,
			[cq].InstructionMode,
			[cq].MinDigits,
			[cq].MaxDigits,
			[cq].Wait,
			[cq].LanguageId,
			[cq].ReadNumberAs,
			[cq].Frequency,
			[cq].Decimals,
			[cq].QuestionChannel,
			[cq].CheckOut, 
			[cq].Whisper, 
			[cq].RepeatAfterAttemps, 
			[cq].BargeIn,
			--QuestionAnswer
			[qa].ID as QaId,
			[qa].ReadingLevel as QaReadingLevel,
			[qa].TriggerAlert as QaTriggerAlert,
			[qa].NextId as QaNextId,
			[qa].[From] as QaFrom,
			[qa].[To] as QaTo,
			[qa].[OptionID] as QaOptionId,
			[qa].[DisableAnswerReaction] as QaDisableAnswerReaction,
			[qa].[Action] as QaAction,
			[qa].[Sample] as QaSample,
			[qa].[Value]  as QaValue,
			[qa].[IsPrimarySubQuestion] as QaIsPrimarySubQuestion,
			--Prompt
			[p].[PromptContent],
			[p].AudioDescription as PromptAudioDescription,
			[p].PromptUrl,
			[p].PromptContentWeb,
			[p].PromptContentSms,
			--Options
			[o].Options,
			[o].OptionWeb,
			[o].OptionSms,
			--Alert
			[a].content AS AlertSummaryText,
			[a].DescriptionUrl AS AlertSummaryUrl,
			[asms].content AS AlertSMSSummaryText  

		FROM questionIDs ids
		JOIN main.Question cq ON ids.QuestionID = cq.ID 
								AND ids.LanguageId = cq.LanguageId
		JOIN main.Prompts p ON p.Id = cq.PromptID 
								AND p.LanguageId = cq.LanguageId
		LEFT JOIN main.QuestionAnswers qa ON cq.ID = qa.QuestionID 
								--AND qa.OptionID IS NOT NULL
		LEFT JOIN main.Options o ON cq.LanguageID = o.LanguageID 
								AND qa.OptionID = o.ID
		LEFT JOIN main.Alerts a ON a.VitalTypeID = cq.VitalTypeID 
								AND a.LanguageId = cq.LanguageID 
								AND a.QuestionId = cq.ID
								AND a.Frequency = 1 
								AND a.AlertType = 1
		LEFT JOIN main.Alerts asms ON asms.VitalTypeID = cq.VitalTypeID   
        AND asms.LanguageId = cq.LanguageID   
        AND asms.QuestionId = cq.ID  
        AND asms.Frequency = @frequencyMorning   
        AND asms.AlertType = @alertTypeSMSCallReport 
END
GO
/****** Object:  StoredProcedure [main].[pipeline_query_collect_data_changes_2_1]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [main].[pipeline_query_collect_data_changes_2_1]
	@processId varchar(36),
	@partnerId bigint
As
BEGIN
	--declare	@processId varchar(36) =convert(varchar(36),newid())
	--declare @partnerId bigint = 1209

	delete [main].[DataSync];

	IF OBJECT_ID('tempdb..#tbPartnerGroupId') IS NOT NULL
		DROP TABLE #tbPartnerGroupId

	IF OBJECT_ID('tempdb..#tbCarePlanCarePathWayQuestion') IS NOT NULL
		DROP TABLE #tbCarePlanCarePathWayQuestion

	IF OBJECT_ID('tempdb..#tbCareRecording') IS NOT NULL
		DROP TABLE #tbCareRecording

	IF OBJECT_ID('tempdb..#tbPrompt') IS NOT NULL
		DROP TABLE #tbPrompt

	IF OBJECT_ID('tempdb..#tbR') IS NOT NULL
		DROP TABLE #tbR

	IF OBJECT_ID('tempdb..#tbQuestion') IS NOT NULL
		DROP TABLE #tbQuestion

	IF OBJECT_ID('tempdb..#Instructions') IS NOT NULL
		DROP TABLE #Instructions


	IF OBJECT_ID('tempdb..#CarePlan') IS NOT NULL
		DROP TABLE #CarePlan
	
	create table #tbCareRecording (ID bigint)

	create table #tbPrompt(ID bigint)

	create table #tbR(RID bigint)

	create table #tbQuestion(ID bigint)

	Create table #Instructions(ID bigint)
	---------------------PrepareData
	;WITH questionAnswers (QuestionID, NextID) as 
		(select distinct QuestionID, NextID from main.QuestionAnswers where NextID is not null),
	questionIDs (QuestionId,ParentId, LanguageId,CarePlanID,CarePathWayID)
	AS 
	(
		(SELECT cq.ID as QuestionId, cq.ID as ParentId,cq.LanguageId,sbucf.ID as CarePlanID, null as CarePathWayID
			FROM MAIN.Question cq
			JOIN MAIN.CarePlanQuestions FLQ ON CQ.ID = FLQ.QuestionID
			JOIN MAIN.CarePlan sbucf ON FLQ.CarePlanID = sbucf.ID
			AND sbucf.PartnerID = @PartnerId

			UNION  

			SELECT cq.ID as QuestionId, cq.ID as ParentId,cq.LanguageId,null as CarePlanID, sbuqb.ID as CarePathWayID
			FROM MAIN.Question cq
			JOIN MAIN.CarePathwayQuestions FLQ ON CQ.ID = FLQ.QuestionID
			JOIN MAIN.CarePathway sbuqb ON FLQ.CarePathwayID = sbuqb.ID
			WHERE sbuqb.PartnerID = @PartnerId  
		)

		UNION ALL

		SELECT chil.id as QuestionId,cqa.QuestionID as ParentId, chil.LanguageId,sq.CarePlanID,sq.CarePathWayID
		FROM questionIDs AS sq
		JOIN questionAnswers AS cqa on cqa.QuestionID = sq.QuestionId
		JOIN main.Question chil on cqa.NextID = chil.ID
		)
		SELECT 
			ids.QuestionId, 
			ids.ParentId,
			cq.VitalTypeId,
			cq.PromptID,
			cq.Sample as SampleId,
			cq.LanguageId,
			[cf].[Id] AS CarePlanID, 
			qb.Id AS CarePathwayId
		into #tbCarePlanCarePathWayQuestion
		FROM questionIDs ids
		JOIN MAIN.Question cq on ids.QuestionID = cq.id and ids.LanguageId = cq.LanguageId
		LEFT JOIN main.Prompts p on p.Id=cq.PromptID and p.LanguageId=cq.LanguageId
		LEFT JOIN main.CarePathway qb ON ids.CarePathWayID = qb.Id
		LEFT JOIN main.CarePlan cf ON ids.CarePlanID = cf.Id

	---------------------


	--BEGIN
	
	--1. Partner and Related : 
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'Partner', 'ID', a.ID 
	from main.[Partner] a where a.ID = @partnerId

	--PartnerAlertConfigurations
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerAlertConfigurations', 'ID', a.ID 
	from main.[PartnerAlertConfigurations] a where a.PartnerID = @partnerId

	--PartnerAttributes
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerAttributes', 'ID', a.ID 
	from main.[PartnerAttributes] a where a.PartnerID = @partnerId

	--PartnerCareRecordings
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerCareRecordings', 'ID', a.ID 
	from main.[PartnerCareRecordings] a where a.PartnerID = @partnerId

	--[PartnerClientNameGroup]
	
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerClientNameGroup', 'ID', a.ID 
	from main.[PartnerClientNameGroup] a where a.SbuRid = @partnerId
	--PartnerConfigurationColumns
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerConfigurationColumns', 'ID', ID 
	from main.[PartnerConfigurationColumns] where PartnerID = @partnerId

	--7. [PartnerEndUsers]
	insert into #tbR
	select a.RID 
	from main.PartnerEndUsers a
	join main.CareGivers b on a.RID = b.RID
	where PartnerID = @partnerId
	--
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerEndUsers', 'RID', a.RID 
	from main.PartnerEndUsers a
	join #tbR b on a.RID = b.RID

	--------------------------------------------------------------------------------------------------
	--7. PartnerGroup
	select ID  into #tbPartnerGroupId from main.PartnerGroup where PartnerID = @partnerId

	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerGroup', 'ID', ID from #tbPartnerGroupId



	--PartnerGroupAttributes
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerGroupAttributes', 'ID', a.ID 
	from main.[PartnerGroupAttributes] a
	join #tbPartnerGroupId b on a.PartnerGroupID = b.ID

	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerGroupEndUsers', 'RID', a.RID 
	from main.PartnerGroupEndUsers a
	join #tbR b on a.RID = b.RID

	--[PartnerGroupState]
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerGroupState', 'Id', a.Id 
	from main.PartnerGroupState a where a.SBURID = @partnerId

	--[PartnerState]
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerState', 'Id', a.Id 
	from main.PartnerState a where a.SBURID = @partnerId

	--PowerBIReport
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PowerBIReport', 'Id', a.Id 
	from main.PowerBIReport a where a.PartnerId = @partnerId

	--[UserReport]
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'UserReport', 'Id', a.Id 
	from main.UserReport a 
	join main.PowerBIReport b on a.ReportId = b.Id   
	where b.PartnerId = @partnerId

	----CarePlan
		SELECT ID
		into #CarePlan
		FROM main.CarePlan where PartnerID = @PartnerID

		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		SELECT distinct @processId, 'CarePlan', 'ID', ID FROM #CarePlan
	
		--CarePlanScheduling
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		SELECT distinct @processId, 'CarePlanScheduling', 'CarePlanID', a.ID FROM #CarePlan a
		join main.CarePlanScheduling b on a.ID = b.CarePlanID
	
		--CarePlanAttributes
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		SELECT distinct @processId, 'CarePlanAttributes', 'ID', b.ID FROM #CarePlan a
		join main.CarePlanAttributes b on a.ID = b.CarePlanID
	
		--CarePlanQuestions
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		SELECT distinct @processId, 'CarePlanQuestions', 'CarePlanID', a.ID FROM #CarePlan a
		join main.CarePlanQuestions b on a.ID = b.CarePlanID
	
		--CarePlanCareRecordings
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		SELECT distinct @processId, 'CarePlanCareRecordings', 'CarePlanID', a.ID FROM #CarePlan a
		join main.CarePlanCareRecordings b on a.ID = b.CarePlanID
		--CarePlanCareRecordings From CarePlanAttributes : 69
		insert into #tbCareRecording
		SELECT js.CareRecoringID
		FROM #CarePlan a
		join main.CarePlanAttributes b on a.ID = b.CarePlanID
		 CROSS APPLY OPENJSON (b.attributeValue) WITH
		(
			CareRecoringID INT '$.CareRecordingId'
		) js
		where b.AttributeTypeID = 69 

		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		SELECT distinct @processId, 'Prompts', 'ID', js.[value]
		FROM #CarePlan a
		join main.CarePlanAttributes b on a.ID = b.CarePlanID
		  CROSS APPLY OPENJSON (b.attributeValue) js
		where b.AttributeTypeID = 28 

		--CarePathWay
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		SELECT distinct @processId, 'CarePathWay', 'ID', ID 
		FROM main.CarePathway where PartnerID = @PartnerID
	
		--CarePathwayQuestions
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		SELECT distinct @processId, 'CarePathwayQuestions', 'ID', b.ID 
		FROM main.CarePathway a
		join main.CarePathwayQuestions b on a.ID = b.CarePathwayID
		where a.PartnerID = @PartnerID

		--Question
		insert into #tbQuestion
		select QuestionId from #tbCarePlanCarePathWayQuestion

		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'Question', 'ID', ID from #tbQuestion
	
		insert into #tbCareRecording
		select distinct b.CareRecordingID from #tbQuestion a
		join main.QuestionCareRecordings b on a.ID = b.QuestionID

		--QuestionAnswers
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'QuestionAnswers', 'ID', b.ID from #tbQuestion a
		join main.QuestionAnswers b on a.id = b.QuestionID
	
		--QuestionCareRecordings
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'QuestionCareRecordings', 'ID', b.ID from #tbQuestion a
		join main.QuestionCareRecordings b on a.id = b.QuestionID

		insert into #tbCareRecording
		select distinct c.CareRecordingID from #tbQuestion a
		join main.QuestionCareRecordings c on a.ID = c.CareRecordingID

		--QuestionAnswerCareRecordings
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'QuestionAnswerCareRecordings','ID', c.ID from #tbQuestion a
		join main.QuestionAnswers b on a.id = b.QuestionID
		join main.QuestionAnswerCareRecordings c on b.ID = c.QuestionAnswerID
	
		insert into #tbCareRecording
		select distinct c.CareRecordingID from #tbQuestion a
		join main.QuestionAnswers b on a.id = b.QuestionID
		join main.QuestionAnswerCareRecordings c on b.ID = c.QuestionAnswerID
		--Alerts
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'Alerts','AlertID', b.AlertID from #tbQuestion a
		join main.Alerts b on a.id = b.QuestionID
	
		--QuestionCareRules
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'QuestionCareRules','QuestionID', b.QuestionID from #tbQuestion a
		join main.QuestionCareRules b on a.id = b.QuestionID
	
		--CareRules
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'CareRules', 'ID',  b.CareRuleID from #tbQuestion a
		join main.QuestionCareRules b on a.id = b.QuestionID
	
	------------------------------------------------------------------------------------
		----R, Phone, EmailAddresses, 
		--R
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'R', 'RID', RID from #tbR
		--CareGivers
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'CareGivers', 'RID', a.RID from main.CareGivers a
		join #tbR b on a.RID = b.RID

		--PersonAddresses
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'PersonAddresses', 'RID', a.RID from main.PersonAddresses a
		join #tbR b on a.RID = b.RID

		--Addresses
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'Addresses', 'AddressID', a.AddressID
		from main.PersonAddresses a
		join #tbR b on a.RID = b.RID
	
		--PersonEmailAddresses
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'PersonEmailAddresses', 'RID',  a.RID from main.PersonEmailAddresses a
		join #tbR b on a.RID = b.RID

		--EmailAddresses
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'EmailAddresses', 'ID', a.EmailAddressID from main.PersonEmailAddresses a
		join #tbR b on a.RID = b.RID
		--PersonPhones
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'PersonPhones', 'RID', a.RID from main.PersonPhones a
		join #tbR b on a.RID = b.RID

		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'Phones', 'ID', a.PhoneID from main.PersonPhones a
		join #tbR b on a.RID = b.RID
	
		--PersonInfo
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1], [DataString])
		select distinct @processId, 'PersonInfo', 'RID', RID, (select top 1 ISNULL(NULLIF(DataSchema,''),'EmpowerHealth') from main.Partner where ID = @partnerId) from #tbR
	
	--VitalType --clinical db
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'VitalType', 'Id', a.VitalTypeID 
		from #tbCarePlanCarePathWayQuestion a
	
	--Instructions

		insert into #Instructions
		select distinct b.Sample 
		from #tbQuestion a
		join main.Question b on a.ID = b.ID
	
		insert into #Instructions
		select c.Sample 
		from #tbQuestion a
		join main.Question b on a.ID = b.ID 
		left join main.QuestionAnswers c on b.id = c.QuestionID

		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'Instructions', 'ID', ID from #Instructions where ID is not null
	
	-- Options
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'Options', 'ID', c.OptionID  
		from #tbQuestion a
		join main.Question b on a.ID = b.ID 
		join main.QuestionAnswers c on b.id = c.QuestionID
		where c.OptionID is not null
	-- CARERECORDING
		--PartnerCareRecordings
		insert into #tbCareRecording
		select a.CareRecordingId
		from main.PartnerCareRecordings a
		join main.CareRecordings b on a.CareRecordingId = b.ID
		where a.PartnerID = @partnerId



		--CareRecordings
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'CareRecordings', 'ID', a.ID 
		from #tbCareRecording a
	
	--GetFromQuestion & QuestionAnser
	------------------------------------------------------------------------------------
	----PROMPT
	--1 get from CareRecordings
		insert into #tbPrompt
		select a.PromptID from main.CareRecordings a
		join #tbCareRecording b on a.ID = b.ID
	--2. get from Question
		insert into #tbPrompt
		select PromptID from #tbCarePlanCarePathWayQuestion 

	--3. get from instruction
		insert into #tbPrompt
		select a.PromptID from main.Instructions a
		join #Instructions b on a.ID = b.ID

		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'Prompts', 'ID',  a.ID 
		from #tbPrompt a
	--REMOVE DUPLICATE RECORD [main].[DataSync]
		;WITH CTE_Duplicates AS (
		SELECT 
			*, 
			ROW_NUMBER() OVER (
				PARTITION BY [TableName],[PrimaryKeyName],[PrimaryKey1]  -- List all columns that define duplicates
				ORDER BY (SELECT NULL)
			) AS RowNum
		FROM [main].[DataSync]
	)
	DELETE FROM CTE_Duplicates
	WHERE RowNum > 1;
 
	--FINISH
	select COUNT(*) AS Total FROM [main].[DataSync] WHERE ProcessId = @processId
	
END
GO
/****** Object:  StoredProcedure [main].[pipeline_query_data_changes_2_1]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [main].[pipeline_query_data_changes_2_1]
	@tableName varchar(50) ,
	@fromDate datetime
AS
BEGIN

	if @tableName = 'PartnerCareRecordings'
	BEGIN
		select a.* from main.PartnerCareRecordings a
		where a.LastModifiedOn > @fromDate
		UNION 
		select a.* from main.PartnerCareRecordings a
		join main.Partner b on a.PartnerID = b.ID
		where b.LastModifiedOn > @fromDate
		return
	END
	
	if @tableName = 'PersonAddresses'
	BEGIN
		SELECT a.* FROM MAIN.PersonAddresses a
		JOIN MAIN.R b ON a.RID = b.RID 
		WHERE b.LastModifiedOn > @fromDate
		return
	END
	
	if @tableName = 'PersonEmailAddresses'
	BEGIN
		SELECT a.* FROM MAIN.PersonEmailAddresses a
		JOIN MAIN.R b ON a.RID = b.RID 
		WHERE b.LastModifiedOn > @fromDate
		return
	END
	
	if @tableName = 'PersonPhones'
	BEGIN
		SELECT a.* FROM MAIN.PersonPhones a
		JOIN MAIN.R b ON a.RID = b.RID 
		WHERE b.LastModifiedOn > @fromDate
		return
	END
	
	--CarePlan
	--if @tableName = 'CarePlanRecipients'
	--BEGIN
		--RETURN
	--END
	
	
	if @tableName = 'CarePlanScheduling'
	BEGIN
		select a.* from main.CarePlanScheduling a
		join main.CarePlan b on a.CarePlanID = b.ID
		where b.LastModifiedOn > @fromDate
		return
	END
	
	
	IF @tableName = 'CarePlanQuestions'
	BEGIN
		select a.* from main.CarePlanQuestions a
		join main.CarePlan b on a.CarePlanID = b.ID
		where b.LastModifiedOn > @fromDate
		return
	END

	IF @tableName = 'CarePlanAttributes'
	BEGIN
		select a.* from main.CarePlanAttributes a
		join main.CarePlan b on a.CarePlanID = b.ID
		where b.LastModifiedOn > @fromDate
		return
	END
	
	IF @tableName = 'CarePathwayQuestions'
	BEGIN
		select a.* from main.CarePathwayQuestions a
		join main.CarePathway b on a.CarePathwayID = b.ID
		where b.LastModifiedOn > @fromDate
		return
	END

	IF @tableName = 'PersonInfo'
	BEGIN
		select * from EmpowerHealth.PersonInfo a
		where a.DTUTC_Modified > @fromDate
		return
	END
	
	IF @tableName = 'R_Counters'
	BEGIN
		select * from main.R_Counters a
		
		return
	END
	
	declare @query nvarchar(max)
	set @query = 'SELECT * FROM MAIN.' + @tableName + ' where LastModifiedOn > ''' + convert(varchar, @fromDate, 121) + ''' AND LastModifiedOn < Getdate()'
	EXECUTE sp_executesql @query

END
GO
/****** Object:  StoredProcedure [main].[pipeline_query_data_changes_by_partner]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [main].[pipeline_query_data_changes_by_partner]
	@tableName varchar(50)
AS
BEGIN
	DECLARE @Query NVARCHAR(MAX)
	
	If @TableName = 'PersonInfo'
	BEGIN
		DECLARE @dataSchema VARCHAR(100) = (SELECT TOP 1 DataString FROM Main.Datasync WHERE TableName =  @TableName)
		SET @dataSchema = ISNULL(NULLIF(@dataSchema,''),'EmpowerHealth')
		SET @Query = CONCAT(
			'SELECT a.* ',
			'FROM ', @dataSchema, '.PersonInfo a ',
			'JOIN main.Datasync d ON d.PrimaryKey1 = a.RID ',
			'WHERE d.tableName = ''', @tableName, ''''
		)
		EXEC sp_executesql @query
		Return 
	END
	DECLARE @PrimaryKey Varchar(100) = (SELECT TOP 1 PrimaryKeyName FROM Main.Datasync WHERE TableName =  @TableName)
	If @PrimaryKey IS NOT NULL
	BEGIN
		
		SET @Query = CONCAT(
			'SELECT a.* FROM main.',
			@TableName,
			' a JOIN main.Datasync m ON m.PrimaryKey1 = a.',
			@PrimaryKey,
			' WHERE m.TableName = ''',
			@TableName,
			''''
		)
		EXEC sp_executesql @query
		RETURN
	END
	ELSE
	BEGIN
		SET @Query = CONCAT(
			'SELECT a.* FROM main.',
			@TableName,
			' a WHERE NULL = NULL'
		)
		EXEC sp_executesql @query
		RETURN
	END
END
GO
/****** Object:  StoredProcedure [main].[UpdateInsertAlertConfiguration]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[UpdateInsertAlertConfiguration]
 @processid uniqueidentifier 
AS
BEGIN	
	
	--DELETE DUPLICATE DATA
	;WITH CTE AS
	(
		SELECT *, ROW_NUMBER() OVER (PARTITION BY VitalTypeID ORDER BY SHOW DESC) AS RowNum
		FROM [main].[TempPartnerAlertConfigurations]
		WHERE ProcessId = @processid  
		and VitalTypeID > -1 and SectionCategory = 0
	)
	DELETE FROM CTE
	WHERE RowNum > 1;
	

	BEGIN TRY
    BEGIN TRANSACTION

		DECLARE @PartnerId BIGINT
		
		SELECT @PartnerId = PartnerID 
		FROM [main].[TempPartnerAlertConfigurations] 
		WHERE ProcessID = @processid

		--reset data
		DELETE [main].[PartnerAlertConfigurations] 
		WHERE PartnerID = @PartnerId

		-- Category 
		 INSERT INTO [main].[PartnerAlertConfigurations]
		   ([PartnerId], 
			[Title],
			[Show],
			[ActionableAlert],
			[VitalTypeId],
			[AlertOrder],
			[ParentId],
			[QuestionCategory],
			[QuestionId],
			[SectionCategory],
			[Notes],
			[ShowNotes],
			[ClassName])
		SELECT 
			s.[PartnerId], 
			s.[Title],
			s.[Show],
			s.[ActionableAlert],
			-1,
			s.[AlertOrder],
			s.[ParentId],
			s.[QuestionCategory],
			NULL,
			1,
			s.[Notes],
			s.[ShowNotes],
			s.[ClassName]
			FROM [main].[TempPartnerAlertConfigurations]  s
		WHERE s.ProcessID = @processid AND [VitalTypeId] = -1

		-- VITAL TYPE
		INSERT INTO [main].[PartnerAlertConfigurations]
		   ([PartnerId], 
			[Title],
			[Show],
			[ActionableAlert],
			[VitalTypeId],
			[AlertOrder],
			[ParentId],
			[QuestionCategory],
			[QuestionId],
			[SectionCategory],
			[Notes],
			[ShowNotes],
			[ClassName])
		SELECT
			s.[PartnerId], 
			s.[Title],
			s.[Show],
			s.[ActionableAlert],
			s.[VitalTypeId],
			s.[AlertOrder],
			s.[ParentId],
			s.[QuestionCategory],
			s.[QuestionId],
			0,
			s.[Notes],
			s.[ShowNotes],
			s.[ClassName]
		FROM [main].[TempPartnerAlertConfigurations]  s
		WHERE s.ProcessID = @processid AND [VitalTypeId] > -1

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
	END CATCH

	DELETE [main].[TempPartnerAlertConfigurations] WHERE ProcessId= @processid 
END
GO
/****** Object:  StoredProcedure [main].[UpdateInsertColumnConfiguration]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[UpdateInsertColumnConfiguration]
 @processid uniqueidentifier 
AS
BEGIN	
	
	--remove duplicate data	
	DELETE [main].[TEmpPartnerConfigurationColumns] WHERE processid= @processid and ID NOT IN (
		SELECT dt.ID from (
			SELECT *,
			ROW_NUMBER() OVER (PARTITION BY partnerid, VitalTypeID ORDER BY Show DESC, ID DESC) AS [RowNumber]
			FROM [main].[TEmpPartnerConfigurationColumns]
			WHERE processid= @processid
			)dt WHERE  dt.[RowNumber] = 1
	)
	DECLARE @partnerID bigint
	select top 1 @partnerID = PartnerId from [main].[TEmpPartnerConfigurationColumns] WHERE processid= @processid

	if @partnerID is null
	begin
		return
	end

	DELETE [main].[PartnerConfigurationColumns]  WHERE PartnerId = @partnerID

	insert into [main].[PartnerConfigurationColumns]
	(
		[PartnerId],
		[VitalTypeId] ,
		[Title] ,
		[ColumnModalAlertName],
		[ColumnActionableAlertName] ,
		[ColumnAlertManagementName],
		[HasFilter],
		[Show],
		[PreviewPhase],
		[Sortable] ,
		[AdminColumn],
		[ColumnOrder] ,
		[Clickable],
		[ActionableAlert] ,
		[QuestionId] ,
		[ParentId] ,
		[DefaultColumn],
		[ShowUnit],
		[UnitText] ,
		[CareFaxAlertName] ,
		[SettingId]
		) 
		SELECT 
		SOURCE.[PartnerId],
		SOURCE.[VitalTypeId] ,
		SOURCE.[Title] ,
		SOURCE.[ColumnModalAlertName],
		SOURCE.[ColumnActionableAlertName] ,
		SOURCE.[ColumnAlertManagementName],
		SOURCE.[HasFilter],
		SOURCE.[Show],
		SOURCE.[PreviewPhase],
		SOURCE.[Sortable] ,
		SOURCE.[AdminColumn],
		SOURCE.[ColumnOrder] ,
		SOURCE.[Clickable],
		SOURCE.[ActionableAlert] ,
		SOURCE.[QuestionId] ,
		SOURCE.[ParentId] ,
		SOURCE.[DefaultColumn],
		SOURCE.[ShowUnit],
		SOURCE.[UnitText] ,
		SOURCE.[CareFaxAlertName] ,
		SOURCE.[SettingId]
		FROM [main].[TEmpPartnerConfigurationColumns] SOURCE WHERE ProcessID = @processid

		----------------------CUSTOM VITAL TYPE
	DELETE [main].[TempPartnerConfigurationColumns] WHERE @processid = ProcessID

END
GO
/****** Object:  StoredProcedure [main].[ups_UpdateLastRunTime]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[ups_UpdateLastRunTime]
	@tableName varchar(50),
    @lastRunTime datetime = null
AS
BEGIN
	SET NOCOUNT ON;

    if @lastRunTime is null
        set @lastRunTime = GETDATE()

	IF EXISTS (SELECT TOP 1 * FROM MAIN.WatermarkTable WHERE TableName = @tableName )
	begin
		--update
		UPDATE main.WatermarkTable
		SET LastRunTime = @lastRunTime
		WHERE TableName = @tableName
	end
	else
	begin
		--insert
		INSERT INTO [main].[WatermarkTable]
           ([ID]
           ,[ProcessTypeID]
           ,[ProcessName]
           ,[TableSchema]
           ,[TableName]
           ,[LastRunTime]
           ,[CreatedOn]
           ,[LastModifiedOn])
     VALUES
           (NEWID()--[ID]
           ,1--[ProcessTypeID]
           ,'Data seeding'--[ProcessName]
           ,'Migrate'--[TableSchema]
           ,@tableName--[TableName]
           ,@lastRunTime--[LastRunTime]
           ,GETDATE()--[CreatedOn]
           ,GETDATE())--[LastModifiedOn]
	end

END
GO
/****** Object:  StoredProcedure [main].[ups_upsert_UpdateLastRunTime_SyncToClinical]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[ups_upsert_UpdateLastRunTime_SyncToClinical]
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
	BEGIN TRANSACTION
	UPDATE main.WatermarkTable
	SET LastRunTime = GETDATE()
	WHERE TableName = 'SynchronizeToClinicalLegacy'
	COMMIT TRANSACTION
	END TRY

	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION --RollBack in case of Error

		DECLARE @ErrorMessage NVARCHAR(4000);  
		DECLARE @ErrorSeverity INT;  
		DECLARE @ErrorState INT;  

		SELECT   
		   @ErrorMessage = ERROR_MESSAGE(),  
		   @ErrorSeverity = ERROR_SEVERITY(),  
		   @ErrorState = ERROR_STATE();  

		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
	END CATCH
	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [main].[usp_Addresses_EnsureAddress]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_Addresses_EnsureAddress] 
    @AddressLine1 NVARCHAR(255)
   ,@AddressLine2 NVARCHAR(150) = NULL
   ,@AddressLine3 NVARCHAR(150) = NULL
   ,@City NVARCHAR(50)
   ,@State NVARCHAR(50)
   ,@ZipCode NVARCHAR(20)
   ,@CountryCode CHAR(2)
   ,@IsValid BIT = 1
   ,@PropBag XML = '<PropBag />'
AS 
BEGIN
    SET NOCOUNT ON;

    DECLARE @ID INT

    --sync up data with legacy
    EXEC [LegacyMain].[usp_Addresses_SyncUp_Data] @AddressLine1, 
                                                    @AddressLine2, 
                                                    @AddressLine3, 
                                                    @City, 
                                                    @State, 
                                                    @ZipCode, 
                                                    @CountryCode, 
                                                    @IsValid,
                                                    @ID OUTPUT
    IF @ID IS NOT NULL
    BEGIN
        SELECT @ID AS AddressId
        RETURN
    END

    ----

    SET @AddressLine1 = ISNULL(LTRIM(RTRIM(@AddressLine1)) , '')

    SET @AddressLine2 = NULLIF(LTRIM(RTRIM(@AddressLine2)),'')

    SET @AddressLine3 = NULLIF(LTRIM(RTRIM(@AddressLine3)),'')

    SET @City = ISNULL(LTRIM(RTRIM(@City)),'')

    SET @State = ISNULL(LTRIM(RTRIM(@State)), '')

    SET @ZipCode = ISNULL(LTRIM(RTRIM(@ZipCode)), '')

    SET @CountryCode = ISNULL( LTRIM(RTRIM(@CountryCode)) ,'')


    SELECT TOP 1 @ID = ID FROM [main].[Addresses] WITH(NOLOCK)
    WHERE AddressLine1 = @AddressLine1
	    AND ((AddressLine2 IS NULL AND @AddressLine2 IS NULL) OR AddressLine2 = @AddressLine2)
	    AND ((AddressLine3 IS NULL AND @AddressLine3 IS NULL) OR AddressLine3 = @AddressLine3)
	    AND City = @City
	    AND [State] = @State
	    AND ZipCode = @ZipCode
	    AND CountryCode = @CountryCode

    IF (@ID IS NULL) 
    BEGIN
        SET @ID = 0				
    --    INSERT INTO [main].[Addresses]
    --            ([AddressLine1]
    --            ,[AddressLine2]
    --            ,[AddressLine3]
    --            ,[City]
    --            ,[State]
    --            ,[ZipCode]
    --            ,[CountryCode]
    --            ,[IsValid]
    --            ,[PropBag]
    --            )
    --        VALUES
    --            (@AddressLine1 
    --            ,@AddressLine2 
    --            ,@AddressLine3 
    --            ,@City 
    --            ,@State 
    --            ,@ZipCode 
    --            ,@CountryCode 
    --            ,@IsValid 
    --            ,@PropBag 
				--)

    --    SET @ID = SCOPE_IDENTITY()
    END

    SELECT @ID AS AddressId

END
GO
/****** Object:  StoredProcedure [main].[usp_Alerts_Insert_Bulk]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_Alerts_Insert_Bulk]
    @AlertParams dbo.AlertParams READONLY
AS
BEGIN
    SET NOCOUNT ON;

    -- Insert all records from the TVP into the MAIN.Alerts table
    INSERT INTO MAIN.Alerts (questionId, content, vitalTypeId, frequency, alertType, descriptionUrl, languageId, CreatedOn, CreatedBy)
    SELECT 
        QuestionId,
        Content,
        VitalTypeId,
        Frequency,
        AlertType,
        DescriptionUrl,
        LanguageId,
        GETDATE(),  -- CreatedOn
        'user'      -- CreatedBy -- Or use a parameter for the user
    FROM @AlertParams;

    RETURN 0;
END
GO
/****** Object:  StoredProcedure [main].[usp_Alerts_InsertOrUpdate]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_Alerts_InsertOrUpdate]
    @questionId BIGINT
   ,@vitalTypeId INT
   ,@frequency INT
   ,@alertType INT 
   ,@languageId INT
   ,@descriptionUrl VARCHAR(MAX)
   ,@content VARCHAR(MAX)

AS
BEGIN
	IF EXISTS(SELECT TOP 1 1 FROM MAIN.Alerts A
				WHERE   A.questionId =  @questionId
					AND A.vitalTypeId = @vitalTypeId
					AND A.frequency =   @frequency 
					AND A.alertType =   @alertType 
					AND A.languageId =  @languageId)
	BEGIN
		 UPDATE A
         SET A.content = @content,
			A.descriptionUrl = @descriptionUrl  
		 FROM MAIN.Alerts A
		 WHERE A.questionId =  @questionId
					AND A.vitalTypeId = @vitalTypeId
					AND A.frequency =   @frequency 
					AND A.alertType =   @alertType 
					AND A.languageId =  @languageId
	END
	ELSE
	BEGIN
		 INSERT [main].alerts(QuestionId
                    ,Content
                    ,VitalTypeID
                    ,Frequency
                    ,AlertType
                    ,DescriptionUrl
                    ,LanguageId)
            VALUES (@questionId
                    ,@content
                    ,@vitalTypeId
                    ,@frequency
                    ,@alertType
                    ,@descriptionUrl
                    ,@languageId) ;
	END
 RETURN 0			
END
GO
/****** Object:  StoredProcedure [main].[usp_Alerts_InsertOrUpdate_Bulk]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_Alerts_InsertOrUpdate_Bulk]
    @AlertParams dbo.AlertParams READONLY
AS
BEGIN
    MERGE MAIN.Alerts AS target
    USING @AlertParams AS source
    ON target.questionId = source.questionId
       AND target.vitalTypeId = source.vitalTypeId
       AND target.frequency = source.frequency
       AND target.alertType = source.alertType
       AND target.languageId = source.languageId
    WHEN MATCHED THEN
        UPDATE SET 
            target.content = source.content,
            target.descriptionUrl = source.descriptionUrl
    WHEN NOT MATCHED THEN
        INSERT (questionId, content, vitalTypeId, frequency, alertType, descriptionUrl, languageId)
        VALUES (source.questionId, source.content, source.vitalTypeId, source.frequency, source.alertType, source.descriptionUrl, source.languageId);

    RETURN 0;
END
GO
/****** Object:  StoredProcedure [main].[usp_AutomatedCallsSchedule_LoadAll]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_AutomatedCallsSchedule_LoadAll] 
    @channel VARCHAR(50) = 'voice',
    @SchedulersPerMinute INT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @AffectedRows TABLE (
        PhoneNumber VARCHAR(11) NULL,
        IsRecurring BIT NOT NULL,
        DTUTC_NextExecutionTime DATETIME NOT NULL,
        ID INT NOT NULL,
        CareRecipientTimezone NVARCHAR(50) NULL,
        CareRecipientDOB DATE NULL,        
        IvrClient NVARCHAR(40) NULL,
        PartnerId INT NOT NULL
    );

    SET @SchedulersPerMinute = CASE 
    WHEN @SchedulersPerMinute IS NULL OR @SchedulersPerMinute = 0 THEN
        CASE 
            WHEN @channel = 'voice' THEN 150
            WHEN @channel = 'sms' THEN 80
            WHEN @channel = 'chat' THEN 150
            ELSE 5 
        END
    ELSE @SchedulersPerMinute
    END;

    ;WITH SCHEDULES_CTE AS (
        SELECT TOP (@SchedulersPerMinute)
            acs.PhoneNumber,
            acs.IsRecurring,
            acs.DTUTC_NextExecutionTime,
            acs.ID,
            CR.Timezone AS CareRecipientTimezone,
            PI.DOB AS CareRecipientDOB,            
            acs.IvrClient,
			PEU.PartnerID
        FROM MAIN.AutomatedCallsSchedule acs   
        INNER JOIN ivr.Clients C ON acs.IvrClient = c.client
        INNER JOIN main.CareRecipients CR ON acs.CallRecipientRID = CR.RID
        INNER JOIN main.PersonInfo PI ON PI.RID = CR.RID
		INNER JOIN main.PartnerEndUsers PEU ON PEU.RID = CR.RID
        WHERE acs.DTUTC_NextExecutionTime <= GETUTCDATE()
            AND acs.IsLocked = 0
            AND C.channel = @channel
            AND C.isActive = 1
            AND (
                (acs.DTUTC_SuspendedFrom IS NULL AND acs.DTUTC_SuspendedTo IS NULL) OR 
                (GETUTCDATE() NOT BETWEEN acs.DTUTC_SuspendedFrom AND acs.DTUTC_SuspendedTo)
            )
        ORDER BY acs.DTUTC_NextExecutionTime, acs.IsCustomFlow DESC, acs.Retry
    )

    UPDATE acs
    SET acs.IsLocked = 1, acs.LastModifiedOn = GETUTCDATE()
    OUTPUT
        INSERTED.PhoneNumber,
        INSERTED.IsRecurring,
        INSERTED.DTUTC_NextExecutionTime,
        INSERTED.ID,
        SCHEDULES_CTE.CareRecipientTimezone,
        SCHEDULES_CTE.CareRecipientDOB,
        SCHEDULES_CTE.IvrClient,
		SCHEDULES_CTE.PartnerId
    INTO @AffectedRows
    FROM MAIN.AutomatedCallsSchedule acs WITH (ROWLOCK, UPDLOCK)
    JOIN SCHEDULES_CTE ON acs.Id = SCHEDULES_CTE.Id
    WHERE acs.IsLocked = 0;

    SELECT
        PhoneNumber,
        IsRecurring,
        DTUTC_NextExecutionTime,
        ID,
        CareRecipientTimezone,
        CareRecipientDOB,
        IvrClient,
		PartnerId
    FROM @AffectedRows;
END
GO
/****** Object:  StoredProcedure [main].[usp_CreateViewForPersonInfo]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_CreateViewForPersonInfo]
AS
BEGIN
    DECLARE @schemaName NVARCHAR(256)
    DECLARE @tableName NVARCHAR(256) = 'PersonInfo'
    DECLARE @viewName NVARCHAR(256)
    DECLARE @sql NVARCHAR(MAX)

    BEGIN TRY
        BEGIN TRANSACTION
    -- Cursor to iterate through schemas that have the PersonInfo table
            DECLARE schema_cursor CURSOR LOCAL FOR
            SELECT DISTINCT TABLE_SCHEMA
            FROM information_schema.tables
            WHERE table_name = @tableName AND TABLE_SCHEMA <> 'main' AND TABLE_SCHEMA <> 'LegacyMain'

            OPEN schema_cursor
            FETCH NEXT FROM schema_cursor INTO @schemaName

            WHILE @@FETCH_STATUS = 0
            BEGIN
                SET @viewName = QUOTENAME(@schemaName) + '.'  + 'PersonInfo_View'

                -- Check if the view already exists
                IF NOT EXISTS (SELECT 1 
                            FROM information_schema.views 
                            WHERE table_schema = @schemaName 
                            AND table_name = 'PersonInfo_View')
                BEGIN
                    -- Create the view
                    SET @sql = CONCAT(
                        'CREATE VIEW ',
                        @viewName,
                        '
                        AS 
                            SELECT  
                            [RID]
                            ,[FName]
                            ,[MName]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''JR''  THEN REPLACE(TRIM(REPLACE(LName,''JR'','''')),''  '','' '')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''SR''  THEN REPLACE(TRIM(REPLACE(LName,''SR'','''')),''  '','' '')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''I''   THEN REPLACE(TRIM(REPLACE(LName,''I'','''')),''  '','' '')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''II''  THEN REPLACE(TRIM(REPLACE(LName,''II'','''')),''  '','' '')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''III'' THEN REPLACE(TRIM(REPLACE(LName,''III'','''')),''  '','' '')
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''IV''  THEN REPLACE(TRIM(REPLACE(LName,''IV'','''')),''  '','' '')
                                ELSE [LName]
                                END AS [LName]
                            ,[MaidenName]
                            ,[SingleName]
                            ,[XofYName]
                            ,[Title]
                            ,CASE 
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''JR'' THEN ''JR''
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''SR'' THEN ''SR''
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''I'' THEN ''I''
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''II'' THEN ''II''
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''III'' THEN ''III''
                                WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''IV'' THEN ''IV''
                                ELSE [Ordinal]
                                END AS [Ordinal]
                            ,[Nickname]
                            ,[DOB]
                            ,[Gender]
                            ,[DTUTC_Created]
                            ,[DTUTC_Modified]
                            ,[PropBag]
                        FROM 
                        ', QUOTENAME(@SchemaName), '.PersonInfo'
                    )
                    EXEC sp_executesql @sql
                END

                FETCH NEXT FROM schema_cursor INTO @schemaName
            END

            CLOSE schema_cursor
            DEALLOCATE schema_cursor
        COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
        -- Handle errors
        IF @@TRANCOUNT > 0
        BEGIN
            ROLLBACK TRANSACTION
        END

        DECLARE @ErrorMessage NVARCHAR(MAX)
        DECLARE @ErrorSeverity INT
        DECLARE @ErrorState INT

        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE()

        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState)
    END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_datasync_seed_new_identity]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_datasync_seed_new_identity]
	@NewSchemaName nvarchar(50),
	@NewTableName nvarchar(100),
	@LegacyPrimaryKeyMaxValue bigint
AS
BEGIN
	SET NOCOUNT ON;

	IF EXISTS (SELECT 1  FROM MAIN.Partner)
	BEGIN
		RETURN
	END

	BEGIN TRY
	BEGIN TRANSACTION
	DECLARE @SET_ID bigint
	SET @SET_ID = @LegacyPrimaryKeyMaxValue+100
	DECLARE @SQL NVARCHAR(MAX)
	IF @NewTableName IN (
						'CarePathway',
						'CarePathwayQuestions',
						'CarePlan',
						'CarePlanAttributes',
						'CareRecordings',
						'CareRules',
						'Partner',
						'PartnerAttributes',
						'PartnerCareRecordings',
						'PartnerGroup',
						'PartnerGroupAttributes',
						'Question',
						'QuestionAnswerCareRecordings',
						'QuestionAnswers',
						'QuestionCareRecordings',
						'R_Deactivated',
						'Options',
						'Prompts',
						'Alerts',
						'Instructions'
						)
	BEGIN
		SET @SQL = N'DBCC CHECKIDENT (''' + @NewSchemaName + N'.' + @NewTableName + N''', RESEED, ' + CONVERT(varchar(10),@SET_ID) + N')'
		EXEC sp_executesql @SQL;
	END

	IF @NewTableName IN ('PartnerConfigurationColumns',
						'PartnerAlertConfigurations')
	BEGIN
		SET @SQL = N'DBCC CHECKIDENT (''' + @NewSchemaName + N'.' + @NewTableName + N''', RESEED, 1)'
		EXEC sp_executesql @SQL;
	END

	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
	IF @@TRANCOUNT > 0
    ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
	END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_EmailAddresses_EnsureEmailAddress]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_EmailAddresses_EnsureEmailAddress]
	@EmailAddress NVARCHAR(150)
AS
BEGIN
	DECLARE @ID INT

    SET @EmailAddress = ISNULL(LTRIM(RTRIM(@EmailAddress)),'')
	 --sync up data with legacy
    EXEC [LegacyMain].[usp_EmailAddresses_SyncUp_Data] @EmailAddress,  @ID OUTPUT

    IF @ID IS NOT NULL
    BEGIN
        SELECT @ID AS EmailAddressId
        RETURN
    END

    --

    SELECT TOP 1 @ID = ID FROM [main].[EmailAddresses]
    WHERE EmailAddress = @EmailAddress

    IF (@ID IS NULL) 
    BEGIN
		SET @ID = 0		
    --    INSERT INTO [main].[EmailAddresses]
    --            ([EmailAddress]			
				--,[IsValid]
				--,[PropBag]
    --            )
    --        VALUES
    --            (@EmailAddress 
    --            ,1 
    --            ,'<propBag />'
				--)

    --    SET @ID = SCOPE_IDENTITY()
    END

    SELECT @ID AS EmailAddressId


END
GO
/****** Object:  StoredProcedure [main].[usp_ExportFrameworkInfo]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [main].[usp_ExportFrameworkInfo]
	@CarePlanID BigINT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @Segment VARCHAR(100)
	SET @Segment = (
		SELECT 
			CASE WHEN Segment = 0 THEN 'Day'
			WHEN Segment = 1 THEN 'Week'
			WHEN Segment = 2 THEN 'Month'
			ELSE 'Year' END
		FROM main.CarePlan 
		WHERE ID = @CarePlanID
	);
	DECLARE @MaxIndex INT
	SET @MaxIndex = ISNULL((SELECT MAX(VariableIndex) FROM main.CarePlanQuestions WHERE CarePlanID = @CarePlanID), 1);
	WITH QuestionAnswers
	AS (
		SELECT DISTINCT QuestionID, NextID
		FROM main.QuestionAnswers
		WHERE NextID IS NOT NULL
	),
	QuestionIDs
	AS
	(
		SELECT
			q.ID AS QuestionID,
			q.ID AS ParentID,
			q.LanguageID AS LanguageID,
			cp.ID AS CarePlanID,
			QuestionOrder,
			CASE WHEN @MaxIndex > 1 THEN CONCAT (@Segment, ' ', cq.VariableIndex) 
			ELSE 'Fixed' END AS SheetName
		FROM main.Question q
		JOIN main.CarePlanQuestions cq ON q.ID = cq.QuestionID
		JOIN main.CarePlan cp ON cp.ID = cq.CarePlanID
		WHERE cp.ID = @CareplanID

		UNION ALL 

		SELECT 
			chil.id AS QuestionId,
			cqa.QuestionID AS ParentId,
			chil.LanguageId,
			sq.CarePlanID,
			sq.QuestionOrder,
			sq.SheetName 
		FROM QuestionIDs AS sq
		JOIN QuestionAnswers AS cqa ON cqa.QuestionID = sq.QuestionId
		JOIN main.Question chil ON cqa.NextID = chil.ID
	),
	Summary AS 
	(
		SELECT QuestionID, LanguageID, [1] AS Summary, [2] AS [SMSSummaryPostCall]
		FROM (
			SELECT Content, QuestionID, LanguageID, AlertType
			FROM main.Alerts
		) P
		PIVOT
		(	
			MAX(CONTENT)  FOR AlertType IN ([1], [2])
		) AS PivotTable
	),
	QuestionOptions AS (
		SELECT q.ID AS QuestionID, q.LanguageID, COUNT(o.ID) AS NumOption, STRING_AGG(o.Options, ';') WITHIN GROUP (ORDER BY o.ID) AS OptionStr 
		FROM main.Question q
		LEFT JOIN main.QuestionAnswers qa ON q.ID = qa.QuestionID
		LEFT JOIN main.Options o ON qa.OptionID = o.ID AND o.LanguageID = q.LanguageID
		GROUP BY q.ID, q.LanguageID
	),
	SystemOptions AS (
		SELECT STRING_AGG(Value, ';') AS YesNo, LanguageCode AS LanguageID
		FROM [main].[SystemOptionsTranslations] 
		WHERE TagName IN ('Affirmation', 'Negation')
		GROUP BY LanguageCode
	)
	SELECT * FROM (SELECT
		cp.ID AS [FrameworkID],
		cp.Name AS [FrameworkName],
		cpg.Name AS [FrameworkGroup],
		l.Description AS [FrameworkLanguage],
		cp.Voice AS [FrameworkVoice],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn 
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Custom Question' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Custom Question Prompts' AS [PromptType],
		p.PromptContent AS [PromptContent],
		p.PromptContentWeb AS [PromptContentWeb],
		p.PromptContentSms AS [PromptContentSMS],
		p.PromptUrl AS [PromptURL],
		qid.SheetName
	FROM QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.CarePlan cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePlanGroup cpg ON cp.CarePlanGroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID 
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.Prompts p ON p.ID = q.PromptID AND p.LanguageID = q.LanguageID
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId AND qid.LanguageID = s.LanguageID
	WHERE cp.ID = @CarePlanID
	ORDER BY qid.QuestionOrder OFFSET 0 ROWS
	) T
	UNION ALL
	SELECT
		cp.ID AS [FrameworkID],
		cp.Name AS [FrameworkName],
		cpg.Name AS [FrameworkGroup],
		l.Description AS [FrameworkLanguage],
		cp.Voice AS [FrameworkVoice],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn 
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Answer Options' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Options' AS [PromptType],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN qt.Name 
			ELSE o.Options 
		END AS [PromptContent],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN qt.Name 
			ELSE o.OptionWeb 
		END AS [PromptContentWeb],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN qt.Name 
		ELSE o.OptionSms 
		END AS [PromptContentSMS],
		o.AudioUrl AS [PromptURL],
		qid.SheetName
	FROM QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.CarePlan cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePlanGroup cpg ON cp.CarePlanGroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID
	JOIN main.QuestionAnswers qa ON qa.QuestionId = qid.QuestionId
	JOIN main.Options o on qa.OptionID = o.ID AND o.LanguageID = cp.LanguageId
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId AND qid.LanguageID = s.LanguageID
	WHERE cp.ID = @CarePlanID
	AND q.QuestionTypeID NOT IN (2, 3, 7, 14, 17)
	
	UNION ALL 

	SELECT
		cp.ID AS [FrameworkID],
		cp.Name AS [FrameworkName],
		cpg.Name AS [FrameworkGroup],
		l.Description AS [FrameworkLanguage],
		cp.Voice AS [FrameworkVoice],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn 
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Answer Options' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Options' AS [PromptType],
		CASE WHEN q.QuestionTypeID IN (18, 19, 20) THEN qt.Name 
			ELSE NULL
		END AS [PromptContent],
		CASE WHEN q.QuestionTypeID IN (18, 19, 20) THEN qt.Name 
			ELSE NULL
		END AS [PromptContentWeb],
		CASE WHEN q.QuestionTypeID IN (18, 19, 20) THEN qt.Name 
		ELSE NULL
		END AS [PromptContentSMS],
		NULL AS [PromptURL],
		qid.SheetName
	FROM QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.CarePlan cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePlanGroup cpg ON cp.CarePlanGroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId AND qid.LanguageID = s.LanguageID
	WHERE cp.ID = @CarePlanID AND q.QuestionTypeID IN (18, 19, 20)

	UNION ALL 

	SELECT
		cp.ID AS [FrameworkID],
		cp.Name AS [FrameworkName],
		cpg.Name AS [FrameworkGroup],
		l.Description AS [FrameworkLanguage],
		cp.Voice AS [FrameworkVoice],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn 
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Answer Options' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Options' AS [PromptType],
		CASE WHEN q.QuestionTypeID = 23 THEN qt.Name 
			ELSE NULL
		END AS [PromptContent],
		CASE WHEN q.QuestionTypeID = 23 THEN qt.Name 
			ELSE NULL
		END AS [PromptContentWeb],
		CASE WHEN q.QuestionTypeID = 23 THEN qt.Name 
		ELSE NULL
		END AS [PromptContentSMS],
		NULL AS [PromptURL],
		qid.SheetName
	FROM QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.CarePlan cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePlanGroup cpg ON cp.CarePlanGroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId AND qid.LanguageID = s.LanguageID
	WHERE cp.ID = @CarePlanID AND q.QuestionTypeID = 23
	
	UNION ALL

	SELECT
		cp.ID AS [FrameworkID],
		cp.Name AS [FrameworkName],
		cpg.Name AS [FrameworkGroup],
		l.Description AS [FrameworkLanguage],
		cp.Voice AS [FrameworkVoice],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Instructions' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Instruction Prompts' AS [PromptType],
		p.PromptContent AS [PromptContent],
		p.PromptContentWeb AS [PromptContentWeb],
		p.PromptContentSms AS [PromptContentSMS],
		p.PromptUrl AS [PromptURL],
		qid.SheetName
	FROM QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.CarePlan cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePlanGroup cpg ON cp.CarePlanGroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.QuestionCareRecordings qcr ON qcr.QuestionID = qid.QuestionID
	JOIN main.CareRecordings cr on qcr.CareRecordingID = cr.ID
	JOIN main.Prompts p ON p.ID = cr.PromptId AND p.LanguageID = q.LanguageID
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId AND qid.LanguageID = s.LanguageID
	WHERE cp.ID = @CarePlanID AND qid.ParentID = qid.QuestionID
	AND qcr.QuestionRecordingTypeID in (1, 2, 3)

	UNION ALL

	SELECT
		cp.ID AS [FrameworkID],
		cp.Name AS [FrameworkName],
		cpg.Name AS [FrameworkGroup],
		l.Description AS [FrameworkLanguage],
		cp.Voice AS [FrameworkVoice],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Instructions' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Instruction Prompts' AS [PromptType],
		p.PromptContent AS [PromptContent],
		p.PromptContentWeb AS [PromptContentWeb],
		p.PromptContentSms AS [PromptContentSMS],
		p.PromptUrl AS [PromptURL],
		qid.SheetName
	FROM QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.CarePlan cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePlanGroup cpg ON cp.CarePlanGroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.QuestionAnswers qa ON qa.QuestionID = qid.QuestionID
	JOIN main.QuestionAnswerCareRecordings qcr ON qcr.QuestionAnswerID = qa.ID
	JOIN main.CareRecordings cr on qcr.CareRecordingID = cr.ID
	JOIN main.Prompts p ON p.ID = cr.PromptId AND p.LanguageID = q.LanguageID
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId AND qid.LanguageID = s.LanguageID
	WHERE cp.ID = @CarePlanID AND qid.ParentID = qid.QuestionID
	AND qcr.QuestionRecordingTypeID in (1, 2, 3)
	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [main].[usp_ExportFrameworkInfoTest]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [main].[usp_ExportFrameworkInfoTest] 
	@CarePlanID BigINT
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @Segment VARCHAR(100)
	SET @Segment = (
		SELECT 
			CASE WHEN Segment = 0 THEN 'Day'
			WHEN Segment = 1 THEN 'Week'
			WHEN Segment = 2 THEN 'Month'
			ELSE 'Year' END
		FROM main.CarePlan 
		WHERE ID = @CarePlanID
	);
	DECLARE @MaxIndex INT
	SET @Segment = (SELECT MAX(VariableIndex) FROM main.CarePlanQuestions WHERE CarePlanID = @CarePlanID);

	CREATE TABLE #QuestionAnswers
	(
		QuestionID INT,
		NextID INT
	);

	-- Insert data into #QuestionAnswers
	INSERT INTO #QuestionAnswers (QuestionID, NextID)
	SELECT DISTINCT QuestionID, NextID
	FROM main.QuestionAnswers
	WHERE NextID IS NOT NULL;

	CREATE TABLE #QuestionIDs
	(
		QuestionID INT,
		ParentID INT,
		LanguageID INT,
		CarePlanID INT,
		QuestionOrder INT,
		SheetName NVARCHAR(255)
	);

	-- Insert data into #QuestionIDs
	INSERT INTO #QuestionIDs (QuestionID, ParentID, LanguageID, CarePlanID, QuestionOrder, SheetName)
	SELECT
		q.ID AS QuestionID,
		q.ID AS ParentID,
		q.LanguageID AS LanguageID,
		cp.ID AS CarePlanID,
		QuestionOrder,
		CASE 
			WHEN @MaxIndex > 1 THEN CONCAT (@Segment, ' ', cq.VariableIndex)
			ELSE 'Fixed' 
		END AS SheetName
	FROM main.Question q
	JOIN main.CarePlanQuestions cq ON q.ID = cq.QuestionID
	JOIN main.CarePlan cp ON cp.ID = cq.CarePlanID

	INSERT INTO #QuestionIDs (QuestionID, ParentID, LanguageID, CarePlanID, QuestionOrder, SheetName)
	SELECT 
		chil.id AS QuestionId,
		cqa.QuestionID AS ParentId,
		chil.LanguageId,
		sq.CarePlanID,
		sq.QuestionOrder,
		sq.SheetName
	FROM #QuestionIDs AS sq
	JOIN #QuestionAnswers AS cqa ON cqa.QuestionID = sq.QuestionId
	JOIN main.Question chil ON cqa.NextID = chil.ID;



	WITH Summary AS 
	(
		SELECT QuestionID, [1] AS Summary, [2] AS [SMSSummaryPostCall]
		FROM (
			SELECT Content, QuestionID, AlertType
			FROM main.Alerts
		) P
		PIVOT
		(	
			MAX(CONTENT)  FOR AlertType IN ([1], [2])
		) AS PivotTable
	),
	QuestionOptions AS (
		SELECT q.ID AS QuestionID, q.LanguageID, COUNT(o.ID) AS NumOption, STRING_AGG(o.Options, ';') WITHIN GROUP (ORDER BY o.ID) AS OptionStr 
		FROM main.Question q
		LEFT JOIN main.QuestionAnswers qa ON q.ID = qa.QuestionID
		LEFT JOIN main.Options o ON qa.OptionID = o.ID AND o.LanguageID = q.LanguageID
		GROUP BY q.ID, q.LanguageID
	),
	SystemOptions AS (
		SELECT STRING_AGG(Value, ';') AS YesNo, LanguageCode AS LanguageID
		FROM [main].[SystemOptionsTranslations] 
		WHERE TagName IN ('Affirmation', 'Negation')
		GROUP BY LanguageCode
	)
	SELECT * FROM (SELECT
		cp.ID AS [FrameworkID],
		cp.Name AS [FrameworkName],
		cpg.Name AS [FrameworkGroup],
		l.Description AS [FrameworkLanguage],
		cp.Voice AS [FrameworkVoice],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn 
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Custom Question' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Custom Question Prompts' AS [PromptType],
		p.PromptContent AS [PromptContent],
		p.PromptContentWeb AS [PromptContentWeb],
		p.PromptContentSms AS [PromptContentSMS],
		p.PromptUrl AS [PromptURL],
		qid.SheetName
	FROM #QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.CarePlan cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePlanGroup cpg ON cp.CarePlanGroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID 
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.Prompts p ON p.ID = q.PromptID AND p.LanguageID = q.LanguageID
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId
	WHERE cp.ID = @CarePlanID
	ORDER BY qid.QuestionOrder OFFSET 0 ROWS
	) T
	UNION ALL
	SELECT
		cp.ID AS [FrameworkID],
		cp.Name AS [FrameworkName],
		cpg.Name AS [FrameworkGroup],
		l.Description AS [FrameworkLanguage],
		cp.Voice AS [FrameworkVoice],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn 
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Answer Options' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Options' AS [PromptType],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN qt.Name 
			ELSE o.Options 
		END AS [PromptContent],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN qt.Name 
			ELSE o.OptionWeb 
		END AS [PromptContentWeb],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN qt.Name 
		ELSE o.OptionSms 
		END AS [PromptContentSMS],
		o.AudioUrl AS [PromptURL],
		qid.SheetName
	FROM #QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.CarePlan cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePlanGroup cpg ON cp.CarePlanGroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID
	JOIN main.QuestionAnswers qa ON qa.QuestionId = qid.QuestionId
	JOIN main.Options o on qa.OptionID = o.ID AND o.LanguageID = cp.LanguageId
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId
	WHERE cp.ID = @CarePlanID
	AND q.QuestionTypeID NOT IN (2, 3, 7, 14, 17)
	
	UNION ALL 

	SELECT
		cp.ID AS [FrameworkID],
		cp.Name AS [FrameworkName],
		cpg.Name AS [FrameworkGroup],
		l.Description AS [FrameworkLanguage],
		cp.Voice AS [FrameworkVoice],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn 
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Answer Options' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Options' AS [PromptType],
		CASE WHEN q.QuestionTypeID IN (18, 19, 20) THEN qt.Name 
			ELSE NULL
		END AS [PromptContent],
		CASE WHEN q.QuestionTypeID IN (18, 19, 20) THEN qt.Name 
			ELSE NULL
		END AS [PromptContentWeb],
		CASE WHEN q.QuestionTypeID IN (18, 19, 20) THEN qt.Name 
		ELSE NULL
		END AS [PromptContentSMS],
		NULL AS [PromptURL],
		qid.SheetName
	FROM #QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.CarePlan cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePlanGroup cpg ON cp.CarePlanGroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId
	WHERE cp.ID = @CarePlanID AND q.QuestionTypeID IN (18, 19, 20)

	UNION ALL 

	SELECT
		cp.ID AS [FrameworkID],
		cp.Name AS [FrameworkName],
		cpg.Name AS [FrameworkGroup],
		l.Description AS [FrameworkLanguage],
		cp.Voice AS [FrameworkVoice],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn 
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Answer Options' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Options' AS [PromptType],
		CASE WHEN q.QuestionTypeID = 23 THEN qt.Name 
			ELSE NULL
		END AS [PromptContent],
		CASE WHEN q.QuestionTypeID = 23 THEN qt.Name 
			ELSE NULL
		END AS [PromptContentWeb],
		CASE WHEN q.QuestionTypeID = 23 THEN qt.Name 
		ELSE NULL
		END AS [PromptContentSMS],
		NULL AS [PromptURL],
		qid.SheetName
	FROM #QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.CarePlan cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePlanGroup cpg ON cp.CarePlanGroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId
	WHERE cp.ID = @CarePlanID AND q.QuestionTypeID = 23
	
	UNION ALL

	SELECT
		cp.ID AS [FrameworkID],
		cp.Name AS [FrameworkName],
		cpg.Name AS [FrameworkGroup],
		l.Description AS [FrameworkLanguage],
		cp.Voice AS [FrameworkVoice],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Instructions' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Instruction Prompts' AS [PromptType],
		p.PromptContent AS [PromptContent],
		p.PromptContentWeb AS [PromptContentWeb],
		p.PromptContentSms AS [PromptContentSMS],
		p.PromptUrl AS [PromptURL],
		sq.SheetName
	FROM #QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.CarePlan cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePlanGroup cpg ON cp.CarePlanGroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.QuestionCareRecordings qcr ON qcr.QuestionID = qid.QuestionID
	JOIN main.CareRecordings cr on qcr.CareRecordingID = cr.ID
	JOIN main.Prompts p ON p.ID = cr.PromptId AND p.LanguageID = q.LanguageID
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId
	WHERE cp.ID = @CarePlanID AND qid.ParentID = qid.QuestionID
	AND qcr.QuestionRecordingTypeID in (1, 2, 3)

	UNION ALL

	SELECT
		cp.ID AS [FrameworkID],
		cp.Name AS [FrameworkName],
		cpg.Name AS [FrameworkGroup],
		l.Description AS [FrameworkLanguage],
		cp.Voice AS [FrameworkVoice],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Instructions' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Instruction Prompts' AS [PromptType],
		p.PromptContent AS [PromptContent],
		p.PromptContentWeb AS [PromptContentWeb],
		p.PromptContentSms AS [PromptContentSMS],
		p.PromptUrl AS [PromptURL],
		sq.SheetName
	FROM #QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.CarePlan cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePlanGroup cpg ON cp.CarePlanGroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.QuestionAnswers qa ON qa.QuestionID = qid.QuestionID
	JOIN main.QuestionAnswerCareRecordings qcr ON qcr.QuestionAnswerID = qa.ID
	JOIN main.CareRecordings cr on qcr.CareRecordingID = cr.ID
	JOIN main.Prompts p ON p.ID = cr.PromptId AND p.LanguageID = q.LanguageID
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId
	WHERE cp.ID = @CarePlanID AND qid.ParentID = qid.QuestionID
	AND qcr.QuestionRecordingTypeID in (1, 2, 3)
	SET NOCOUNT OFF
	DROP TABLE #QuestionAnswers;
	DROP TABLE #QuestionIDs;
END
GO
/****** Object:  StoredProcedure [main].[usp_ExportOverrides]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [main].[usp_ExportOverrides]
@PartnerID BIGINT
AS
BEGIN
	SET NOCOUNT ON;
	SELECT
		cr.Id AS RecordingID,
		cr.name AS [RecordingName],
		cr.description AS [RecordingDescription],
		cr.text AS [RecordingText],
		cr.section AS [RecordingSection],
		cr.type AS [RecordingType],
		cr.LanguageID, 
		cr.PromptId, 
		p.PromptContent, 
		p.PromptContentWeb, 
		p.PromptContentSms, 
		p.PromptUrl,
		scr.IvrOverrideTypeId AS IVROverrideType,
		scr.partnerId AS [ClientID]
	FROM main.CareRecordings cr WITH(NOLOCK)
	INNER JOIN main.PartnerCareRecordings scr WITH(NOLOCK) ON cr.Id = scr.CareRecordingId
	INNER JOIN [main].[Prompts] p WITH(NOLOCK) ON cr.promptid = p.id AND cr.LanguageID = p.LanguageID
	WHERE scr.PartnerID = @PartnerID AND scr.IvrOverrideTypeId IS NOT NULL
	ORDER BY scr.IvrOverrideTypeId
	SET NOCOUNT OFF;
END
GO
/****** Object:  StoredProcedure [main].[usp_ExportPathwayInfo]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [main].[usp_ExportPathwayInfo]
	@PartnerID BigINT
AS
BEGIN
	SET NOCOUNT ON;
	WITH QuestionAnswers
	AS (
		SELECT DISTINCT QuestionID, NextID
		FROM main.QuestionAnswers
		WHERE NextID IS NOT NULL
	),
	QuestionIDs
	AS
	(
		SELECT
			q.ID AS QuestionID,
			q.ID AS ParentID,
			q.LanguageID AS LanguageID,
			cp.ID AS CarePlanID,
			QuestionOrder
		FROM main.Question q
		JOIN main.CarePathwayQuestions cq ON q.ID = cq.QuestionID
		JOIN main.CarePathway cp ON cp.ID = cq.CarePathwayID

		UNION ALL 
		SELECT 
			chil.id AS QuestionId,
			cqa.QuestionID AS ParentId,
			chil.LanguageId,
			sq.CarePlanID,
			sq.QuestionOrder
	FROM QuestionIDs AS sq
	JOIN QuestionAnswers AS cqa ON cqa.QuestionID = sq.QuestionId
	JOIN main.Question chil ON cqa.NextID = chil.ID
	),
	Summary AS 
	(
		SELECT QuestionID, [1] AS Summary, [2] AS [SMSSummaryPostCall]
		FROM (
			SELECT Content, QuestionID, AlertType
			FROM main.Alerts
		) P
		PIVOT
		(	
			MAX(CONTENT)  FOR AlertType IN ([1], [2])
		) AS PivotTable
	),
	QuestionOptions AS (
		SELECT q.ID AS QuestionID, q.LanguageID, COUNT(o.ID) AS NumOption, STRING_AGG(o.Options, ';') WITHIN GROUP (ORDER BY o.ID) AS OptionStr 
		FROM main.Question q
		LEFT JOIN main.QuestionAnswers qa ON q.ID = qa.QuestionID
		LEFT JOIN main.Options o ON qa.OptionID = o.ID AND o.LanguageID = q.LanguageID
		GROUP BY q.ID, q.LanguageID
	),
	SystemOptions AS (
		SELECT STRING_AGG(Value, ';') WITHIN GROUP (ORDER BY ID) AS YesNo, LanguageCode AS LanguageID
		FROM [main].[SystemOptionsTranslations] 
		WHERE TagName IN ('Affirmation', 'Negation')
		GROUP BY LanguageCode
	)
	SELECT
		cp.ID AS [PathwayID],
		cp.Title AS [PathwayName],
		cpg.Name AS [PathwayGroup],
		l.Description AS [PathwayLanguage],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn 
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Custom Question' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Custom Question Prompts' AS [PromptType],
		p.PromptContent AS [PromptContent],
		p.PromptContentWeb AS [PromptContentWeb],
		p.PromptContentSms AS [PromptContentSMS],
		p.PromptUrl AS [PromptURL]
	FROM QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.CarePathway cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePathwayGroup cpg ON cp.GroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID 
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.Prompts p ON p.ID = q.PromptID AND p.LanguageID = q.LanguageID
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId
	WHERE cp.PartnerID = @PartnerID

	UNION ALL
	SELECT
		cp.ID AS [PathwayID],
		cp.Title AS [PathwayName],
		cpg.Name AS [PathwayGroup],
		l.Description AS [PathwayLanguage],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn 
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Answer Options' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Options' AS [PromptType],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN qt.Name 
			ELSE o.Options 
		END AS [PromptContent],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN qt.Name 
			ELSE o.OptionWeb 
		END AS [PromptContentWeb],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN qt.Name 
		ELSE o.OptionSms 
		END AS [PromptContentSMS],
		o.AudioUrl AS [PromptURL]
	FROM QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.CarePathway cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePathwayGroup cpg ON cp.GroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID
	JOIN main.QuestionAnswers qa ON qa.QuestionId = qid.QuestionId
	JOIN main.Options o on qa.OptionID = o.ID AND o.LanguageID = cp.LanguageId
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId
	WHERE cp.PartnerID = @PartnerID
	AND q.QuestionTypeID NOT IN (2, 3, 7, 14, 17)
	
	UNION ALL 

	SELECT
		cp.ID AS [PathwayID],
		cp.Title AS [PathwayName],
		cpg.Name AS [PathwayGroup],
		l.Description AS [PathwayLanguage],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn 
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Answer Options' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Options' AS [PromptType],
		CASE WHEN q.QuestionTypeID IN (18, 19, 20) THEN qt.Name 
			ELSE NULL
		END AS [PromptContent],
		CASE WHEN q.QuestionTypeID IN (18, 19, 20) THEN qt.Name 
			ELSE NULL
		END AS [PromptContentWeb],
		CASE WHEN q.QuestionTypeID IN (18, 19, 20) THEN qt.Name 
		ELSE NULL
		END AS [PromptContentSMS],
		NULL AS [PromptURL]
	FROM QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.CarePathway cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePathwayGroup cpg ON cp.GroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId
	WHERE cp.PartnerID = @PartnerID AND q.QuestionTypeID IN (18, 19, 20)

	UNION ALL 

	SELECT
		cp.ID AS [PathwayID],
		cp.Title AS [PathwayName],
		cpg.Name AS [PathwayGroup],
		l.Description AS [PathwayLanguage],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn 
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Answer Options' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Options' AS [PromptType],
		CASE WHEN q.QuestionTypeID = 23 THEN qt.Name 
			ELSE NULL
		END AS [PromptContent],
		CASE WHEN q.QuestionTypeID = 23 THEN qt.Name 
			ELSE NULL
		END AS [PromptContentWeb],
		CASE WHEN q.QuestionTypeID = 23 THEN qt.Name 
		ELSE NULL
		END AS [PromptContentSMS],
		NULL AS [PromptURL]
	FROM QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.CarePathway cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePathwayGroup cpg ON cp.GroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId
	WHERE cp.PartnerID = @PartnerID AND q.QuestionTypeID = 23
	
	UNION ALL

	SELECT
		cp.ID AS [PathwayID],
		cp.Title AS [PathwayName],
		cpg.Name AS [PathwayGroup],
		l.Description AS [PathwayLanguage],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Instructions' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Instruction Prompts' AS [PromptType],
		p.PromptContent AS [PromptContent],
		p.PromptContentWeb AS [PromptContentWeb],
		p.PromptContentSms AS [PromptContentSMS],
		p.PromptUrl AS [PromptURL]
	FROM QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.CarePathway cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePathwayGroup cpg ON cp.GroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.QuestionCareRecordings qcr ON qcr.QuestionID = qid.QuestionID
	JOIN main.CareRecordings cr on qcr.CareRecordingID = cr.ID
	JOIN main.Prompts p ON p.ID = cr.PromptId AND p.LanguageID = q.LanguageID
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId
	WHERE cp.PartnerID = @PartnerID AND qid.ParentID = qid.QuestionID
	AND qcr.QuestionRecordingTypeID in (1, 2, 3)

	UNION ALL

	SELECT
		cp.ID AS [PathwayID],
		cp.Title AS [PathwayName],
		cpg.Name AS [PathwayGroup],
		l.Description AS [PathwayLanguage],
		cp.CreatedOn AS [CreatedOn],
		cp.LastModifiedOn AS [LastModifiedOn],
		CASE WHEN cp.IsDeactivated = 1 THEN cp.LastModifiedOn
		ELSE NULL END AS [DeactivatedOn],
		CASE WHEN qid.ParentID = qid.QuestionID THEN NULL ELSE qid.ParentID END AS [ParentQuestionID],
		qid.QuestionID AS [QuestionID],
		qid.QuestionOrder AS [OrderID],
		qc.Name AS [QuestionCategory],
		CASE WHEN q.QuestionTypeID IN (4, 5, 6) THEN 'Date/Time'
			WHEN q.QuestionTypeID IN (18, 19, 20) THEN 'String Validation'
			WHEN q.QuestionTypeID = 23 THEN 'Full Address'
			WHEN q.QuestionTypeID = 0 AND qo.NumOption = 2 AND qo.OptionStr = so.YesNo THEN 'Yes Or No'
			WHEN q.QuestionTypeID = 0 THEN 'Simple Choice'
			WHEN q.QuestionTypeID = 7 THEN 'Message'
			ELSE qt.Name 
		END AS [QuestionType],
		CASE WHEN q.InstructionMode = 0 THEN 'Default'
			WHEN q.InstructionMode = 1 THEN 'Verbose'
			WHEN q.InstructionMode = 2 THEN 'Instructional'
			WHEN q.InstructionMode = 3 THEN 'Concise'
		ELSE NULL END AS [QuestionMode],
		'Instructions' AS [QuestionComponentType],
		CASE 
			WHEN q.QuestionChannel = 1 THEN 'Call'
			WHEN q.QuestionChannel = 2 THEN 'Chat'
			WHEN q.QuestionChannel = 3 THEN 'Call,Chat'
			WHEN q.QuestionChannel = 4 THEN 'Text'
			WHEN q.QuestionChannel = 5 THEN 'Call,Text'
			WHEN q.QuestionChannel = 6 THEN 'Chat,Text'
			WHEN q.QuestionChannel = 7 THEN 'Call,Chat,Text'
		ELSE NULL END AS [EngagementChannel],
		s.Summary AS [QuestionSummary],
		s.[SMSSummaryPostCall] AS [SMSSummaryPostCall],
		q.PromptID AS [PromptID],
		q.VitalTypeID AS [VitalTypeID],
		q.LanguageID AS [PromptLanguageID],
		'Instruction Prompts' AS [PromptType],
		p.PromptContent AS [PromptContent],
		p.PromptContentWeb AS [PromptContentWeb],
		p.PromptContentSms AS [PromptContentSMS],
		p.PromptUrl AS [PromptURL]
	FROM QuestionIDs qid
	JOIN QuestionOptions qo ON qid.QuestionID = qo.QuestionID
	JOIN SystemOptions so ON so.LanguageID = qid.LanguageID
	JOIN main.CarePathway cp ON qid.CarePlanID = cp.ID
	JOIN main.M_CarePathwayGroup cpg ON cp.GroupID = cpg.ID
	JOIN main.M_Language l ON cp.LanguageId = l.ID
	JOIN main.Question q ON qid.QuestionID = q.ID
	JOIN main.M_QuestionCategory qc ON q.QuestionCategory = qc.ID
	JOIN main.M_QuestionType qt ON qt.ID = q.QuestionTypeID
	JOIN main.QuestionAnswers qa ON qa.QuestionID = qid.QuestionID
	JOIN main.QuestionAnswerCareRecordings qcr ON qcr.QuestionAnswerID = qa.ID
	JOIN main.CareRecordings cr on qcr.CareRecordingID = cr.ID
	JOIN main.Prompts p ON p.ID = cr.PromptId AND p.LanguageID = q.LanguageID
	LEFT JOIN Summary s ON qid.QuestionID = s.QuestionId
	WHERE cp.PartnerID = @PartnerID AND qid.ParentID = qid.QuestionID
	AND qcr.QuestionRecordingTypeID in (1, 2, 3)
	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [main].[usp_Get_Answer_Recordings_By_CarePathway_Id]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-22-2024
-- Description: Get answer recordings by care pathway ID
-- =============================================
CREATE PROCEDURE [main].[usp_Get_Answer_Recordings_By_CarePathway_Id]
(
    -- Add the parameters for the stored procedure here
     @carePathwayID BIGINT
	,@isCustomQuestion BIT = 1
	,@numericResult INT = 1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
	WITH SubQuestions (QuestionId,ParentId)
		AS
		( 
				SELECT cq.Id AS QuestionId, cq.Id AS ParentId
				FROM [Main].[Question] cq
				INNER JOIN [Main].[CarePathwayQuestions] QBQ 
					ON cq.Id = (CASE WHEN     (isnumeric(QBQ.QuestionId) = @numericResult)   THEN    CAST(QBQ.QuestionId AS bigint)  ELSE    0  END)
				WHERE QBQ.CarePathwayID = @carePathwayID AND QBQ.IsCustomQuestion = @isCustomQuestion
			UNION ALL
				SELECT  cq.Id AS QuestionId,cqa.QuestionID AS ParentId
				FROM [Main].[Question] cq
				INNER JOIN [Main].[QuestionAnswers] AS cqa 
					ON cqa.NextID =cq.Id
				INNER JOIN SubQuestions AS sq
					ON cqa.QuestionId = sq.QuestionId
		)
		SELECT CQR.QuestionAnswerID AS CqrId ,CR.*,P.PromptUrl AS AudioUrl,CQR.QuestionRecordingTypeID 
		FROM [Main].[QuestionAnswerCareRecordings] CQR
		INNER JOIN [Main].[CareRecordings] CR 
			ON CQR.CareRecordingId = CR.Id
		INNER JOIN [Main].[Prompts] P 
			ON CR.PromptId = P.Id AND CR.LanguageId = P.LanguageId
		WHERE CQR.QuestionAnswerID IN (
			SELECT DISTINCT cqa.Id FROM SubQuestions sq
			LEFT JOIN [Main].[QuestionAnswers] cqa ON cqa.QuestionId = sq.QuestionId
		)

END
GO
/****** Object:  StoredProcedure [main].[usp_Get_Care_Recordings_By_CarePathway_Id]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-22-2024
-- Description: Get care recordings by care pathway ID
-- =============================================
CREATE PROCEDURE [main].[usp_Get_Care_Recordings_By_CarePathway_Id]
(
    -- Add the parameters for the stored procedure here
     @carePathwayID BIGINT
	,@isCustomQuestion BIT = 1
	,@numericResult INT = 1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
	WITH SubQuestions (QuestionId,ParentId)
		AS
		( 
				SELECT Q.Id AS QuestionId, Q.Id AS ParentId
				FROM [Main].[Question] AS Q
				INNER JOIN [Main].[CarePathwayQuestions] AS CPQ 
				ON Q.Id = (CASE WHEN (isnumeric(CPQ.QuestionId) = @numericResult) THEN  CAST(CPQ.QuestionId AS BIGINT) ELSE 0  END)
				WHERE CPQ.ID = @carePathwayId 
				AND CPQ.IsCustomQuestion = @isCustomQuestion
			UNION ALL
				SELECT  Q.Id AS QuestionId, cqa.QuestionID AS ParentId
				FROM [Main].[Question] AS Q
				INNER JOIN [Main].[QuestionAnswers] AS cqa ON cqa.NextID =Q.Id
				INNER JOIN SubQuestions AS sq
				ON cqa.QuestionId = sq.QuestionId
		)
		SELECT CQR.QuestionId AS CqrId ,CR.*,P.PromptUrl AS AudioUrl,CQR.QuestionRecordingTypeID FROM 
		[Main].[QuestionCareRecordings] CQR
		INNER JOIN [Main].[CareRecordings] CR ON CQR.CareRecordingId = CR.Id
		INNER JOIN [Main].[Prompts] P ON CR.PromptId = P.Id AND CR.LanguageId = P.LanguageId
		WHERE QuestionId IN (
			select distinct QuestionId FROM SubQuestions sq
		)

END
GO
/****** Object:  StoredProcedure [main].[usp_Get_CarePlan_Questions_By_CarePathway_Id]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-22-2024
-- Description: Get care plan questions by care pathway ID
-- =============================================
CREATE PROCEDURE [main].[usp_Get_CarePlan_Questions_By_CarePathway_Id]
(
    -- Add the parameters for the stored procedure here
     @carePathwayID BIGINT
	,@isCustomQuestion BIT = 1
	,@numericResult INT = 1
	,@alertTypeID INT = 1
	,@frequency INT = 1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
	WITH SubQuestions (QuestionId,ParentId,QuestionTypeID,VitalTypeId,TextId,SampleId,IsPublic,QuestionCategory,[Order],Grammar,DisableReaction,DisableInstruction,QuestionHangUp,InstructionMode,MinDigits,MaxDigits,Decimals,Wait,LanguageId,ReadNumberAs,Frequency,QuestionChannel,CheckOut, RepeatAfterAttemps)
	AS
	(   (SELECT cq.Id AS QuestionId, cq.Id AS ParentId,cq.QuestionTypeID,cq.VitalTypeId,cq.PromptID AS TextId,cq.[Sample] AS SampleId,cq.IsPublic,cq.QuestionCategory,QBQ.QuestionOrder,cq.Grammar,cq.DisableReaction,cq.DisableInstruction,cq.QuestionHangUp,cq.InstructionMode,cq.MinDigits,cq.MaxDigits,cq.Decimals,cq.Wait,cq.LanguageId,cq.ReadNumberAs,cq.Frequency,cq.QuestionChannel,cq.CheckOut, cq.RepeatAfterAttemps
		FROM [Main].[Question] cq
		INNER JOIN [Main].[CarePathwayQuestions] QBQ ON cq.Id = (CASE WHEN     (isnumeric(QBQ.QuestionId) = @numericResult)   THEN    CAST(QBQ.QuestionId AS BIGINT)  ELSE    0  END)
		WHERE QBQ.CarePathwayID = @carePathwayID AND QBQ.IsCustomQuestion = @isCustomQuestion)
		UNION ALL
		SELECT  cq.Id AS QuestionId,cqa.QuestionId AS ParentId,cq.QuestionTypeID,cq.VitalTypeId,cq.PromptID AS TextId,cq.[Sample] AS SampleId,cq.IsPublic,cq.QuestionCategory,sq.[Order],cq.Grammar,cq.DisableReaction,cq.DisableInstruction,cq.QuestionHangUp,cq.InstructionMode,cq.MinDigits,cq.MaxDigits,cq.Decimals,cq.Wait,cq.LanguageId,cq.ReadNumberAs,cq.Frequency,cq.QuestionChannel,cq.CheckOut, cq.RepeatAfterAttemps
		FROM [Main].[Question] cq
		INNER JOIN [Main].[QuestionAnswers] AS cqa ON cqa.NextID = cq.Id
		INNER JOIN SubQuestions AS sq
			ON cqa.QuestionId = sq.QuestionId
	)

	SELECT distinct sq.*,cqa.Id,cqa.ReadingLevel,cqa.TriggerAlert,cqa.[NextID],o.Options,o.OptionWeb,o.OptionSms,cqa.[From],cqa.[To],p.PromptContent,cqa.[OptionID] AS OptionId,p.[AudioDescription],p.PromptUrl, [Order],cqa.Action, cqa.DisableAnswerReaction, cqa.[Sample] AS AnswerSampleId, a.content AS SummaryText, a.DescriptionUrl AS SummaryUrl, p.[PromptContentWeb], p.[PromptContentSms]
	,[cqa].[TriggerFaxAlert] AS 'TriggerFaxAlert',cqa.[Value] AS 'Value', sq.RepeatAfterAttemps
	From SubQuestions sq
	LEFT JOIN [Main].[QuestionAnswers] cqa ON cqa.QuestionId = sq.QuestionId
	LEFT JOIN [Main].[Prompts] p ON p.Id=sq.TextId AND p.LanguageId=sq.LanguageId
	LEFT JOIN [Main].[Options] o ON o.Id=cqa.OptionID AND o.LanguageId=sq.LanguageId
	LEFT JOIN [Main].[Alerts] a ON a.VitalTypeID = sq.VitalTypeId AND a.Frequency = @frequency AND a.AlertType = @alertTypeID AND a.LanguageId = sq.LanguageId AND sq.QuestionId = a.QuestionId

END
GO
/****** Object:  StoredProcedure [main].[usp_Get_CarePlan_Questions_By_CarePlanId]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-22-2024
-- Description: Get care plan questions by care plan ID
-- =============================================
CREATE PROCEDURE [main].[usp_Get_CarePlan_Questions_By_CarePlanId]
(
    -- Add the parameters for the stored procedure here
     @carePlanId BIGINT
	,@isCustomQuestion BIT = 1
	,@numericResult INT = 1
	,@alertTypeID INT = 1
	,@frequency INT = 1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
	WITH SubQuestions (QuestionId,ParentId,QuestionTypeID,VitalTypeId,TextId,SampleId,IsPublic,QuestionCategory,QuestionHangUp,InstructionMode,MinDigits,MaxDigits,Decimals,Wait,LanguageId,ReadNumberAs,Frequency,QuestionChannel,CheckOut, Whisper, RepeatAfterAttemps,BargeIn)
	AS
		(   (SELECT cq.Id AS  QuestionId, cq.Id AS  ParentId,cq.QuestionTypeID,cq.VitalTypeId,cq.PromptID AS  TextId,cq.[Sample] AS  SampleId,cq.IsPublic,cq.QuestionCategory,cq.QuestionHangUp,cq.InstructionMode,cq.MinDigits,cq.MaxDigits,cq.Decimals,cq.Wait,cq.LanguageId,cq.ReadNumberAs,cq.Frequency,cq.QuestionChannel,cq.CheckOut, cq.Whisper, cq.RepeatAfterAttemps, cq.BargeIn
			FROM [Main].[Question] AS cq
			INNER JOIN [Main].[CarePlanQuestions] flq ON cq.Id = (CASE WHEN (isnumeric(flq.QuestionId) = @numericResult)   THEN CAST(flq.QuestionId AS bigint)  ELSE    0  END)
			WHERE flq.CarePlanID = @carePlanId AND flq.IsCustomQuestion = @isCustomQuestion 
		UNION  
			SELECT cq.Id AS  QuestionId, cq.Id AS  ParentId,cq.QuestionTypeID,cq.VitalTypeId,cq.PromptID AS  TextId,cq.Sample AS  SampleId,cq.IsPublic,cq.QuestionCategory,cq.QuestionHangUp,cq.InstructionMode,cq.MinDigits,cq.MaxDigits,cq.Decimals,cq.Wait,cq.LanguageId,cq.ReadNumberAs,cq.Frequency,cq.QuestionChannel,cq.CheckOut, cq.Whisper, cq.RepeatAfterAttemps, cq.BargeIn
			FROM [Main].[Question] AS cq
			INNER JOIN [Main].[CarePathwayQuestions] AS QBQ ON cq.Id = (CASE WHEN     (isnumeric(QBQ.QuestionId) = @numericResult)   THEN    CAST(QBQ.QuestionId AS bigint)  ELSE    0  END)
			INNER JOIN [Main].[CarePlanQuestions] AS flq ON cq.Id = (CASE WHEN     (isnumeric(flq.QuestionId) = @numericResult)   THEN    CAST(flq.QuestionId AS bigint)  ELSE    0  END)
			WHERE flq.CarePlanID = @carePlanId AND flq.IsCustomQuestion = @isCustomQuestion AND QBQ.IsCustomQuestion = @isCustomQuestion)
		UNION ALL
			SELECT  cq.Id AS  QuestionId,cqa.QuestionId AS  ParentId,cq.QuestionTypeID,cq.VitalTypeId,cq.PromptID AS  TextId,cq.[Sample] AS  SampleId,cq.IsPublic,cq.QuestionCategory,cq.QuestionHangUp,cq.InstructionMode,cq.MinDigits,cq.MaxDigits,cq.Decimals,cq.Wait,cq.LanguageId,cq.ReadNumberAs,cq.Frequency,cq.QuestionChannel,cq.CheckOut, cq.Whisper, cq.RepeatAfterAttemps, cq.BargeIn
			FROM [Main].[Question] AS cq
			INNER JOIN [Main].[QuestionAnswers] AS cqa ON cqa.NextId =cq.Id
			INNER JOIN SubQuestions AS sq
				ON cqa.QuestionId = sq.QuestionId
	)

	SELECT sq.*,cqa.Id,cqa.ReadingLevel,cqa.TriggerAlert,cqa.[NextId],o.Options,o.OptionWeb,o.OptionSms,cqa.[From],cqa.[To],p.PromptContent,cqa.[OptionID] AS  OptionId,p.[AudioDescription],p.PromptUrl, cqa.DisableAnswerReaction,cqa.[Action], cqa.[Sample] AS  AnswerSampleId, a.content AS  SummaryText, a.DescriptionUrl AS  SummaryUrl, p.[PromptContentWeb], p.[PromptContentSms],
		[CQA].[TriggerFaxAlert] AS 'TriggerFaxAlert',cqa.[Value] AS 'Value'
	FROM SubQuestions AS sq
	LEFT JOIN [Main].[QuestionAnswers] cqa ON cqa.QuestionId = sq.QuestionId
	LEFT JOIN [Main].[Prompts] p ON p.Id=sq.TextId AND  p.LanguageId=sq.LanguageId
	LEFT JOIN [Main].[Options] o ON o.Id=cqa.OptionID AND  o.LanguageId=sq.LanguageId
	LEFT JOIN [Main].[Alerts] a ON a.VitalTypeID = sq.VitalTypeId AND a.Frequency = @frequency AND a.AlertType = @alertTypeID AND a.LanguageId = sq.LanguageId AND  sq.QuestionId = a.QuestionId

END
GO
/****** Object:  StoredProcedure [main].[usp_Get_CarePlanQuestionPlaceHolder]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [main].[usp_Get_CarePlanQuestionPlaceHolder] 
@schedulerId BIGINT,
@questionTypeID INT = 11,
@isCarePlanQuestion BIT = 1
AS 
    BEGIN
        SET NOCOUNT ON;

        SELECT Q.[Id] FROM [Main].[Question] Q 
        INNER JOIN [Main].[CarePlanQuestions] CPQ ON CPQ.QuestionId = Q.Id AND CPQ.IsCustomQuestion = @isCarePlanQuestion
        INNER JOIN [Main].[AutomatedCallsSchedule] ACS ON ACS.[workflowtemplate] = CAST (CPQ.[CarePlanID] AS NVARCHAR) 
		AND ACS.[WeekDay] = CPQ.[WeekDay] AND ACS.[Call] = CPQ.[Call] 
        WHERE ACS.[ID] = @schedulerId AND Q.QuestionTypeID = @questionTypeID
        ORDER BY [QuestionOrder]
    END
GO
/****** Object:  StoredProcedure [main].[usp_Get_CarePlanQuestions_Id]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [main].[usp_Get_CarePlanQuestions_Id] 
@schedulerId BIGINT

AS 
    BEGIN
        SET NOCOUNT ON;

        SELECT CPQ.[QuestionId] FROM [Main].[CarePlanQuestions] AS CPQ 
		INNER JOIN [Main].[AutomatedCallsSchedule] AS ACS
        ON ACS.[workflowtemplate] = CAST (CPQ.[CarePlanID] AS NVARCHAR) 
		AND ACS.[WeekDay] = CPQ.[WeekDay] 
        AND ACS.[Call] = CPQ.[Call] 
        WHERE [ID] = @schedulerId
        ORDER BY CPQ.[QuestionOrder]

    END
GO
/****** Object:  StoredProcedure [main].[usp_Get_CareRules_By_CarePathway_Id]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-22-2024
-- Description: Get question care rules by care pathway ID
-- =============================================
CREATE PROCEDURE [main].[usp_Get_CareRules_By_CarePathway_Id]
(
    -- Add the parameters for the stored procedure here
     @carePathwayID BIGINT
	,@isCustomQuestion BIT = 1
	,@numericResult INT = 1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
	WITH SubQuestions (QuestionId,ParentId)
		AS
		( 
			SELECT cq.Id as QuestionId, cq.Id as ParentId
			FROM [Main].[Question] cq
			inner join [Main].[CarePathwayQuestions] QBQ on cq.Id = (CASE WHEN     (isnumeric(QBQ.QuestionId) = @numericResult)   THEN    CAST(QBQ.QuestionId AS bigint)  ELSE    0  END)
			WHERE QBQ.CarePathwayID = @carePathwayID AND QBQ.IsCustomQuestion = @isCustomQuestion
			UNION ALL
			SELECT  cq.Id as QuestionId,cqa.QuestionId as ParentId
			FROM [Main].[Question] cq
			INNER JOIN [Main].[QuestionAnswers] AS cqa on cqa.NextID = cq.Id
			INNER JOIN SubQuestions AS sq
				ON cqa.QuestionId = sq.QuestionId
		)
		SELECT CQR.QuestionId AS CqrId ,CR.Id AS CareRuleId,CR.CareRule 
		FROM [Main].[QuestionCareRules] CQR
		INNER JOIN [Main].[CareRules] CR ON CQR.CareRuleId = CR.Id
		WHERE CQR.QuestionId IN (
			SELECT DISTINCT QuestionId FROM SubQuestions sq
		)

END
GO
/****** Object:  StoredProcedure [main].[usp_Get_RecipientCarePathwayQuestionsId]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-21-2024
-- Description: Get recipient CarePathway Questions ID
-- =============================================
CREATE PROCEDURE [main].[usp_Get_RecipientCarePathwayQuestionsId]
(
    -- Add the parameters for the stored procedure here
    @schedulerId BIGINT
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
    CREATE TABLE #RecipientCarePathway (
        RecipientId BIGINT PRIMARY KEY,
        CarePathwayId BIGINT,
        Order1 tinyint 
    );

    SELECT CPQ.[QuestionId] FROM #RecipientCarePathway RCQB 
    INNER JOIN [Main].[AutomatedCallsSchedule] ACS ON ACS.[CallRecipientRID] = RCQB.RecipientId
    INNER JOIN [Main].[CarePathwayQuestions] CPQ ON CPQ.[CarePathwayID] = RCQB.[CarePathwayId]
    WHERE ACS.[ID] = @schedulerId
    ORDER BY CPQ.[CarePathwayID],CPQ.[QuestionOrder]
END
GO
/****** Object:  StoredProcedure [main].[usp_Get_SystemInstruction_Filtered]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-21-2024
-- Description: when care plan ID is not BIGINT data type must load [IVR].[SystemInstructions]
-- =============================================
CREATE PROCEDURE [main].[usp_Get_SystemInstruction_Filtered]
(
    -- Add the parameters for the stored procedure here
     @languageID INT
	,@carePlanId VARCHAR(50) = NULL
	,@overrides NVARCHAR(MAX) = NULL
	,@emptyPrompt INT = 100
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
    
	WITH instructions AS (

            SELECT
                json_value(j.value,'$.configuration.Actions') as instructionId
            FROM [IVR].CallTemplate ct
            CROSS APPLY OPENJSON(ct.template, '$.Questions') j
            WHERE ct.name = @carePlanId

        )

         SELECT
            DISTINCT
            i.[ID]
            ,i.[ModeType]
            ,i.[WorkflowMode]
            ,p.[ID] as PromptId
            ,p.[PromptContent]
            ,p.[PromptUrl]
            ,p.[DefaultPrompt]
            ,p.[PromptContentSms]
            ,p.[LastModifiedOn]
        FROM instructions sq
        INNER JOIN [Main].[Instructions] AS i
            ON sq.instructionId = i.id
        INNER JOIN [Main].[Prompts] AS p
            ON i.PromptID = p.ID
        WHERE p.LanguageID = @languageID
        UNION
        SELECT
            i.[ID]
            ,i.[ModeType]
            ,i.[WorkflowMode]
            ,p.[ID] as PromptId
            ,p.[PromptContent]
            ,p.[PromptUrl]
            ,p.[DefaultPrompt]
            ,p.[PromptContentSms]
            ,p.[LastModifiedOn]
        FROM [Main].[Instructions] i
        INNER JOIN [Main].[Prompts] p
            ON i.PromptID = p.ID
        INNER JOIN (SELECT VALUE AS TextId FROM STRING_SPLIT(@overrides, ',')) sq
            ON p.id = sq.TextId
        WHERE p.LanguageID = @languageID
        AND p.id NOT IN (@emptyPrompt)

        UNION
        SELECT
            i.[ID]
            ,i.[ModeType]
            ,i.[WorkflowMode]
            ,p.[ID] as PromptId
            ,p.[PromptContent]
            ,p.[PromptUrl]
            ,p.[DefaultPrompt]
            ,p.[PromptContentSms]
            ,p.[LastModifiedOn]
        FROM [Main].[Instructions] AS i
        INNER JOIN [IVR].[SystemInstructions] AS si
            ON i.id = si.InstructionId
        INNER JOIN [Main].[Prompts] p
            ON i.PromptID = p.ID
        WHERE p.LanguageID = @languageID
END
GO
/****** Object:  StoredProcedure [main].[usp_Get_SystemOptions_Filtered]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-21-2024
-- Description: when care plan ID is not BIGINT data type must load [IVR].[SystemOptions]
-- =============================================
CREATE PROCEDURE [main].[usp_Get_SystemOptions_Filtered] 
(
    -- Add the parameters for the stored procedure here
	 @languageID INT
	,@carePlanId VARCHAR(50) = NULL

)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
    WITH options AS  (
        SELECT  
            json_value(h.value,'$.Options') as OptionId
        FROM [IVR].[CallTemplate] ct  
        CROSS APPLY OPENJSON(ct.template, '$.Questions') j 
        CROSS APPLY OPENJSON(j.value, '$.configuration.Triggers') h 
        WHERE ct.name = @carePlanId

        )
        SELECT DISTINCT
             op.id
            ,op.languageId
            ,op.Options
            ,op.CreatedOn
            ,op.LastModifiedOn
            ,op.AudioUrl
            ,op.optionWeb
            ,op.OptionSms
        FROM [Main].[Options] AS op 
        INNER JOIN options AS o ON op.id  = o.OptionId
        WHERE op.LanguageID = @languageID
        UNION  
        SELECT 
             op.id
            ,op.languageId
            ,op.Options
            ,op.CreatedOn
            ,op.LastModifiedOn
            ,op.AudioUrl
            ,op.optionWeb
            ,op.OptionSms
        FROM [Main].[Options] AS op 
        INNER JOIN [IVR].[SystemOptions] AS so ON op.id  = so.Id
        WHERE op.LanguageID = @languageID

END
GO
/****** Object:  StoredProcedure [main].[usp_Get_SystemPrompts_Filtered]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-21-2024
-- Description: when care plan ID is not BIGINT data type must load [dbo].[SystemPrompts]
-- =============================================
CREATE PROCEDURE [main].[usp_Get_SystemPrompts_Filtered] 
(
    -- Add the parameters for the stored procedure here
     @languageID INT
	,@carePlanId VARCHAR(50) = NULL
	,@overrides NVARCHAR(MAX) = NULL
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
	CREATE TABLE #TempOverrides (VALUE INT);

	INSERT INTO #TempOverrides (VALUE)
	SELECT VALUE FROM STRING_SPLIT(@overrides, ',');

    WITH prompts AS (
			SELECT
				json_value(j.value,'$.configuration.Say') as promptId
			FROM ivr.CallTemplate ct WITH(NOLOCK)
			CROSS APPLY OPENJSON(ct.template, '$.Questions') j
			WHERE
				ct.name = @carePlanId
		), audio_prompts AS (
			SELECT
				json_value(h.value,'$.Audio') as promptId
			FROM ivr.CallTemplate ct WITH(NOLOCK)
			CROSS APPLY OPENJSON(ct.template, '$.Questions') j
			CROSS APPLY OPENJSON(j.value, '$.configuration.Choices') h
			WHERE
				ct.name = @carePlanId
		), instructions AS (
			SELECT
				json_value(j.value,'$.configuration.Actions') as instructionId
			FROM ivr.CallTemplate ct WITH(NOLOCK)
			CROSS APPLY OPENJSON(ct.template, '$.Questions') j
			WHERE
				ct.name = @carePlanId
		)
		
		SELECT DISTINCT
			 p.id
			,p.languageId
			,p.promptContent
			,p.CreatedOn
			,p.LastModifiedOn
			,p.promptUrl
			,p.PromptContentWeb
			,p.AudioDescription
			,p.defaultPrompt
			,p.promptContentSms
			,p.PromptContentforReport
		FROM [Main].[Prompts] p WITH(NOLOCK)
		INNER JOIN prompts pr WITH(NOLOCK) ON p.id = pr.promptId
		WHERE
			p.languageId = @languageID
		
		UNION
		SELECT
			 p.id
			,p.languageId
			,p.promptContent
			,p.CreatedOn
			,p.LastModifiedOn
			,p.promptUrl
			,p.PromptContentWeb
			,p.AudioDescription
			,p.defaultPrompt
			,p.promptContentSms
			,p.PromptContentforReport
		FROM [Main].[Prompts] p WITH(NOLOCK)
		INNER JOIN audio_prompts pr ON p.id = pr.promptId
		WHERE
			p.languageId = @languageID
		
		UNION
		SELECT
			p.id
			,p.languageId
			,p.promptContent
			,p.CreatedOn
			,p.LastModifiedOn
			,p.promptUrl
			,p.PromptContentWeb
			,p.AudioDescription
			,p.defaultPrompt
			,p.promptContentSms
			,p.PromptContentforReport
		FROM [Main].[Prompts] p WITH(NOLOCK)
		INNER JOIN [dbo].[SystemPrompts] sp WITH(NOLOCK) ON p.Id = sp.Id
			AND p.languageId = @languageID
		
		UNION
		SELECT
			 p.id
			,p.languageId
			,p.promptContent
			,p.CreatedOn
			,p.LastModifiedOn
			,p.promptUrl
			,p.PromptContentWeb
			,p.AudioDescription
			,p.defaultPrompt
			,p.promptContentSms
			,p.PromptContentforReport
		FROM [Main].[Prompts] p WITH(NOLOCK)
		INNER JOIN #TempOverrides sp ON p.Id = sp.VALUE 
			AND p.languageId = @languageID
		
		UNION
		SELECT
			 p.id
			,p.languageId
			,p.promptContent
			,p.CreatedOn
			,p.LastModifiedOn
			,p.promptUrl
			,p.PromptContentWeb
			,p.AudioDescription
			,p.defaultPrompt
			,p.promptContentSms
			,p.PromptContentforReport
		FROM instructions sq
		INNER JOIN [Main].[Instructions] i WITH(NOLOCK) ON sq.instructionId = i.id
		INNER JOIN [Main].[Prompts] p WITH(NOLOCK) ON i.PromptID = p.ID
		WHERE
			p.LanguageID = @languageID
END
GO
/****** Object:  StoredProcedure [main].[usp_GetAll_Instruction_Filtered]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-21-2024
-- Description: Get all instructions by parameters
-- =============================================
CREATE PROCEDURE [main].[usp_GetAll_Instruction_Filtered]
(
    -- Add the parameters for the stored procedure here
     @languageID INT
	,@carePlanId VARCHAR(50) = NULL
	,@overrides NVARCHAR(MAX) = NULL
	,@isCustomQuestion BIT = 1
	,@careMenuAttribute INT = 52
	,@emergecyPathwayAttribute INT = 53
	,@emptyPrompt INT = 100
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
            WITH questions (QuestionId,SampleId)
                    AS
                    (   (
                        SELECT
                            cq.Id AS QuestionId
                            ,cq.[Sample] AS SampleId
                        FROM [Main].[Question] AS cq
                        INNER JOIN [Main].[CarePlanQuestions] flq
                            ON cq.Id = TRY_CAST(flq.QuestionId AS BIGINT)
                        WHERE flq.CarePlanID = @carePlanId
                            AND flq.IsCustomQuestion= @isCustomQuestion
                        UNION
                        SELECT
                            cq.Id AS QuestionId
                            ,cq.[Sample] AS SampleId
                        FROM [Main].[Question] cq
                        INNER JOIN [Main].[CarePathwayQuestions] QBQ
                            ON cq.Id = TRY_CAST(QBQ.CarePathwayID AS BIGINT)
                        INNER JOIN [Main].[CarePlanQuestions] flq
                            ON cq.Id = TRY_CAST(flq.QuestionId AS BIGINT)
                        WHERE flq.CarePlanID = @carePlanId
                            AND flq.IsCustomQuestion= @isCustomQuestion
                            AND QBQ.IsCustomQuestion = @isCustomQuestion

                        /*PathWays*/
                        UNION
                        SELECT
                            cq.Id AS QuestionId
                            ,cq.[Sample] AS SampleId
                        FROM [Main].[Question] cq
                        INNER JOIN [Main].[CarePathwayQuestions] QBQ
                            ON cq.Id = TRY_CAST(QBQ.QuestionId AS BIGINT)
                        WHERE QBQ.CarePathwayID IN (
                                SELECT sqb.Id
                                FROM [Main].[CarePlan] scf
                                INNER JOIN [Main].[CarePathway] sqb ON scf.PartnerID = sqb.[PartnerId]
                                WHERE scf.Id = @carePlanId)


                         /*Care Menu*/
                        UNION
                        SELECT
                            cq.Id AS QuestionId
                            ,cq.[Sample] AS SampleId
                        FROM [Main].[Question] cq
                        INNER JOIN [Main].[CarePathwayQuestions] QBQ
                            ON cq.Id = TRY_CAST(QBQ.QuestionId AS BIGINT)
                        WHERE QBQ.CarePathwayID IN
                        (
                            SELECT AttributeValue
                            FROM [Main].[PartnerAttributes] sba
                            INNER JOIN [Main].[CarePlan] cf
                                ON sba.[PartnerId] = cf.[PartnerId]
                            WHERE sba.ID IN (@careMenuAttribute, @emergecyPathwayAttribute)
                            AND cf.Id = @carePlanId
                        )

                        )
                        UNION ALL
                        SELECT
                            cq.Id AS QuestionId
                            ,cq.[Sample] AS SampleId
                        FROM [Main].[Question] cq
                        INNER JOIN [Main].[QuestionAnswers] AS cqa
                            ON cqa.NextId = cq.Id
                        INNER JOIN questions AS sq
                            ON cqa.QuestionId = sq.QuestionId
                    )
        SELECT
            DISTINCT
            i.[ID]
            ,i.[ModeType]
            ,i.[WorkflowMode]
            ,p.[ID] as PromptId
            ,p.[PromptContent]
            ,p.[PromptUrl]
            ,p.[DefaultPrompt]
            ,p.[PromptContentSms]
            ,p.[LastModifiedOn]
        FROM questions sq
        INNER JOIN [Main].[Instructions] AS i
            ON sq.SampleId = i.id
        INNER JOIN [Main].[Prompts] AS p
            ON i.PromptID = p.ID
        WHERE p.LanguageID = @languageID

        UNION

        SELECT
            i.[ID]
            ,i.[ModeType]
            ,i.[WorkflowMode]
            ,p.[ID] as PromptId
            ,p.[PromptContent]
            ,p.[PromptUrl]
            ,p.[DefaultPrompt]
            ,p.[PromptContentSms]
            ,p.[LastModifiedOn]
        FROM [Main].[Instructions] AS i
        INNER JOIN [Main].[Prompts] AS p
            ON i.PromptID = p.ID
        INNER JOIN (SELECT VALUE as TextId FROM STRING_SPLIT(@overrides, ',')) sq
            ON p.id = sq.TextId
        WHERE p.LanguageID = @languageID
        AND p.id NOT IN (@emptyPrompt)

        UNION
        SELECT
            i.[ID]
            ,i.[ModeType]
            ,i.[WorkflowMode]
            ,p.[ID] as PromptId
            ,p.[PromptContent]
            ,p.[PromptUrl]
            ,p.[DefaultPrompt]
            ,p.[PromptContentSms]
            ,p.[LastModifiedOn]
        FROM [Main].[Instructions] AS i
        INNER JOIN [IVR].[SystemInstructions] AS si
            ON i.id = si.InstructionId
        INNER JOIN [Main].[Prompts] AS p
            ON i.PromptID = p.ID
        WHERE p.LanguageID = @languageID

        UNION
        SELECT
            i.[ID]
            ,i.[ModeType]
            ,i.[WorkflowMode]
            ,p.[ID] as PromptId
            ,p.[PromptContent]
            ,p.[PromptUrl]
            ,p.[DefaultPrompt]
            ,p.[PromptContentSms]
            ,p.[LastModifiedOn]
        FROM questions AS q
        INNER JOIN [Main].[QuestionAnswers] cqa
            ON Q.QuestionId = cqa.QuestionId
        INNER JOIN [Main].[Instructions] i
            ON cqa.[Sample] = i.ID
        INNER JOIN [Main].[Prompts] p ON i.PromptID = p.ID
        WHERE p.LanguageID = @languageID
END
GO
/****** Object:  StoredProcedure [main].[usp_GetAll_Options_Filtered]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-21-2024
-- Description: Get all options by parameters
-- =============================================
CREATE PROCEDURE [main].[usp_GetAll_Options_Filtered] 
(
    -- Add the parameters for the stored procedure here
     @languageID INT
	,@carePlanId VARCHAR(50) = NULL
	,@careMenuAttribute INT = 52
	,@emergecyPathwayAttribute INT = 53
	,@speakRepresentativePathwayAttribute INT = 77
	,@isCustomQuestion BIT = 1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON;

    -- Insert statements for procedure here
     WITH questions (QuestionId,TextId)
                    AS
                    (   (
                        SELECT 
                            cq.Id AS QuestionId
                            ,cq.PromptID AS TextId
                        FROM [Main].[Question] cq
                        INNER JOIN [Main].[CarePlanQuestions] flq 
                            ON cq.Id = TRY_CAST(flq.QuestionId AS BIGINT) 
                        WHERE flq.CarePlanID = @carePlanId 
                            AND flq.IsCustomQuestion= @isCustomQuestion 
                        UNION  
                        SELECT 
                            cq.Id AS QuestionId
                            ,cq.PromptID AS TextId
                        FROM [Main].[Question] cq
                        INNER JOIN [Main].[CarePathwayQuestions] QBQ 
                            ON cq.Id = TRY_CAST(QBQ.QuestionId AS BIGINT) 
                        INNER JOIN [Main].[CarePlanQuestions] flq 
                            ON cq.Id = TRY_CAST(flq.QuestionId AS BIGINT) 
                        WHERE flq.CarePlanID = @carePlanId 
                            AND flq.IsCustomQuestion= @isCustomQuestion
                            AND QBQ.IsCustomQuestion = @isCustomQuestion

                       
                        /*PathWay*/
                        UNION
                        SELECT
                            cq.Id AS QuestionId
                            ,cq.PromptID AS TextId
                        FROM [Main].[Question] cq
                        INNER JOIN [Main].[CarePathwayQuestions] QBQ
                            ON cq.Id = TRY_CAST(QBQ.QuestionId AS BIGINT)
                        WHERE QBQ.CarePathwayID IN (
                                SELECT sqb.ID
                                FROM [Main].[CarePlan] scf
                                INNER JOIN [Main].[CarePathway] sqb ON scf.PartnerID = sqb.PartnerID
                                WHERE scf.ID = @carePlanId)
                       
                        /*Care Menu*/
                        UNION
                        SELECT 
                            cq.Id AS QuestionId
                            ,cq.PromptID AS TextId
                        FROM [Main].[Question] AS cq
                        INNER JOIN [Main].[CarePathwayQuestions] QBQ 
                            ON cq.Id = TRY_CAST(QBQ.QuestionId AS BIGINT) 
                        WHERE QBQ.CarePathwayID IN 
                                                    (
                            SELECT AttributeValue
                            FROM [Main].[PartnerAttributes] sba 
                            INNER JOIN [Main].[CarePlan] AS cf 
                                ON sba.PartnerID = cf.PartnerID
                            WHERE sba.AttributeTypeID IN (@careMenuAttribute, @emergecyPathwayAttribute, @speakRepresentativePathwayAttribute)
                            AND cf.ID = @carePlanId
                        )

                        )
                        UNION ALL
                        SELECT  
                            cq.Id AS QuestionId
                            ,cq.PromptID AS TextId
                        FROM [Main].[Question] AS cq
                        INNER JOIN [Main].[QuestionAnswers] AS cqa 
                            ON cqa.NextID =cq.Id
                        INNER JOIN questions AS sq
                            ON cqa.QuestionID = sq.QuestionId
                    ) 
        , options AS (
        SELECT  
            DISTINCT o.ID
        FROM questions sq
        INNER JOIN [Main].[QuestionAnswers] AS cqa ON cqa.QuestionID = sq.QuestionId
        INNER JOIN [Main].[Options] AS o ON cqa.QuestionID = o.ID 
        WHERE o.LanguageID = @languageID
        )
        , multipleAnswerOptions as (

        SELECT (select options from [Main].[Options] where id = 1 and LanguageID = @languageID) + ',' + o.options as AnswerOption
        FROM  options op
        INNER JOIN [Main].[Options] AS o ON op.id = o.id AND o.LanguageID = @languageID

        )        
        SELECT 
             o.id
            ,o.languageId
            ,o.Options
            ,o.CreatedOn
            ,o.LastModifiedOn
            ,o.AudioUrl
            ,o.optionWeb
            ,o.OptionSms
        FROM options op 
        INNER JOIN [Main].[Options] AS o ON op.id = o.id
        WHERE o.LanguageID = @languageID
        UNION  
        SELECT 
             op.id
            ,op.languageId
            ,op.Options
            ,op.CreatedOn
            ,op.LastModifiedOn
            ,op.AudioUrl
            ,op.optionWeb
            ,op.OptionSms
        FROM [Main].[Options] op 
        INNER JOIN [IVR].[SystemOptions] AS so ON op.id  = so.Id
        WHERE op.LanguageID = @languageID
        /*Multiple choice Questions, answers with Yes plus option*/
        UNION 
         SELECT 
             o.id
            ,o.languageId
            ,o.Options
            ,o.CreatedOn
            ,o.LastModifiedOn
            ,o.AudioUrl
            ,o.optionWeb
            ,o.OptionSms
        FROM multipleAnswerOptions op 
        INNER JOIN [Main].[Options] AS o ON replace(op.AnswerOption, ' ', '') = replace(o.Options, ' ','')

        /*Care Menu*/
        UNION
         SELECT 
             op.id
            ,op.languageId
            ,op.Options
            ,op.CreatedOn
            ,op.LastModifiedOn
            ,op.AudioUrl
            ,op.optionWeb
            ,op.OptionSms
        FROM [Main].[Options] AS op 
        WHERE op.ID IN 
          (SELECT DISTINCT  sba.AttributeValue
            FROM [Main].[PartnerAttributes] AS sba 
            INNER JOIN [Main].[CarePlan] cf 
                ON sba.PartnerID = cf.PartnerID
            WHERE sba.AttributeTypeID IN (54, 55, 76)
            AND cf.Id = @carePlanId
        ) AND 
		op.LanguageID = @languageID
END
GO
/****** Object:  StoredProcedure [main].[usp_GetAll_Prompts_Filtered]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:      Esteban Beckett
-- Create Date: 08-21-2024
-- Description: Get all prompts by parameters
-- =============================================
CREATE PROCEDURE [main].[usp_GetAll_Prompts_Filtered]
(
    -- Add the parameters for the stored procedure here
	 @languageID INT
	,@carePlanId VARCHAR(50) = NULL 
	,@overrides NVARCHAR(MAX) = NULL
	,@careMenuAttribute INT = 52
    ,@emergecyPathwayAttribute INT = 53
	,@vm_sms_Escalation INT = 69
	,@isValidJson BIT = 1
	,@isCustomQuestion BIT = 1
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
    
	CREATE TABLE #TempOverrides (VALUE INT);

	INSERT INTO #TempOverrides (VALUE)
	SELECT VALUE FROM STRING_SPLIT(@overrides, ',');
	
	WITH questions (QuestionId,TextId,SampleId)
		AS (
			(
				SELECT 
					cq.Id AS QuestionId
					,cq.PromptID AS TextId
					,cq.[Sample] AS SampleId
				FROM [Main].[Question] cq WITH(NOLOCK)
				INNER JOIN [Main].[CarePlanQuestions] flq WITH(NOLOCK) ON cq.Id = TRY_CAST(flq.QuestionId AS BIGINT) 
				WHERE
					flq.CarePlanID = @carePlanId
					AND flq.IsCustomQuestion= @isCustomQuestion
				UNION
				SELECT
					cq.Id AS QuestionId
					,cq.PromptID AS TextId
					,cq.[Sample] AS SampleId
				FROM [Main].[Question] cq WITH(NOLOCK)
				INNER JOIN [Main].[CarePathwayQuestions] QBQ WITH(NOLOCK) ON cq.Id = TRY_CAST(QBQ.QuestionId AS BIGINT)
				INNER JOIN [Main].[CarePlanQuestions] flq WITH(NOLOCK) ON cq.Id = TRY_CAST(flq.QuestionId AS BIGINT) 
				WHERE
					flq.CarePlanID = @carePlanId
					AND flq.IsCustomQuestion = @isCustomQuestion
					AND QBQ.IsCustomQuestion = @isCustomQuestion

				/*PathWay*/
				UNION
				SELECT
					cq.Id AS QuestionId
					,cq.PromptID AS TextId
					,cq.[Sample] AS SampleId
				FROM [Main].[Question] cq WITH(NOLOCK)
				INNER JOIN [Main].[CarePathwayQuestions] QBQ WITH(NOLOCK) ON cq.Id = TRY_CAST(QBQ.QuestionId AS BIGINT)
				WHERE
					QBQ.CarePathwayID IN (
						SELECT
							sqb.ID
						FROM [Main].[CarePlan] scf WITH(NOLOCK)
						INNER JOIN [Main].[CarePathway] sqb WITH(NOLOCK) ON scf.PartnerID = sqb.PartnerID
						WHERE
							scf.Id = @carePlanId
						)

				/*Care Menu*/
				UNION
				SELECT
					cq.Id AS QuestionId
					,cq.PromptID AS TextId
					,cq.[Sample] AS SampleId
				FROM [Main].[Question] cq WITH(NOLOCK)
				INNER JOIN [Main].[CarePathwayQuestions] QBQ WITH(NOLOCK) ON cq.ID = TRY_CAST(QBQ.QuestionId AS BIGINT) 
				WHERE
					QBQ.Id IN (
						SELECT
							AttributeValue
						FROM [Main].[PartnerAttributes] sba WITH(NOLOCK)
						INNER JOIN [Main].[CarePlan] cf WITH(NOLOCK) ON sba.PartnerID = cf.PartnerID
						WHERE
							sba.AttributeTypeID IN (@careMenuAttribute,@emergecyPathwayAttribute)
                            AND cf.Id = @carePlanId
						)
			)
			UNION ALL
				SELECT
					cq.Id AS QuestionId
					,cq.PromptID AS TextId
					,cq.[Sample] AS SampleId
				FROM [Main].[Question] cq WITH(NOLOCK)
				INNER JOIN [Main].[QuestionAnswers] AS cqa WITH(NOLOCK) ON cqa.NextID = cq.Id
				INNER JOIN questions AS sq ON cqa.QuestionId = sq.QuestionId
		)
		
		SELECT
			 p.id
			,p.languageId
			,p.promptContent
			,p.CreatedOn
			,p.LastModifiedOn
			,p.promptUrl
			,p.PromptContentWeb
			,p.AudioDescription
			,p.defaultPrompt
			,p.promptContentSms
			,p.PromptContentforReport
		FROM questions sq
		INNER JOIN [Main].[Prompts] p WITH(NOLOCK) ON sq.textId = p.ID 
		WHERE
			p.LanguageID = @languageID
	
		UNION
		SELECT
			 p.id
			,p.languageId
			,p.promptContent
			,p.CreatedOn
			,p.LastModifiedOn
			,p.promptUrl
			,p.PromptContentWeb
			,p.AudioDescription
			,p.defaultPrompt
			,p.promptContentSms
			,p.PromptContentforReport
		FROM [Main].[Prompts] p WITH(NOLOCK)
		INNER JOIN [dbo].[SystemPrompts] sp WITH(NOLOCK) ON p.Id = sp.Id 
			AND p.languageId = @languageID
		
		UNION
		SELECT
			 p.id
			,p.languageId
			,p.promptContent
			,p.CreatedOn
			,p.LastModifiedOn
			,p.promptUrl
			,p.PromptContentWeb
			,p.AudioDescription
			,p.defaultPrompt
			,p.promptContentSms
			,p.PromptContentforReport
			FROM [Main].[Prompts] p WITH(NOLOCK)
			INNER JOIN #TempOverrides sp ON p.Id = sp.VALUE AND p.languageId = @languageID
		
		UNION
		SELECT
			 p.id
			,p.languageId
			,p.promptContent
			,p.CreatedOn
			,p.LastModifiedOn
			,p.promptUrl
			,p.PromptContentWeb
			,p.AudioDescription
			,p.defaultPrompt
			,p.promptContentSms
			,p.PromptContentforReport
		FROM questions q
		INNER JOIN [Main].[Instructions] i WITH(NOLOCK) ON q.SampleId = i.id
		INNER JOIN [Main].[Prompts] p WITH(NOLOCK) ON i.promptId = p.id 
			AND p.languageId = @languageID
		
		UNION
		SELECT
			 p.id
			,p.languageId
			,p.promptContent
			,p.CreatedOn
			,p.LastModifiedOn
			,p.promptUrl
			,p.PromptContentWeb
			,p.AudioDescription
			,p.defaultPrompt
			,p.promptContentSms
			,p.PromptContentforReport
		FROM questions q 
		INNER JOIN [Main].[QuestionAnswers] cqa WITH(NOLOCK) ON Q.QuestionId = cqa.QuestionId
		INNER JOIN [Main].[Instructions] i WITH(NOLOCK) ON cqa.[Sample] = i.ID
		INNER JOIN [Main].[Prompts] p WITH(NOLOCK) ON i.PromptID = p.ID
		WHERE
			p.LanguageID = @languageID
		
		UNION
		SELECT
			 p.id
			,p.languageId
			,p.promptContent
			,p.CreatedOn
			,p.LastModifiedOn
			,p.promptUrl
			,p.PromptContentWeb
			,p.AudioDescription
			,p.defaultPrompt
			,p.promptContentSms
			,p.PromptContentforReport
		FROM [Main].[Prompts] p WITH(NOLOCK)
		WHERE
			P.ID in (
				SELECT
					COALESCE(json_value(a.value,'$.promptId'), json_value(a.value,'$.PromptId')) as promptId
				FROM [Main].[PartnerAttributes] sa WITH(NOLOCK)
				INNER JOIN [Main].[CarePlan] scf WITH(NOLOCK) ON sa.PartnerID = scf.PartnerID
				CROSS APPLY OPENJSON(sa.AttributeValue) a
				WHERE
					scf.Id = @carePlanId
					AND sa.AttributeTypeID = @vm_sms_Escalation
					AND ISJSON(a.value) = @isValidJson
				)
			AND p.LanguageID = @languageID
END
GO
/****** Object:  StoredProcedure [main].[usp_GetInstructionId_Bulk]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_GetInstructionId_Bulk]
    @Instructions dbo.InstructionParams READONLY
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @MixedNormal BIGINT;
    DECLARE @MixedVerbose BIGINT;
    DECLARE @Numeric BIGINT;
    DECLARE @InsertForConcise BIT;
    DECLARE @ID BIGINT;
    DECLARE @Results dbo.InstructionResults;

    DECLARE cur CURSOR FOR 
    SELECT MixedNormal, MixedVerbose, Numeric, InsertForConcise
    FROM @Instructions;

    OPEN cur;

    FETCH NEXT FROM cur INTO @MixedNormal, @MixedVerbose, @Numeric, @InsertForConcise;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Local variables to build dynamic SQL
        DECLARE @VerboseMode BIT = 0;
        DECLARE @NormalMode BIT = 0;
        DECLARE @Verbose NVARCHAR(255) = '';
        DECLARE @Normal NVARCHAR(255) = '';
        DECLARE @SelectVerbose NVARCHAR(255) = '';
        DECLARE @SelectNormal NVARCHAR(255) = '';
        DECLARE @MixedConcise NVARCHAR(255) = '';
        DECLARE @NumericConcise NVARCHAR(255) = '';
        DECLARE @SelectMixedConcise NVARCHAR(255) = '';
        DECLARE @SelectNumericConcise NVARCHAR(255) = '';
        DECLARE @NotVerboseMode NVARCHAR(255) = '';
        DECLARE @NotNormalMode NVARCHAR(255) = '';
        DECLARE @NotIn NVARCHAR(255) = '';

        IF @MixedVerbose IS NOT NULL AND ISNULL(@MixedNormal,-1) <> ISNULL(@MixedVerbose,-1)
            SET @VerboseMode = 1;

        IF @MixedNormal IS NOT NULL 
            SET @NormalMode = 1;

        IF @VerboseMode = 1 
            SET @Verbose = '(@NewId,@MixedVerbose,''Mixed'',GetUtcDate(),GetUtcDate(),''<propBag />'',2),';

        IF @NormalMode = 1
            SET @Normal =  '(@NewId,@MixedNormal,''Mixed'',GetUtcDate(),GetUtcDate(),''<propBag />'',1),';

        IF @VerboseMode = 1
            SET @SelectVerbose =  'OR (PromptId = @MixedVerbose and ModeType = ''Mixed'' and WorkflowMode = 2)';

        IF @NormalMode = 1
            SET @SelectNormal =  'OR (PromptId = @MixedNormal and ModeType=''Mixed'' and WorkflowMode=1)';

        DECLARE @Count INT = 1;

        IF @VerboseMode = 1 
            SET @Count += 1;

        IF @NormalMode = 1 
            SET @Count += 1;

        IF @InsertForConcise = 1
        BEGIN
            SET @MixedConcise = '(@NewId,@MixedNormal,''Mixed'',GetUtcDate(),GetUtcDate(),''<propBag />'',0),';
            SET @NumericConcise = '(@NewId,@Numeric,''Numeric'',GetUtcDate(),GetUtcDate(),''<propBag />'',0),';
            SET @SelectMixedConcise =  'OR (PromptId = @MixedNormal and ModeType=''Mixed'' and WorkflowMode=0)';
            SET @SelectNumericConcise = 'OR (PromptId = @Numeric and ModeType=''Numeric'' and WorkflowMode=0)';
            SET @Count += 2;
        END

        IF @VerboseMode = 0
            SET @NotVerboseMode = 'OR (ModeType=''Mixed'' and WorkflowMode=2)';

        IF @NormalMode = 0
            SET @NotNormalMode = 'OR (ModeType=''Mixed'' and WorkflowMode=1)';

        IF @VerboseMode = 0 OR @NormalMode = 0
            SET @NotIn =  'AND [ID] NOT IN (SELECT [ID] FROM [MAIN].[Instructions] WHERE 1 = 1 
                                        ' + @NotVerboseMode + ' 
                                        ' + @NotNormalMode + ')';

        DECLARE @SqlCommand NVARCHAR(MAX) = '';

        SET @SqlCommand = 'IF EXISTS (SELECT [ID] FROM [MAIN].[Instructions] 
                                        WHERE (PromptId = @Numeric and ModeType=''Numeric'' and WorkflowMode=1) ' 
                                        + ' 
                                        ' + @SelectVerbose 
                                        + ' 
                                        ' + @SelectNormal 
                                        + ' 
                                        ' + @SelectMixedConcise 
                                        + '
                                        ' + @SelectNumericConcise 
                                        + '
                                        ' + @NotIn 
                                        + ' GROUP BY [ID],[WorkflowMode]
                                        HAVING COUNT(*) = ' + CONVERT(VARCHAR(10), @Count) + ')

                                SELECT @NewId = [ID] FROM [MAIN].[Instructions] 
                                WHERE (PromptId = @Numeric and ModeType=''Numeric'' and WorkflowMode=1) ' 
                                + '
                                ' + @SelectVerbose 
                                + '
                                ' + @SelectNormal 
                                + '
                                ' + @SelectMixedConcise 
                                + '
                                ' + @SelectNumericConcise 
                                + '
                                ' + @NotIn 
                                + ' 
                                GROUP BY [ID],[WorkflowMode]
                                HAVING COUNT(*) = ' + CONVERT(VARCHAR(10), @Count) + '

                            ELSE 
                            BEGIN
                                SET @NewId = ISNULL((IDENT_CURRENT(''main.Instructions'')),0) + 1
                                SET IDENTITY_INSERT main.[Instructions] ON;
                                INSERT INTO [MAIN].[Instructions] ([ID], [PromptId],[ModeType],[CreatedBy],[LastModifiedBy],[PropBag],[WorkflowMode])
                                VALUES ' +
                                    @Normal +
                                    @Verbose +
                                    @MixedConcise +
                                    @NumericConcise +
                                    '(@NewId,@Numeric,''Numeric'',GetUtcDate(),GetUtcDate(),''<propBag />'',1);
                                SET IDENTITY_INSERT main.[Instructions] OFF;
                            END';

        DECLARE @Params NVARCHAR(4000) = '@MixedNormal BIGINT NULL, @MixedVerbose BIGINT NULL, @Numeric BIGINT, @NewId BIGINT OUTPUT';

        EXEC sp_executesql  @SqlCommand, 
                            @Params,  
                            @MixedNormal = @MixedNormal, 
                            @MixedVerbose = @MixedVerbose,
                            @Numeric = @Numeric, 
                            @NewId = @ID OUTPUT;

        -- Collect the result
        INSERT INTO @Results (MixedNormal, MixedVerbose, Numeric, InsertForConcise, ID)
        VALUES (@MixedNormal, @MixedVerbose, @Numeric, @InsertForConcise, @ID);

        FETCH NEXT FROM cur INTO @MixedNormal, @MixedVerbose, @Numeric, @InsertForConcise;
    END

    CLOSE cur;
    DEALLOCATE cur;

    -- Return results
    SELECT * FROM @Results;
END;
GO
/****** Object:  StoredProcedure [main].[usp_GetOrCreateInstructions_Bulk]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_GetOrCreateInstructions_Bulk]
    @InstructionParams dbo.InstructionParams READONLY
AS
BEGIN
    SET NOCOUNT ON;

    -- Process for syncing up data and collecting results
    DECLARE @SyncResults dbo.InstructionResults;

    INSERT INTO @SyncResults (MixedNormal, MixedVerbose, Numeric, InsertForConcise, ID)
    EXEC [main].[usp_GetInstructionId_Bulk] @Instructions = @InstructionParams;

    -- Return the results
    SELECT * FROM @SyncResults;
END;
GO
/****** Object:  StoredProcedure [main].[usp_Log_DataSync]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_Log_DataSync]
	@ProcessID uniqueidentifier,
	@RunDateTime datetime,
	@TableName nvarchar(255),
	@NumberOfInserted int = NULL,
	@NumberOfUpdated int = NULL,
	@NumberOfDeleted int = NULL,
	@NumberOfTemp int = NULL,
	@ExceptionMessage nvarchar(4000) = NULL,
	@SynchronizeDirection tinyint = NULL
AS
BEGIN
	SET NOCOUNT ON;
	BEGIN TRY
	BEGIN TRANSACTION
	INSERT INTO [main].[DataSyncLog] 
		(ProcessID,
		RunDateTime,
		TableName,
		NumberOfInserted,
		NumberOfUpdated,
		NumberOfDeleted,
		NumberOfTemp,
		ExceptionMessage,
		SynchronizeDirection)
	VALUES 
		(@ProcessID,
		@RunDateTime,
		@TableName,
		@NumberOfInserted,
		@NumberOfUpdated,
		@NumberOfDeleted,
		@NumberOfTemp,
		@ExceptionMessage,
		@SynchronizeDirection)
	COMMIT TRANSACTION
	END TRY

	BEGIN CATCH
		IF @@TRANCOUNT > 0
			ROLLBACK TRANSACTION --RollBack in case of Error

		DECLARE @ErrorMessage NVARCHAR(4000);  
		DECLARE @ErrorSeverity INT;  
		DECLARE @ErrorState INT;  

		SELECT   
		   @ErrorMessage = ERROR_MESSAGE(),  
		   @ErrorSeverity = ERROR_SEVERITY(),  
		   @ErrorState = ERROR_STATE();  

		RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
	END CATCH
	SET NOCOUNT OFF
END
RETURN 0
GO
/****** Object:  StoredProcedure [main].[usp_ManageRecipientStatusAndDeactivation]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_ManageRecipientStatusAndDeactivation]
    @recipientIds NVARCHAR(MAX),
    @DeactivationReasonID INT,
    @DeactivationMethod VARCHAR(50) = NULL
AS
BEGIN
    INSERT INTO [main].[OptoutDeactivationCareruleAudit] (CRRIDs, DeactivationReasonID, DeactivationMethod)
    VALUES (@recipientIds, @DeactivationReasonID, @DeactivationMethod);
END
GO
/****** Object:  StoredProcedure [main].[usp_NewSchema]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_NewSchema]
    @Schemaname NVARCHAR(128),
    @partnerId BIGINT
AS
BEGIN
    
    BEGIN TRY 
        BEGIN TRAN
         --0 Verify Parameters
        IF @Schemaname IS NULL OR @Schemaname = ''
        BEGIN
            SELECT 'Schemaname is mandatory parameter.' AS Error
            RETURN;
        END

        -- 1. Create Schema if not exists
        IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = @Schemaname)
        BEGIN

            BEGIN TRAN 
            EXEC('CREATE SCHEMA ' + @Schemaname + ' AUTHORIZATION dbo');
            COMMIT;
        END  
    
        -- 2. Create table if not exists
        IF OBJECT_ID(@Schemaname+ '.PersonInfo', 'U') IS  NULL
        BEGIN
        
            DECLARE @SqlStatement NVARCHAR(MAX);
            SET @SqlStatement = '
            CREATE TABLE ' + QUOTENAME(@Schemaname) + '.[PersonInfo](
                [SBURID] [bigint] NOT NULL,
                [RID] [bigint] NOT NULL,
                [FName] [nvarchar](100) NULL,
                [MName] [nvarchar](100) NULL,
                [LName] [nvarchar](100) NULL,
                [MaidenName] [nvarchar](100) NULL,
                [SingleName] [nvarchar](100) NULL,
                [XofYName] [nvarchar](100) NULL,
                [Title] [nvarchar](50) NULL,
                [Ordinal] [nvarchar](50) NULL,
                [Nickname] [nvarchar](100) NULL,
                [DOB] [date] NULL,
                [Gender] [int] NULL,
                [DTUTC_Created] [datetime] NOT NULL,
                [DTUTC_Modified] [datetime] NOT NULL,
                [PropBag] [xml] NOT NULL,
                CONSTRAINT [PK_PersonInfo] PRIMARY KEY CLUSTERED 
                (
                    [SBURID] ASC,
                    [RID] ASC
                )WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
                ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
      
                ALTER TABLE ' + QUOTENAME(@Schemaname) + '.[PersonInfo] ADD CONSTRAINT [DF_PersonInfo_DTUTC_Created] DEFAULT (getutcdate()) FOR [DTUTC_Created]
       
                ALTER TABLE ' + QUOTENAME(@Schemaname) + '.[PersonInfo] ADD CONSTRAINT [DF_PersonInfo_DTUTC_Modigied] DEFAULT (getutcdate()) FOR [DTUTC_Modified]
       
                ALTER TABLE ' + QUOTENAME(@Schemaname) + '.[PersonInfo] ADD CONSTRAINT [DF_PersonInfo_PropBag] DEFAULT (N''<PropBag></PropBag>'') FOR [PropBag]
        
                ALTER TABLE ' + QUOTENAME(@Schemaname) + '.[PersonInfo] WITH NOCHECK ADD CONSTRAINT [FK_PersonInfo_R] FOREIGN KEY([RID])
                REFERENCES [main].[R] ([RID])
                ON DELETE CASCADE
        
                ALTER TABLE ' + QUOTENAME(@Schemaname) + '.[PersonInfo] NOCHECK CONSTRAINT [FK_PersonInfo_R]';
    
            EXEC sp_executesql @SqlStatement;
    
            --2.1 Create Indexes
            SET @SqlStatement = '
            CREATE NONCLUSTERED INDEX [IX_PersonInfo_' + @Schemaname + '_DOB] ON ' + QUOTENAME(@Schemaname) + '.[PersonInfo]
            (
                [DOB] ASC
            )WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
            ';
            EXEC sp_executesql @SqlStatement;
    
            SET @SqlStatement = '
            CREATE NONCLUSTERED INDEX [IX_PersonInfo_' + @Schemaname + '_FName] ON ' + QUOTENAME(@Schemaname) + '.[PersonInfo]
            (
                [FName] ASC
            )WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
            ';
            EXEC sp_executesql @SqlStatement;
    
            SET @SqlStatement = '
            CREATE NONCLUSTERED INDEX [IX_PersonInfo_' + @Schemaname + '_Gender] ON ' + QUOTENAME(@Schemaname) + '.[PersonInfo]
            (
                [Gender] ASC
            )WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
            ';
            EXEC sp_executesql @SqlStatement;
    
            SET @SqlStatement = '
            CREATE NONCLUSTERED INDEX [IX_PersonInfo_' + @Schemaname + '_LName] ON ' + QUOTENAME(@Schemaname) + '.[PersonInfo]
            (
                [LName] ASC
            )WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
            ';
            EXEC sp_executesql @SqlStatement;
    
            SET @SqlStatement = '
            CREATE NONCLUSTERED INDEX [IX_PersonInfo_' + @Schemaname + '_MName] ON ' + QUOTENAME(@Schemaname) + '.[PersonInfo]
            (
                [MName] ASC
            )WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
            ';
            EXEC sp_executesql @SqlStatement;
    
            SET @SqlStatement = '
            CREATE NONCLUSTERED INDEX [IX_PersonInfo_' + @Schemaname + '_RID] ON ' + QUOTENAME(@Schemaname) + '.[PersonInfo]
            (
                [RID] ASC
            )WITH (STATISTICS_NORECOMPUTE = OFF, DROP_EXISTING = OFF, ONLINE = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
            ';
            EXEC sp_executesql @SqlStatement;
    
        END

        DECLARE @TableName varchar(128) = CONCAT(@Schemaname, '.PersonInfo')

        --3 Verify if table schema.PersonInfo exists
        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(@TableName) AND type = 'U')
        BEGIN
            RAISERROR('Table %s does not exist.', 16, 1, @TableName);
            RETURN;
        END

        IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID('Main.PersonInfo') AND type = 'V')
        BEGIN
            RAISERROR('View %s does not exist.', 16, 1, 'Main.PersonInfo');
            RETURN;
        END

        --4 Remove bindings on main.PersonInfo view
        DECLARE @PositionShemaBinding INT
        DECLARE @Command NVARCHAR(MAX)
        DECLARE @ViewName VARCHAR(MAX)
        SET @ViewName='main.PersonInfo'  --RENAME WITH DEPENDENCIE NAME
        SELECT @Command = OBJECT_DEFINITION(OBJECT_ID(@ViewName));

        IF @Command NOT LIKE '%'+@TableName+'%'
        BEGIN
            
            SET @PositionShemaBinding = CHARINDEX('WITH SCHEMABINDING', @Command)
            IF NOT @PositionShemaBinding = 0 BEGIN
                SET @Command = STUFF(@Command, CHARINDEX('WITH SCHEMABINDING', @Command), LEN('WITH SCHEMABINDING'), '');
                SET @Command = REPLACE(@Command, 'CREATE VIEW', 'ALTER VIEW');
                EXECUTE sp_executesql @Command
            END

            SET @ViewName='main.PersonInfo'  --RENAME WITH DEPENDENCE NAME
            SELECT @Command = OBJECT_DEFINITION(OBJECT_ID(@ViewName));
            SET @PositionShemaBinding = CHARINDEX('WITH SCHEMABINDING', @Command)
            IF NOT @PositionShemaBinding = 0 BEGIN
                SET @Command = STUFF(@Command, CHARINDEX('WITH SCHEMABINDING', @Command), LEN('WITH SCHEMABINDING'), '');
                SET @Command = REPLACE(@Command, 'CREATE VIEW', 'ALTER VIEW');
                EXECUTE sp_executesql @Command
            END

            --5 Get Core.PersonInfo view definition
            DECLARE @ViewDefinition NVARCHAR(MAX);
            SET @ViewDefinition =  (SELECT OBJECT_DEFINITION(OBJECT_ID('main.PersonInfo')));

            --6 Set New table definition
            DECLARE @NewTableToAdd NVARCHAR(MAX) =''
            SET @NewTableToAdd = 
                    ' UNION ALL 
                        SELECT [RID]
                    ,[FName]
                    ,[MName]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''JR''  THEN REPLACE(TRIM(REPLACE(LName,''JR'','''')),''  '','' '')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''SR''  THEN REPLACE(TRIM(REPLACE(LName,''SR'','''')),''  '','' '')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''I''   THEN REPLACE(TRIM(REPLACE(LName,''I'','''')),''  '','' '')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''II''  THEN REPLACE(TRIM(REPLACE(LName,''II'','''')),''  '','' '')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''III'' THEN REPLACE(TRIM(REPLACE(LName,''III'','''')),''  '','' '')
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''IV''  THEN REPLACE(TRIM(REPLACE(LName,''IV'','''')),''  '','' '')
                        ELSE [LName]
                        END AS [LName]
                    ,[MaidenName]
                    ,[SingleName]
                    ,[XofYName]
                    ,[Title]
                    ,CASE 
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''JR'' THEN ''JR''
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''SR'' THEN ''SR''
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''I'' THEN ''I''
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''II'' THEN ''II''
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''III'' THEN ''III''
                        WHEN REVERSE(PARSENAME(REPLACE(REVERSE(LName), '' '', ''.''), 2))   = ''IV'' THEN ''IV''
                        ELSE [Ordinal]
                        END AS [Ordinal]
                    ,[Nickname]
                    ,[DOB]
                    ,[Gender]
                    ,[DTUTC_Created]
                    ,[DTUTC_Modified]
                    ,[PropBag]
                FROM '  + @TableName

                DECLARE @NewViewDefinition NVARCHAR(MAX) = ''

                SET @NewViewDefinition = @ViewDefinition + ''+ @NewTableToAdd

                -- Add new table definition on existing definition
                SET @SqlStatement =  REPLACE(@NewViewDefinition, 'CREATE VIEW', 'ALTER VIEW') 

                EXEC sp_executesql @SqlStatement;

    
                --Add bindings on Core.PersonInfo view
 
                SET @ViewName = ''
                SET @Command = ''

                DECLARE @ObjectName VARCHAR(MAX)

                SET @ViewName='main.PersonInfo'  --RENAME WITH DEPENDENCE NAME
                SELECT  @Command = OBJECT_DEFINITION(OBJECT_ID(@ViewName)),@ObjectName = OBJECT_NAME(OBJECT_ID(@ViewName));
                SET @PositionShemaBinding = PATINDEX('%WITH SCHEMABINDING%', @Command)
                IF @PositionShemaBinding = 0 
                BEGIN
                    SET @Command = REPLACE(@Command, 'CREATE VIEW', 'ALTER VIEW');
                    IF NOT CHARINDEX('[' + @ObjectName + ']', @Command) = 0 BEGIN
                        SET @ObjectName = '[' + @ObjectName + ']'
                    END
                    SET @Command = STUFF(@Command, CHARINDEX(@ObjectName, @Command), LEN(@ObjectName), @ObjectName + ' WITH SCHEMABINDING ');
                    EXECUTE sp_executesql @Command
                END
        END
        --UPDATE DataSchema FOR PARTNER
        IF ISNULL(@partnerId, 0) > 0
        BEGIN
            UPDATE main.Partner 
                SET DataSchema= @Schemaname 
            WHERE ID = @partnerId
        END
        
        SELECT 'Schema created Successfully' as Success
        COMMIT;
    END TRY 
    BEGIN CATCH  
        ROLLBACK
        DECLARE @ErrorMessage NVARCHAR(MAX);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;

        SELECT
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();

        RAISERROR ('Error occurred: %s', @ErrorSeverity, @ErrorState, @ErrorMessage);
        RETURN; 

    END CATCH;

END;
GO
/****** Object:  StoredProcedure [main].[usp_Options_GetOrCreate]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_Options_GetOrCreate]
    @languageId int = NULL
    ,@option nvarchar(max)
    ,@audioUrl nvarchar(max) = NULL
    ,@webText nvarchar(max) = NULL
    ,@smsText nvarchar(max) = NULL
AS
BEGIN
    DECLARE @OptionId BIGINT
    --PROCESS FOR SYNC UP DATA
    EXEC [LegacyMain].usp_Options_SyncUp_Data  @languageId, @option, @audioUrl, @webText, @smsText, @OptionId OUTPUT
    IF @OptionId IS NOT NULL
    BEGIN
        SELECT @OptionId AS OptionId
        RETURN 
    END
    --PROCESS 2.0
    SELECT TOP 1 @OptionId = id 
        FROM main.Options 
        WHERE Options = @option  
            AND (LanguageID = @languageId OR @languageId IS NULL)
            AND (AudioUrl = @audioUrl    OR @audioUrl IS NULL)
            AND (OptionWeb = @webText    OR @webText IS NULL)
            AND (OptionSms = @smsText    OR @smsText IS NULL)

	IF @OptionId IS NULL
    BEGIN
        --insert new 
        INSERT INTO main.Options (LanguageID, Options, PropBag, AudioUrl, OptionWeb, OptionSms, CreatedOn, LastModifiedOn)
            VALUES
            (@languageId
            ,@option
            ,'<propBag />'
            ,@audioUrl
            ,@webText
            ,@smsText
            ,GETUTCDATE()
            ,GETUTCDATE())

         SET @optionId = SCOPE_IDENTITY()    
    END

    SELECT @OptionId AS OptionId

END
GO
/****** Object:  StoredProcedure [main].[usp_Options_GetOrCreate_Bulk]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [main].[usp_Options_GetOrCreate_Bulk]
    @OptionParams dbo.OptionParams READONLY
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @LegacyOptionID BIGINT;
    DECLARE @OptionID BIGINT;
    DECLARE @LanguageId INT;
    DECLARE @Option NVARCHAR(MAX);
    DECLARE @AudioUrl NVARCHAR(MAX);
    DECLARE @WebText NVARCHAR(MAX);
    DECLARE @SmsText NVARCHAR(MAX);
    DECLARE @Results dbo.OptionResults;

    DECLARE cur CURSOR FOR 
    SELECT LanguageId, [Option], AudioUrl, WebText, SmsText
    FROM @OptionParams;

    OPEN cur;

    FETCH NEXT FROM cur INTO @LanguageId, @Option, @AudioUrl, @WebText, @SmsText;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        
         EXEC [main].[usp_Options_GetOrCreate_Return_OptionId]  @languageId, @option, @audioUrl, @webText, @smsText, @OptionID OUTPUT

        -- Collect the result
        INSERT INTO @Results (OptionId, ConcatString)
        VALUES (@OptionID, CONCAT(@Option, '|', @LanguageId, '|', @AudioUrl, '|', @WebText, '|', @SmsText));
        SET @OptionID = NULL;

        FETCH NEXT FROM cur INTO @LanguageId, @Option, @AudioUrl, @WebText, @SmsText;
    END

    CLOSE cur;
    DEALLOCATE cur;

        -- Return results
    SELECT * FROM @Results;
END;
GO
/****** Object:  StoredProcedure [main].[usp_Options_GetOrCreate_Return_OptionId]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_Options_GetOrCreate_Return_OptionId]
    @languageId int = NULL
    ,@option nvarchar(max)
    ,@audioUrl nvarchar(max) = NULL
    ,@webText nvarchar(max) = NULL
    ,@smsText nvarchar(max) = NULL
    ,@OptionId BIGINT OUTPUT
AS
BEGIN
    --PROCESS FOR SYNC UP DATA
    EXEC [LegacyMain].usp_Options_SyncUp_Data  @languageId, @option, @audioUrl, @webText, @smsText, @OptionId OUTPUT
    IF @OptionId IS NOT NULL
    BEGIN
        RETURN 
    END
    --PROCESS 2.0
    SELECT TOP 1 @OptionId = id 
        FROM main.Options 
        WHERE Options = @option  
            AND (LanguageID = @languageId OR @languageId IS NULL)
            AND (AudioUrl = @audioUrl    OR @audioUrl IS NULL)
            AND (OptionWeb = @webText    OR @webText IS NULL)
            AND (OptionSms = @smsText    OR @smsText IS NULL)

	IF @OptionId IS NULL
    BEGIN
        --insert new 
        INSERT INTO main.Options (LanguageID, Options, PropBag, AudioUrl, OptionWeb, OptionSms, CreatedOn, LastModifiedOn)
            VALUES
            (@languageId
            ,@option
            ,'<propBag />'
            ,@audioUrl
            ,@webText
            ,@smsText
            ,GETUTCDATE()
            ,GETUTCDATE())

         SET @optionId = SCOPE_IDENTITY()    
    END
END
GO
/****** Object:  StoredProcedure [main].[usp_Options_Insert]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_Options_Insert]
	@languageId int 
    ,@option nvarchar(max)
    ,@audioUrl nvarchar(max) = null
    ,@webText nvarchar(max) = null 
    ,@smsText nvarchar(max) = null
AS
BEGIN
    DECLARE @optionId bigint	

    INSERT INTO main.Options (LanguageID,Options,PropBag,AudioUrl,OptionWeb,OptionSms, CreatedOn, LastModifiedOn)
            VALUES
            (@languageId
            ,@option
            ,'<propBag />'
            ,@audioUrl
            ,@webText
            ,@smsText
            ,GETUTCDATE()
            ,GETUTCDATE())

    SET @optionId = SCOPE_IDENTITY()        
    SELECT @optionId as OptionId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [main].[usp_PersonInfo_ChangeDataSchema]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_PersonInfo_ChangeDataSchema]
	@PartnerID bigint
AS
	
BEGIN

	declare @NewDataSchema varchar(100) = ''

	select @NewDataSchema = DataSchema from main.[Partner] where ID = @PartnerID

	if ISNULL(@NewDataSchema,'') = '' OR @NewDataSchema = 'EmpowerHealth'
		RETURN


    declare @InsertSQL nvarchar(max) 
    declare @DeleteSQL nvarchar(max) 

	set @InsertSQL = 'MERGE [' + @NewDataSchema + '].[PersonInfo] AS target
			USING (select * from [EmpowerHealth].[PersonInfo] where [SBURID] = ' + CAST(@PartnerID AS VARCHAR(20)) + ') AS source
			ON (target.[RID] = source.[RID])
			WHEN NOT MATCHED BY target THEN
				 INSERT 
                ([SBURID]
				,[FName]
                ,[MName]
                ,[LName]
                ,[MaidenName]
                ,[SingleName]
                ,[XofYName]
                ,[Title]
                ,[Ordinal]
                ,[Nickname]
                ,[DOB]
                ,[Gender]
                ,[DTUTC_Created]
                ,[DTUTC_Modified]
				,[RID]
                ,[PropBag]
                )
            VALUES
                (source.[SBURID]
				,source.[FName]
                ,source.[MName]
                ,source.[LName]
                ,source.[MaidenName]
                ,source.[SingleName]
                ,source.[XofYName]
                ,source.[Title]
                ,source.[Ordinal]
                ,source.[Nickname]
                ,source.[DOB]
                ,source.[Gender]
                ,source.[DTUTC_Created]
                ,source.[DTUTC_Modified]
				,source.[RID]
                ,source.[PropBag]
		        );' 

	SET @DeleteSQL = 'DELETE source
            FROM [EmpowerHealth].[PersonInfo] as source  
            JOIN [' + @NewDataSchema + '] .[PersonInfo] AS target  ON target.[RID] = source.[RID]
            WHERE source.[SBURID] = ' + CAST(@PartnerID AS VARCHAR(20))


    EXEC sp_executesql @InsertSQL
    EXEC sp_executesql @DeleteSQL 

END
GO
/****** Object:  StoredProcedure [main].[usp_PersonInfo_Insert]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_PersonInfo_Insert] 
    @FName NVARCHAR(100) = NULL
   ,@MName NVARCHAR(100) = NULL
   ,@LName NVARCHAR(100) = NULL
   ,@MaidenName NVARCHAR(100) = NULL
   ,@SingleName NVARCHAR(100) = NULL
   ,@XofYName NVARCHAR(100) = NULL
   ,@Title NVARCHAR(50) = NULL
   ,@Ordinal NVARCHAR(50) = NULL
   ,@Nickname NVARCHAR(100) = NULL
   ,@DOB date = NULL
   ,@Gender INT = NULL
   ,@PartnerID BIGINT
   ,@RID BIGINT 
AS
    BEGIN
    SET NOCOUNT ON;
	DECLARE @DataSchema VARCHAR(50)=''
    DECLARE @query NVARCHAR(MAX)
    DECLARE @params NVARCHAR(MAX)
	
	select @DataSchema = DataSchema from main.[Partner] where ID = @PartnerID

    set @DataSchema = ISNULL(NULLIF(@DataSchema,''), 'EmpowerHealth')

    IF LTRIM(RTRIM(@FName)) = ''
        SET @FName = NULL
    IF LTRIM(RTRIM(@LName)) = ''
        SET @LName = NULL
    
    IF @FName IS NULL AND @LName IS NULL
    BEGIN
        RETURN
    END

	SET @query = '
        INSERT INTO ['+@DataSchema+'].[PersonInfo]
                ([SBURID]
				,[FName]
                ,[MName]
                ,[LName]
                ,[MaidenName]
                ,[SingleName]
                ,[XofYName]
                ,[Title]
                ,[Ordinal]
                ,[Nickname]
                ,[DOB]
                ,[Gender]
                ,[DTUTC_Created]
                ,[DTUTC_Modified]
				,[RID]
                ,[PropBag]
                )
            VALUES
                (@PartnerID
				,@FName 
                ,@MName 
                ,@LName 
                ,@MaidenName 
                ,@SingleName 
                ,@XofYName 
                ,@Title
                ,@Ordinal 
                ,@Nickname 
                ,@DOB 
                ,@Gender 
                ,GETUTCDATE() 
                ,GETUTCDATE()
				,@RID
                ,''<PropBag />''
		        )
        '

    SET @params = 
        '@FName NVARCHAR(100) 
        ,@MName NVARCHAR(100) 
        ,@LName NVARCHAR(100) 
        ,@MaidenName NVARCHAR(100) 
        ,@SingleName NVARCHAR(100) 
        ,@XofYName NVARCHAR(100) 
        ,@Title NVARCHAR(50) 
        ,@Ordinal NVARCHAR(50) 
        ,@Nickname NVARCHAR(100) 
        ,@DOB date
        ,@Gender INT
		,@PartnerID BIGINT
		,@RID BIGINT'
				
        EXEC sp_executesql @query, @params,
		@FName = @FName 
        ,@MName = @MName 
        ,@LName = @LName 
        ,@MaidenName = @MaidenName 
        ,@SingleName = @SingleName 
        ,@XofYName = @XofYName 
        ,@Title = @Title 
        ,@Ordinal = @Ordinal 
        ,@Nickname = @Nickname 
        ,@DOB = @DOB 
        ,@Gender = @Gender 
		,@PartnerID = @PartnerID
		,@RID = @RID
 END
GO
/****** Object:  StoredProcedure [main].[usp_PersonInfo_Update]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_PersonInfo_Update] 
    @FName NVARCHAR(100) = NULL
   ,@MName NVARCHAR(100) = NULL
   ,@LName NVARCHAR(100) = NULL
   ,@MaidenName NVARCHAR(100) = NULL
   ,@SingleName NVARCHAR(100) = NULL
   ,@XofYName NVARCHAR(100) = NULL
   ,@Title NVARCHAR(50) = NULL
   ,@Ordinal NVARCHAR(50) = NULL
   ,@Nickname NVARCHAR(100) = NULL
   ,@DOB date = NULL
   ,@Gender INT = NULL
   ,@PartnerID BIGINT
   ,@RID BIGINT 
AS
    BEGIN
    SET NOCOUNT ON;
	DECLARE @DataSchema VARCHAR(50)=''
    DECLARE @query NVARCHAR(MAX)
    DECLARE @params NVARCHAR(MAX)
	declare @checkExistsQuery nvarchar(200)
	declare @isExists bit = 0

	select @DataSchema = DataSchema from main.[Partner] where ID = @PartnerID

    set @DataSchema = ISNULL(NULLIF(@DataSchema,''), 'EmpowerHealth')

	set @checkExistsQuery = 'select @isExists = 1 from ['+@DataSchema+'].[PersonInfo] where RID = ' + CAST(@RID AS VARCHAR(15))  
	
	EXECUTE sp_executesql @checkExistsQuery, N'@isExists BIT OUTPUT', @isExists = @isExists OUTPUT

	if ISNULL(@isExists , 0 )  = 0
	begin
		exec [main].[usp_PersonInfo_Insert] @FName = @FName
		                                    , @MName = @MName
		                                    , @LName = @LName
		                                    , @MaidenName = @MaidenName
		                                    , @SingleName = @SingleName
		                                    , @XofYName = @XofYName
		                                    , @Title = @Title
		                                    , @Ordinal = @Ordinal
		                                    , @Nickname = @Nickname
		                                    , @DOB = @DOB
		                                    , @Gender = @Gender
		                                    , @PartnerID = @PartnerID
		                                    , @RID = @RID
	end

	SET @query = '
        UPDATE ['+@DataSchema+'].[PersonInfo]
             SET [FName] = @FName
                ,[MName] = @MName 
                ,[LName] = @LName 
                ,[MaidenName] = @MaidenName
                ,[SingleName] = @SingleName 
                ,[XofYName] = @XofYName 
                ,[Title] = @Title
                ,[Ordinal] = @Ordinal 
                ,[Nickname] = @Nickname 
                ,[DOB] = @DOB
                ,[Gender] = @Gender 
                ,[DTUTC_Modified] = GETUTCDATE() 
			WHERE RID = @RID
        '

    SET @params = 
        '@FName NVARCHAR(100) 
        ,@MName NVARCHAR(100) 
        ,@LName NVARCHAR(100) 
        ,@MaidenName NVARCHAR(100) 
        ,@SingleName NVARCHAR(100) 
        ,@XofYName NVARCHAR(100) 
        ,@Title NVARCHAR(50) 
        ,@Ordinal NVARCHAR(50) 
        ,@Nickname NVARCHAR(100) 
        ,@DOB date
        ,@Gender INT 
		,@RID BIGINT'
				
        EXEC sp_executesql @query, @params, 
             @FName = @FName 
            ,@MName = @MName 
            ,@LName = @LName 
            ,@MaidenName = @MaidenName 
            ,@SingleName = @SingleName 
            ,@XofYName = @XofYName 
            ,@Title = @Title 
            ,@Ordinal = @Ordinal 
            ,@Nickname = @Nickname 
            ,@DOB = @DOB 
            ,@Gender = @Gender 
		    ,@RID = @RID
 END
GO
/****** Object:  StoredProcedure [main].[usp_Phones_EnsurePhone]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_Phones_EnsurePhone] 
    @PhoneCountryCode VARCHAR(5)
   ,@PhoneNumber VARCHAR(16)
   ,@PhoneExtension VARCHAR(10) = NULL
   ,@Fipscode [varchar](10) = NULL
   ,@IsValid BIT = 1
   ,@PropBag XML = '<PropBag />'
AS 
BEGIN
    SET NOCOUNT ON;

    DECLARE @ID BIGINT

    SET @PhoneCountryCode = LTRIM(RTRIM(@PhoneCountryCode))
    IF (@PhoneCountryCode IS NULL OR @PhoneCountryCode = '') 
        set @PhoneCountryCode = '1'

    SET @PhoneNumber = LTRIM(RTRIM(@PhoneNumber))
      
    SET @PhoneExtension = LTRIM(RTRIM(@PhoneExtension))
    IF (@PhoneExtension = '') 
        SET @PhoneExtension = NULL
    
    --sync up data with legacy
    exec [LegacyMain].[usp_Phones_SyncUp_Data] @PhoneCountryCode, @PhoneNumber, @PhoneExtension, @IsValid, @ID OUTPUT
    IF @ID IS NOT NULL
    BEGIN
        SELECT @ID AS PhoneId
        RETURN 
    END
    ----
    SELECT TOP 1 @ID = ID
    FROM main.[Phones] WITH (NOLOCK)
    WHERE PhoneCountryCode = @PhoneCountryCode 
        AND PhoneNumber = @PhoneNumber 
        AND ((PhoneExtension IS NULL AND @PhoneExtension IS NULL)  OR (PhoneExtension = @PhoneExtension))
				
    IF @ID IS NULL
    BEGIN
        SET @ID = 0
    --    INSERT INTO main.[Phones]
    --            ([PhoneCountryCode]
    --            ,[PhoneNumber]
    --            ,[PhoneExtension]
    --            ,[IsValid]
    --            ,[FIPSCode]
    --            ,[PropBag]
    --            )
    --        VALUES
    --            (@PhoneCountryCode 
    --            ,@PhoneNumber 
    --            ,@PhoneExtension 
    --            ,@IsValid 
    --            ,@Fipscode
    --            ,@PropBag
				--)

    --    SET @ID = SCOPE_IDENTITY()
  
     END          

    SELECT @ID AS PhoneId
    
END
GO
/****** Object:  StoredProcedure [main].[usp_Prompts_GetOrCreate]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_Prompts_GetOrCreate]
	@languageId INT ,
	@text NVARCHAR(max) = NULL,
	@audioUrl NVARCHAR(max)  =NULL,
	@audioDescription NVARCHAR(max) = NULL,
	@PromptContentweb NVARCHAR(max) = NULL,
	@PromptContentsms NVARCHAR(max) = NULL,
	@CreatedBy varchar(50) = NULL
AS
BEGIN
	
	set @languageId = ISNULL(@languageId, 1) --English

	DECLARE @promptId BIGINT
	--PROCESS FOR SYNC UP DATA
	EXEC [LegacyMain].[usp_Prompts_SyncUp_Data] @languageId, @text, @audioUrl, @audioDescription, @PromptContentweb, @PromptContentsms, @promptId OUTPUT
	IF @promptId IS NOT NULL
	BEGIN
		SELECT @promptId as PromptId
		RETURN
	END
	
	----PROCESS 2.0

	SELECT @promptId = p.id
    FROM main.Prompts p
    WHERE (p.PromptContent = @text OR @text IS NULL )
     AND (p.LanguageID = @languageId OR @languageId IS NULL )
     AND (p.PromptUrl = @audioUrl OR @audioUrl IS NULL)
     AND (p.PromptContentWeb = @PromptContentweb OR @PromptContentweb IS NULL)
     AND (p.PromptContentSms = @PromptContentsms OR @PromptContentsms IS NULL)

	
	if @promptId IS NOT NULL
	BEGIN
		SELECT @promptId AS PromptId
		RETURN 
	END
	
	INSERT INTO [main].Prompts 
		(
		LanguageID,
		PromptContent,
		PropBag,
		PromptUrl,
		PromptContentWeb,
		AudioDescription,
		PromptContentSms,
		CreatedBy, 
		CreatedOn, 
		LastModifiedBy, 
		LastModifiedOn)
	VALUES
		(
		@languageId,
		@text,
		'<propBag />',
		@audioUrl,
		@promptContentWeb,
		@audioDescription,
		@promptContentSms,
		ISNULL(@CreatedBy,'user'),
		getdate(),
		ISNULL(@CreatedBy,'user'),
		getdate())
	
	SET @promptId = SCOPE_IDENTITY()   
	SELECT @promptId as PromptId
END
GO
/****** Object:  StoredProcedure [main].[usp_Prompts_GetOrCreate_Bulk]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_Prompts_GetOrCreate_Bulk]
    @PromptParams dbo.PromptParams READONLY
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @LegacyPromptID BIGINT;
    DECLARE @PromptID BIGINT;
    DECLARE @LanguageId INT;
    DECLARE @Text NVARCHAR(MAX);
    DECLARE @AudioUrl NVARCHAR(MAX);
    DECLARE @AudioDescription NVARCHAR(MAX);
    DECLARE @PromptContentWeb NVARCHAR(MAX);
    DECLARE @PromptContentSms NVARCHAR(MAX);
    DECLARE @Results dbo.PromptResults;

    DECLARE cur CURSOR FOR 
    SELECT LanguageId, [Text], AudioUrl, AudioDescription, PromptContentWeb, PromptContentSms
    FROM @PromptParams;

    OPEN cur;

    FETCH NEXT FROM cur INTO @LanguageId, @Text, @AudioUrl, @AudioDescription, @PromptContentWeb, @PromptContentSms;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        EXEC [main].[usp_Prompts_GetOrCreate_Return_PromptId] @languageId, @text, @audioUrl, @audioDescription, @PromptContentweb, @PromptContentsms, null, @PromptId OUTPUT

        -- Collect the result
        INSERT INTO @Results (PromptId, ConcatString)
        VALUES (@PromptID, CONCAT(@Text, '|', @LanguageId, '|', @AudioUrl, '|', @AudioDescription, '|', @PromptContentWeb, '|', @PromptContentSms));
		SET @PromptID = NULL;
        FETCH NEXT FROM cur INTO @LanguageId, @Text, @AudioUrl, @AudioDescription, @PromptContentWeb, @PromptContentSms;
    END

    CLOSE cur;
    DEALLOCATE cur;

    -- Return results
    SELECT * FROM @Results;
END;
GO
/****** Object:  StoredProcedure [main].[usp_Prompts_GetOrCreate_Return_PromptId]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_Prompts_GetOrCreate_Return_PromptId]
	@languageId INT ,
	@text NVARCHAR(max) = NULL,
	@audioUrl NVARCHAR(max)  =NULL,
	@audioDescription NVARCHAR(max) = NULL,
	@PromptContentweb NVARCHAR(max) = NULL,
	@PromptContentsms NVARCHAR(max) = NULL,
	@CreatedBy NVARCHAR(max) = NULL,
	@PromptId BIGINT OUTPUT
AS
BEGIN
	
	set @languageId = ISNULL(@languageId, 1) --English

	--PROCESS FOR SYNC UP DATA
	EXEC [LegacyMain].[usp_Prompts_SyncUp_Data] @languageId, @text, @audioUrl, @audioDescription, @PromptContentweb, @PromptContentsms, @PromptId OUTPUT
	IF @PromptId IS NOT NULL
	BEGIN
		RETURN
	END
	
	----PROCESS 2.0

	SELECT @PromptId = p.id
    FROM main.Prompts p
    WHERE (p.PromptContent = @text OR @text IS NULL )
     AND (p.LanguageID = @languageId OR @languageId IS NULL )
     AND (p.PromptUrl = @audioUrl OR @audioUrl IS NULL)
     AND (p.PromptContentWeb = @PromptContentweb OR @PromptContentweb IS NULL)
     AND (p.PromptContentSms = @PromptContentsms OR @PromptContentsms IS NULL)

	
	if @PromptId IS NOT NULL
	BEGIN
		RETURN 
	END
	
	INSERT INTO [main].Prompts 
		(
		LanguageID,
		PromptContent,
		PropBag,
		PromptUrl,
		PromptContentWeb,
		AudioDescription,
		PromptContentSms,
		CreatedBy, 
		CreatedOn, 
		LastModifiedBy, 
		LastModifiedOn)
	VALUES
		(
		@languageId,
		@text,
		'<propBag />',
		@audioUrl,
		@promptContentWeb,
		@audioDescription,
		@promptContentSms,
		ISNULL(@CreatedBy,'user'),
		getdate(),
		ISNULL(@CreatedBy,'user'),
		getdate())
	
	SET @PromptId = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [main].[usp_R__GetNextRIDFromCounters]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_R__GetNextRIDFromCounters]
	@NumberOfRIDs INT = 1
	/* @RangeLevel: 1 - Low, 2 - Mid, 3 - High, NULL - High */
   ,@RangeLevel INT = 3
   ,@LowRID BIGINT OUTPUT
   ,@HighRID BIGINT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS(SELECT * FROM [main].[R_Counters])
    BEGIN
	    declare @MaxRID BIGINT
	    SELECT @MaxRID = Max(RID) FROM [main].[R]

	    SELECT @MaxRID = ISNULL(@MaxRID, 0)

	     INSERT INTO [main].[R_Counters] ( LowRangeMax, LowRangeCurrent, MidRangeMax, MidRangeCurrent, HighRangeCurrent) 
	     VALUES ( 0, 0, 0, 0 , @MaxRID) 
    END

    IF (@NumberOfRIDs IS NULL OR @NumberOfRIDs < 1) 
        SET @NumberOfRIDs = 1;

    IF (@RangeLevel IS NULL) 
        SET @RangeLevel = 3;

    DECLARE @TblNewRIDs TABLE (NewRID BIGINT)

    IF (@RangeLevel = 1) 
        BEGIN
			
            UPDATE [main].[R_Counters]
                SET LowRangeCurrent = LowRangeCurrent + @NumberOfRIDs
                OUTPUT INSERTED.LowRangeCurrent
                    INTO @TblNewRIDs
                WHERE LowRangeMax >= (LowRangeCurrent + @NumberOfRIDs)
				
            SELECT @HighRID = NewRID
                FROM @TblNewRIDs

            IF (@HighRID IS NOT NULL) 
                BEGIN
					-- success                  
                    SET @LowRID = @HighRID - @NumberOfRIDs + 1;
                    RETURN;
                END
            ELSE 
				-- ran out of LowRange values...
                GOTO HighRange;   

        END           
      
    ELSE 
        IF (@RangeLevel = 2) 
            BEGIN
                
                UPDATE [main].[R_Counters]
                    SET MidRangeCurrent = MidRangeCurrent + @NumberOfRIDs
                    OUTPUT INSERTED.MidRangeCurrent
                        INTO @TblNewRIDs
                    WHERE MidRangeMax >= (MidRangeCurrent + @NumberOfRIDs)
				
                SELECT @HighRID = NewRID
                    FROM @TblNewRIDs

                IF (@HighRID IS NOT NULL) 
                    BEGIN
					-- success                  
                        SET @LowRID = @HighRID - @NumberOfRIDs + 1;
                        RETURN;
                    END
                ELSE 
				-- ran out of LowRange values...
                    GOTO HighRange;   
            END    

    HighRange:

    UPDATE [main].[R_Counters]
        SET HighRangeCurrent = HighRangeCurrent + @NumberOfRIDs
        OUTPUT INSERTED.HighRangeCurrent
            INTO @TblNewRIDs

    SELECT @HighRID = NewRID
        FROM @TblNewRIDs

	-- success                  
    SET @LowRID = @HighRID - @NumberOfRIDs + 1;
END
GO
/****** Object:  StoredProcedure [main].[usp_R__Insert]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_R__Insert]
	 @RTypeID INT
   ,@IsActive BIT = 1
   ,@IsTesting BIT = 0
   ,@RID BIGINT OUTPUT
   ,@ErrorMessage NVARCHAR(1000) OUTPUT
AS
	SET NOCOUNT ON;

        SET @ErrorMessage = '';
        declare @PropBag XML = N'<PropBag></PropBag>'
		-- integrity check:
        IF (@RTypeID != 3 )
        BEGIN
            SET @ErrorMessage = 'Only support for Member of a Group.'
            RETURN -99;
        END      

        DECLARE @RangeLevel INT

        SET @RangeLevel = 3

        DECLARE @LowRID BIGINT
           ,@HighRID BIGINT

        EXEC [main].[usp_R__GetNextRIDFromCounters] 
            @NumberOfRIDs = 1
           ,@RangeLevel = @RangeLevel
           ,@LowRID = @LowRID OUTPUT
           ,@HighRID = @HighRID OUTPUT

        INSERT INTO [main].[R]
                ([RID]
                ,[RTypeID]
                ,[IsActive]
                ,[IsTesting]
                ,[PropBag]
                )
            VALUES
                (@LowRID
                ,@RTypeID
                ,@IsActive
                ,@IsTesting
                ,@PropBag
		        )

        SET @RID = @LowRID

        RETURN 0;
RETURN 0
GO
/****** Object:  StoredProcedure [main].[usp_R__InsertRange]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_R__InsertRange]
	 @Count INT
   ,@RTypeID INT
   ,@IsActive BIT = 1
   ,@IsTesting BIT = 0
   ,@PropBag XML = N'<PropBag></PropBag>'
   ,@RID1 BIGINT OUTPUT
   ,@RID2 BIGINT OUTPUT
   ,@IsError BIT OUTPUT
   ,@ErrorMessage NVARCHAR(100) OUTPUT
AS
	SET NOCOUNT ON;

        SET @IsError = 0;
        SET @ErrorMessage = '';

        IF (@Count <= 0) 
            RETURN 0;

		-- integrity check:
       IF (@RTypeID != 3 )
        BEGIN
            SET @ErrorMessage = 'Only support for Member of a Group.'
            RETURN -99;
        END      

        DECLARE @RangeLevel INT

        SET @RangeLevel = 3

        BEGIN TRY

            DECLARE @LowRID BIGINT
               ,@HighRID BIGINT

            EXEC [main].[usp_R__GetNextRIDFromCounters] 
                @NumberOfRIDs = @Count
               ,@RangeLevel = @RangeLevel
               ,@LowRID = @LowRID OUTPUT
               ,@HighRID = @HighRID OUTPUT

			;WITH T AS (
                          SELECT @LowRID AS a
                               ,@LowRID AS b
                          UNION ALL
                          SELECT a
                               ,b + 1
                            FROM T
                            WHERE b < @HighRID
                         )
                INSERT INTO [main].[R]  
                ([RID]
                ,[RTypeID]
                ,[IsActive]
                ,[IsTesting]
                ,[PropBag]
                )
                SELECT T.b
                        ,@RTypeID
                        ,@IsActive
                        ,@IsTesting
                        ,@PropBag
                    FROM T
                OPTION (MAXRECURSION 0) /* default is 100. Will throw an error if not set to a higher number or 0 */
         
            SET @RID1 = @LowRID;
            SET @RID2 = @HighRID;

            RETURN 0;
        END TRY
        BEGIN CATCH
        
            SET @IsError = 1
            SET @ErrorMessage = ERROR_MESSAGE()
            RETURN -99

        END CATCH    
RETURN 0
GO
/****** Object:  StoredProcedure [main].[usp_RID_Gen]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_RID_Gen] (@NumberOfRIDs AS INT ,@RID AS BIGINT = 0 OUTPUT ,@R AS INT = 0 OUTPUT)
AS
BEGIN
	SET NOCOUNT ON;

declare @LowRID int, @HighRID int, @RangeLevel int;

EXEC [main].[usp_R__GetNextRIDFromCounters] @NumberOfRIDs	,@RangeLevel = 3	,@LowRID = @LowRID OUTPUT	,@HighRID = @HighRID OUTPUT


DECLARE @Out TABLE (RID bigint, R int IDENTITY(1,1));
    WHILE (@LowRID<=@HighRID)
		BEGIN
			INSERT INTO @Out (RID) VALUES (@LowRID);
			SET @LowRID = @LowRID + 1;
		END
    SELECT RID, R FROM @Out ORDER BY R;
END
GO
/****** Object:  StoredProcedure [main].[usp_StatesURL_BenefitType_List_All]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_StatesURL_BenefitType_List_All]
AS
SELECT
'https://member.uhc.com/communityplan/public/fl-recertification' as [Code],
'https://member.uhc.com/communityplan/public/fl-recertification' as [name],
'Medicaid' as [BenefitType]
UNION
SELECT
'https://member.uhc.com/communityplan/public/ks-recertification' as [Code],
'https://member.uhc.com/communityplan/public/ks-recertification' as [name],
'Medicaid' as [BenefitType]
UNION
SELECT
'https://member.uhc.com/communityplan/public/la-recertification' as [Code],
'https://member.uhc.com/communityplan/public/la-recertification' as[name],
'Medicaid' as [BenefitType]
UNION
SELECT
'https://member.uhc.com/communityplan/public/md-recertification' as [Code],
'https://member.uhc.com/communityplan/public/md-recertification' as[name],
'Medicaid' as [BenefitType]
UNION
SELECT
'https://member.uhc.com/communityplan/public/mn-recertification' as [Code],
'https://member.uhc.com/communityplan/public/mn-recertification' as[name],
'Medical Assistance' as [BenefitType]
UNION
SELECT
'https://member.uhc.com/communityplan/public/mo-recertification' as [Code],
'https://member.uhc.com/communityplan/public/mo-recertification' as[name],
'Medicaid' as [BenefitType]
UNION
SELECT
'https://member.uhc.com/communityplan/public/tx-recertification' as [Code],
'https://member.uhc.com/communityplan/public/tx-recertification' as[name],
'Medicaid' as [BenefitType]
UNION
SELECT
'https://member.uhc.com/communityplan/public/va-recertification' as [Code],
'https://member.uhc.com/communityplan/public/va-recertification' as[name],
'Medicaid' as [BenefitType]
UNION
SELECT
'https://member.uhc.com/communityplan/public/ri-recertification' as [Code],
'https://member.uhc.com/communityplan/public/ri-recertification' as[name],
'Medicaid' as [BenefitType]
UNION
SELECT
'https://nystateofhealth.ny.gov/' as [Code],
'https://nystateofhealth.ny.gov/' as[name],
'Medicaid' as [BenefitType]
UNION
SELECT
'https://member.uhc.com/communityplan/public/az-recertification' as [Code],
'https://member.uhc.com/communityplan/public/az-recertification' as[name],
'Medicaid' as [BenefitType]
UNION
SELECT
'https://member.uhc.com/communityplan/public/pa-recertification' as [Code],
'https://member.uhc.com/communityplan/public/pa-recertification' as[name],
'Medicaid' as [BenefitType]
GO
/****** Object:  StoredProcedure [main].[usp_upsert_Addresses]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [main].[usp_upsert_Addresses]
AS
BEGIN
    SET NOCOUNT ON
	SET IDENTITY_INSERT main.[Addresses] ON;
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'Addresses')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[Addresses] AS target
		USING (
			SELECT gat.* 
			FROM [Temp].Addresses gat
			WHERE DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.ID = source.ID)

		WHEN MATCHED THEN
			UPDATE SET
					[AddressLine1]			= source.[AddressLine1]
					,[AddressLine2]		= source.[AddressLine2]
					,[AddressLine3] = source.[AddressLine3]
					,[City] = source.[City]
					,[State] = source.[State]
					,[ZipCode] = source.[ZipCode]
					,[CountryCode] = source.[CountryCode]
					,[IsValid] = source.[IsValid]
					,[PropBag] = source.[PropBag]
					,[CreatedOn] = source.[DTUTC_Created]
					,[LastModifiedOn] = source.[DTUTC_Modified]
		WHEN NOT MATCHED THEN
			INSERT( ID
					,[AddressLine1]			
					,[AddressLine2]		
					,[AddressLine3]
					,[City]
					,[State]
					,[ZipCode]
					,[CountryCode]
					,[IsValid]
					,[PropBag]
					,CreatedOn 
					,LastModifiedOn)
			VALUES( source.ID
					,source.[AddressLine1]
					,source.[AddressLine2]
					,source.[AddressLine3]
					,source.[City]
					,source.[State]
					,source.[ZipCode]
					,source.[CountryCode]
					,source.[IsValid]
					,source.[PropBag]
					,source.DTUTC_Created
					,source.DTUTC_Modified);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'Addresses';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
SET IDENTITY_INSERT main.[Addresses] OFF;
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_Alerts]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [main].[usp_upsert_Alerts]
AS
BEGIN
    SET NOCOUNT ON
	
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'Alerts')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())
		--SET IDENTITY_INSERT main.Alerts ON;
		MERGE [main].[Alerts] AS target
		USING (
			SELECT gat.* 
			FROM [Temp].Alerts gat
		) AS source
		ON (target.AlertID = source.AlertID AND target.[LanguageId] = source.[LanguageId])

		WHEN MATCHED THEN
			UPDATE SET
					[VitalTypeID]			= source.[VitalTypeID]
					,[Frequency]		= source.[Frequency]
					,[AlertType] = source.[AlertType]
					,[DescriptionUrl] = source.[DescriptionUrl]
					,[QuestionId] = source.[QuestionId]
					,[Content] = source.[Content]
					,[TextFilter] = CONCAT(source.[QuestionId],source.[VitalTypeID],source.[Frequency],source.[AlertType],source.[LanguageId])
		WHEN NOT MATCHED THEN
			INSERT( [AlertID]
					,[Content]			
					,[VitalTypeID]		
					,[Frequency]
					,[AlertType]
					,[DescriptionUrl]
					,[LanguageId]
					,[QuestionId]
					,[TextFilter])
			VALUES( source.[AlertID]
					,source.[Content]
					,source.[VitalTypeID]
					,source.[Frequency]
					,source.[AlertType]
					,source.[DescriptionUrl]
					,source.[LanguageId]
					,source.[QuestionId]
					,CONCAT(source.[QuestionId],source.[VitalTypeID],source.[Frequency],source.[AlertType],source.[LanguageId]));

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'Alerts';
		--SET IDENTITY_INSERT main.Alerts OFF;
	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_AutomatedCallsSchedule]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [main].[usp_upsert_AutomatedCallsSchedule]
AS
BEGIN
    SET NOCOUNT ON
	SET IDENTITY_INSERT main.AutomatedCallsSchedule ON;
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'AutomatedCallsSchedule')
		SET IDENTITY_INSERT [main].AutomatedCallsSchedule  ON;
		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].AutomatedCallsSchedule AS target
		USING (
			SELECT gat.* 
			FROM [Temp].AutomatedCallsSchedule gat
			WHERE DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.ID = source.ID)

		WHEN MATCHED THEN
			UPDATE SET
					[CallRecipientRID]			= source.[CallRecipientRID]
					,[PhoneNumber]		= source.[PhoneNumber]
					,[CallOutGraph] = source.[CallOutGraph]
					,[InputArguments] = source.[InputArguments]
					,[IsRecurring] = source.[IsRecurring]
					,[DTUTC_NextExecutionTime] = source.[DTUTC_NextExecutionTime]
					,[IsLocked] = source.[IsLocked]
					,[DTUTC_SuspendedFrom] = source.[DTUTC_SuspendedFrom]
					,[DTUTC_SuspendedTo] = source.[DTUTC_SuspendedTo]
					,[CreatedByRID] = source.[CreatedByRID]
					,[CreatedOn] = source.[DTUTC_Created]
					,[LastModifiedOn] = source.[DTUTC_Modified]
					,[PropBag] = source.[PropBag]
					,[workflowtemplate] = source.[workflowtemplate]
					,[Retry] = source.[Retry]
					,[Shift] = source.[Shift]
					,[InstanceId] = source.[InstanceId]
					,[IsCustomFlow] = source.[IsCustomFlow]
					,[WeekDay] = source.[WeekDay]
					,[Call] = source.[Call]
					,[IvrClient] = source.[IvrClient]
					,[DisableVoicemail] = source.[DisableVoicemail]
					,[DTUTC_LastExecuted] = source.[DTUTC_LastExecuted]
					,[CampaignID] = source.[CampaignID]
					,[PopulationGroupID] = source.[PopulationGroupID]
					,[FileuploadID] = source.[FileuploadID]
		WHEN NOT MATCHED THEN
			INSERT( ID
					,[CallRecipientRID]			
					,[PhoneNumber]		
					,[CallOutGraph]
					,[InputArguments]
					,[IsRecurring]
					,[DTUTC_NextExecutionTime]
					,[IsLocked]
					,[DTUTC_SuspendedFrom]
					,[DTUTC_SuspendedTo]
					,[CreatedByRID] 
					,[CreatedOn]
					,[LastModifiedOn]
					,[PropBag] 
					,[workflowtemplate]
					,[Retry] 
					,[Shift] 
					,[InstanceId] 
					,[IsCustomFlow] 
					,[WeekDay] 
					,[Call] 
					,[IvrClient] 
					,[DisableVoicemail]
					,[DTUTC_LastExecuted]
					,[CampaignID] 
					,[PopulationGroupID]
					,[FileuploadID] )
			VALUES( source.ID
					,source.[CallRecipientRID]			
					,source.[PhoneNumber]		
					,source.[CallOutGraph]
					,source.[InputArguments]
					,source.[IsRecurring]
					,source.[DTUTC_NextExecutionTime]
					,source.[IsLocked]
					,source.[DTUTC_SuspendedFrom]
					,source.[DTUTC_SuspendedTo]
					,source.[CreatedByRID] 
					,source.[DTUTC_Created]
					,source.[DTUTC_Modified]
					,source.[PropBag] 
					,source.[workflowtemplate]
					,source.[Retry] 
					,source.[Shift] 
					,source.[InstanceId] 
					,source.[IsCustomFlow] 
					,source.[WeekDay] 
					,source.[Call] 
					,source.[IvrClient] 
					,source.[DisableVoicemail]
					,source.[DTUTC_LastExecuted]
					,source.[CampaignID] 
					,source.[PopulationGroupID]
					,source.[FileuploadID]);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'AutomatedCallsSchedule';
		SET IDENTITY_INSERT [main].AutomatedCallsSchedule  OFF;
	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
SET IDENTITY_INSERT main.[Addresses] OFF;
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_CareGivers]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_CareGivers]
AS
BEGIN
    SET NOCOUNT ON
BEGIN TRY
	BEGIN TRANSACTION


		MERGE [main].[CareGivers] AS target
		USING (
			SELECT cg.*, gcr.RoleID, gs.SpecialtyID
			FROM [Temp].CareGivers cg
			LEFT JOIN Temp.GiversCareRoles gcr on gcr.CareGiverID = cg.RID
			LEFT JOIN Temp.GiversSpecialties gs on gs.CareGiverID = cg.RID
		) AS source
		ON (target.RID = source.RID)

		WHEN MATCHED THEN
			UPDATE SET
					[PhotoUrl]	= source.[PhotoUrl]
					,[Language] = source.[Language]
					,[Timezone] = source.[Timezone]
					,[NotificationType] = source.[NotificationType]
					,[LastLogin] = source.[LastLogin]
					,[DTUTC_PlanEnd] = source.[DTUTC_PlanEnd]
					,[PlanType] = source.[PlanType]
					,[ExternalId] = source.[ExternalId]
					,[Designation] = source.[Designation]
					,[GiverType] = source.[GiverType]
					,[CustomField1] = source.[CustomField1]
					,[CustomField2] = source.[CustomField2]
					,[CustomField3] = source.[CustomField3]
					,[CustomField4] = source.[CustomField4]
					,[IsPartnerDefaultGiver] = source.[IsPartnerDefaultGiver]
					,[CareRoleID] = source.[RoleID]
					,[SpecialtyID] = source.[SpecialtyID]
		WHEN NOT MATCHED THEN
			INSERT([RID]
           ,[PhotoUrl]
           ,[Language]
           ,[Timezone]
           ,[NotificationType]
           ,[LastLogin]
           ,[DTUTC_PlanEnd]
           ,[PlanType]
           ,[ExternalId]
           ,[Designation]
           ,[GiverType]
           ,[CustomField1]
           ,[CustomField2]
           ,[CustomField3]
           ,[CustomField4]
           ,[IsPartnerDefaultGiver]
           ,[CareRoleID]
           ,[SpecialtyID])
			VALUES( source.Rid
					,source.[PhotoUrl]
					,source.[Language]
					,source.[Timezone]
					,source.[NotificationType]
					,source.[LastLogin]
					,source.[DTUTC_PlanEnd]
					,source.[PlanType]
					,source.[ExternalId]
					,source.[Designation]
					,source.[GiverType]
					,source.[CustomField1]
					,source.[CustomField2]
					,source.[CustomField3]
					,source.[CustomField4]
					,source.[IsPartnerDefaultGiver]
					,source.[RoleID]
					,source.[SpecialtyID]);


	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_CarePathway]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_CarePathway]
AS
BEGIN
    SET NOCOUNT ON
	SET IDENTITY_INSERT main.[CarePathway] ON;
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'CarePathway')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[CarePathway] AS target
		USING (
			SELECT qb.*,sqb.* 
			FROM [Temp].QuestionsBlock qb
			LEFT JOIN (SELECT MAX(SBURID) AS Sburid,QuestionBlockid 
			FROM Temp.SBUQuestionBlocks
			GROUP BY QuestionBlockid) sqb on qb.id = sqb.QuestionBlockID
			INNER JOIN main.Partner p on p.id = sqb.Sburid
			WHERE DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.ID = source.ID)

		WHEN MATCHED THEN
			UPDATE SET
					PartnerID	= source.SBURid
					,Title		= source.Title
					,[Description] = source.[Description]
					,GroupID = source.GroupID
					,LanguageID = source.LanguageID
					,CreatedOn = source.DTUTC_Created
					,LastModifiedOn = source.DTUTC_Modified
		WHEN NOT MATCHED THEN
			INSERT( ID
					,PartnerID						
					,Title		
					,[Description] 
					,GroupID
					,LanguageID 
					,CreatedOn 
					,LastModifiedOn)
			VALUES( source.ID
					,source.SBURID
					,source.Title
					,source.[Description]
					,source.GroupID
					,source.LanguageID
					,source.DTUTC_Created
					,source.DTUTC_Modified);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'CarePathway';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
SET IDENTITY_INSERT main.[CarePathway] OFF;
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_CarePathwayQuestions]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_CarePathwayQuestions]
AS
BEGIN
    SET NOCOUNT ON
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'CarePathwayQuestions')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[CarePathwayQuestions] AS target
		USING (
			SELECT gat.* 
			FROM [Temp].QuestionBlockQuestions gat
			INNER JOIN main.CarePathway cpw on gat.QuestionBlockID = cpw.ID
			INNER JOIN main.Question q on q.id = gat.CustomQuestionID
			WHERE ISNUMERIC(CustomQuestionID) = 1
		) AS source
		ON (target.CarePathwayID = source.QuestionBlockID AND target.QuestionID = source.CustomQuestionID)

		WHEN MATCHED THEN
			UPDATE SET
					QuestionOrder						= source.QuestionOrder
					,IsCustomQuestion		= source.IsCustomQuestion
		WHEN NOT MATCHED THEN
			INSERT( CarePathwayID
					,QuestionID			
					,QuestionOrder		
					,IsCustomQuestion)
			VALUES( source.QuestionBlockID
					,source.CustomQuestionID
					,source.QuestionOrder
					,source.IsCustomQuestion);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'CarePathwayQuestions';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_CarePlan]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_CarePlan]
AS
BEGIN
    SET NOCOUNT ON
    SET IDENTITY_INSERT main.CarePlan ON;
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'CarePlan')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[CarePlan] AS target
		USING (
			SELECT cf.*,scf.*
			FROM [Temp].[CustomFlows] cf
			LEFT JOIN (SELECT MAX(SBURID) AS SBURID,CustomFlowID FROM Temp.SBUCustomFlows GROUP BY CustomFlowID) scf on cf.id = scf.CustomFlowID
			INNER JOIN main.M_CarePlanGroup cpg on cpg.id = cf.Groupid
		) AS source
		ON (target.id = source.id)

		WHEN MATCHED THEN
			UPDATE SET
					[PartnerID]						= source.[SBURID]
					,[Name]		= source.[Name]
					,[Description] = source.[Description]
					,[CarePlanGroupID] = source.GroupId
					,Duration = source.Duration
					,UnitMeasure = source.UnitMeasure
					,Schedule = source.Schedule
					,Segment = source.Segment
					,Scope = source.Scope
					,Exclude = source.Exclude
					,FlowTemplate = source.FlowTemplate
					,Attempts = source.Attempts
					,Continuous = source.Continuous
					,Languageid = source.languageid
					,Frequency = source.Frequency
					,TextToSpeech = source.TextToSpeech
					,Voice = source.Voice
		WHEN NOT MATCHED THEN	
          INSERT ( ID
            ,[PartnerID]
           ,[Name]
           ,[Description]
           ,[CarePlanGroupID]
           ,[Duration]
           ,[UnitMeasure]
           ,[Schedule]
           ,[Segment]
           ,[Scope]
           ,[Exclude]
           ,[FlowTemplate]
           ,[Attempts]
           ,[Continuous]
           ,[LanguageId]
           ,[Frequency]
           ,[TextToSpeech]
           ,[Voice])
		   VALUES(source.id
           ,source.SBURID
           ,source.[Name]
           ,source.[Description]
           ,source.[GroupID]
           ,source.[Duration]
           ,source.[UnitMeasure]
           ,source.[Schedule]
           ,source.[Segment]
           ,source.[Scope]
           ,source.[Exclude]
           ,source.[FlowTemplate]
           ,source.[Attempts]
           ,source.[Continuous]
           ,source.[LanguageId]
           ,source.[Frequency]
           ,source.[TextToSpeech]
           ,source.[Voice]);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'CarePlan';
        SET IDENTITY_INSERT main.CarePlan OFF;
	COMMIT TRANSACTION
END TRY
    
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_CarePlanAttributes]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_CarePlanAttributes]
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION
        
		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'CarePlanAttributes')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].CarePlanAttributes AS target
		USING (
			SELECT cfa.*
            FROM  Temp.CustomFlowAttributes cfa
            INNER JOIN main.CarePlan cp on cfa.CustomflowID = cp.ID
			INNER JOIN main.[M_AttributeType] mat on cfa.TypeID = mat.ID
		) AS source
		ON (target.CarePlanID = source.CustomflowID AND target.[AttributeTypeID] = source.TypeID)

		WHEN MATCHED THEN
			UPDATE SET
					[AttributeValue]						= source.[AttributeValue]
					,[AttributeDescription]		= source.[AttributeDescription]
					,[IsActive] = source.[IsActive]
					,[CreatedOn] = source.[DTUTC_Created]
					,[LastModifiedOn] = source.[DTUTC_Modified]
					,[PropBag] = source.[PropBag]
		WHEN NOT MATCHED THEN	
          INSERT (CarePlanID
           ,[AttributeTypeID]
           ,[AttributeValue]
           ,[AttributeDescription]
           ,[IsActive]
           ,[CreatedOn]
           ,[LastModifiedOn]
           ,[PropBag])
		   VALUES(source.CustomflowID
           ,source.TypeID
           ,source.[AttributeValue]
           ,source.[AttributeDescription]
           ,source.[IsActive]
           ,source.[DTUTC_Created]
           ,source.[DTUTC_Modified]
           ,source.[PropBag]);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'CarePlanAttributes';
        
	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_CarePlanCareRecordings]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_CarePlanCareRecordings]
AS
BEGIN
    SET NOCOUNT ON
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'CarePlanCareRecordings')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].CarePlanCareRecordings AS target
		USING (
			SELECT cf.*
			FROM [Temp].CustomFlowCareRecordings cf
			INNER JOIN main.CarePlan cp on cp.id = cf.flowid
			INNER JOIN main.CareRecordings cr on cr.id = cf.CareRecordingId
		) AS source
		ON (target.[CarePlanID] = source.Flowid)

		WHEN NOT MATCHED THEN	
          INSERT ( [CarePlanID]
            ,CareRecordingId)
		   VALUES(source.Flowid
           ,source.CareRecordingId);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'CarePlanCareRecordings';
        
	COMMIT TRANSACTION
END TRY
    
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_CarePlanQuestions]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [main].[usp_upsert_CarePlanQuestions]
AS
BEGIN
    SET NOCOUNT ON
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'CarePlanQuestions')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[CarePlanQuestions] AS target
		USING (
			SELECT gat.* ,VariableIndex
			FROM [Temp].CustomFlowQuestions gat
			INNER JOIN main.Question q on gat.QuestionID = q.ID
			INNER JOIN main.CarePlanScheduling cps on cps.CarePlanID = gat.Flowid  AND cps.VariableIndex = gat.WeekDay
			WHERE ISNUMERIC(gat.QuestionID) = 1
		) AS source
		ON (target.CarePlanID = source.Flowid and target.QuestionID = source.QuestionID AND target.VariableIndex = source.VariableIndex)

		WHEN MATCHED THEN
			UPDATE SET
					QuestionOrder						= source.QuestionOrder
					,IsCustomQuestion		= source.IsCustomQuestion
					,[Call] = source.[Call]
					,[WeekDay] = source.[WeekDay]
					,IsQuestionBlock = source.IsQuestionBlock
					,VariableIndex = source.VariableIndex
		WHEN NOT MATCHED THEN
			INSERT( CarePlanID
					,QuestionID	
					,QuestionOrder					
					,IsCustomQuestion		
					,[Call]
					,[WeekDay] 
					,IsQuestionBlock
					,VariableIndex)
			VALUES( source.Flowid
					,source.QuestionID	
					,source.QuestionOrder		
					,source.IsCustomQuestion 
					,source.[Call] 
					,source.[WeekDay] 
					,source.IsQuestionBlock
					,source.VariableIndex);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'CarePlanQuestions';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_CarePlanRecipients]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_CarePlanRecipients]
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION
        SET IDENTITY_INSERT main.CarePlanRecipients ON;
		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'CarePlanRecipients')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].CarePlanRecipients AS target
		USING (
			SELECT cfa.*
            FROM  Temp.CustomFlowRecipients cfa
            INNER JOIN main.CarePlan cp on cfa.CustomflowID = cp.ID
		) AS source
		ON (target.ID = source.ID)

		WHEN MATCHED THEN
			UPDATE SET
					[CareRecipientId]						= source.[CareRecipientId]
					,[StartDate]		= source.[StartDate]
					,[EndDate] = source.[EndDate]
					,[CustomFlowGroupsId] = source.[CustomFlowGroupsId]
					,[Status] = source.[Status]
					,[OverRiding] = source.[OverRiding]
                    ,[Channel] = source.[Channel]
                    ,[Frequency] = source.[Frequency]
                    ,[CreatedOn] = source.[DTUTC_created]
		WHEN NOT MATCHED THEN	
          INSERT (ID
			,CarePlanID
           ,[CareRecipientId]
           ,[StartDate]
           ,[EndDate]
           ,[CustomFlowGroupsId]
           ,[Status]
           ,[OverRiding]
           ,[Channel]
           ,[Frequency]
           ,[CreatedOn])
		   VALUES(source.ID
		   ,source.CustomflowID
           ,source.[CareRecipientId]
           ,source.[StartDate]
           ,source.[EndDate]
           ,source.[CustomFlowGroupsId]
           ,source.[Status]
           ,source.[OverRiding]
           ,source.[Channel]
           ,source.[Frequency]
           ,source.[DTUTC_created]);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'CarePlanRecipients';
		SET IDENTITY_INSERT main.CarePlanRecipients OFF;
	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_CarePlanRecipientsSchedule]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_CarePlanRecipientsSchedule]
AS
BEGIN
    SET NOCOUNT ON
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'CarePlanRecipientsSchedule')
		SET IDENTITY_INSERT [main].CarePlanRecipientsSchedule  ON;
		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

MERGE [main].CarePlanRecipientsSchedule AS target
		USING (
					SELECT cfrs.*
					FROM Temp.[CustomFlowRecipientsSchedule] cfrs
					INNER JOIN main.[CarePlanRecipients] cpr on cfrs.[CustomFlowRecipientsId] = cpr.id
		) AS source
		ON (target.ID = source.ID)

		WHEN MATCHED THEN
			UPDATE SET
					[CarePlanRecipientsID] = source.[CustomFlowRecipientsId],
					[AutomatedCallsScheduleID] = source.[AutomatedCallsScheduleId],
					[StartDate] = source.[StartDate],
					[EndDate] = source.[EndDate]
		WHEN NOT MATCHED THEN
			INSERT( [ID]
					,[CarePlanRecipientsID]			
					,[AutomatedCallsScheduleID]		
					,[StartDate]
					,[EndDate])
			VALUES( source.[ID]
					,source.[CustomFlowRecipientsId]
					,source.[AutomatedCallsScheduleId]
					,source.[StartDate]
					,source.[EndDate]);


		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'CarePlanRecipientsSchedule';
		SET IDENTITY_INSERT [main].CarePlanRecipientsSchedule  OFF;
	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_CarePlanScheduling]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_CarePlanScheduling]
AS
BEGIN
    SET NOCOUNT ON
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'CarePlanScheduling')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

MERGE [main].[CarePlanScheduling] AS target
		USING (
					SELECT cfs.*, cfs.Weekday AS VariableIndex
					FROM [Temp].CustomFlowScheduling cfs
					INNER JOIN (
					SELECT Flowid, 1 AS Call, Schedule, Weekday
					FROM [Temp].CustomFlowScheduling gat
					INNER JOIN main.CarePlan cp on gat.FlowID = cp.ID
					GROUP BY Flowid,Schedule,Weekday
) cte on cfs.flowid = cte.FlowId AND cfs.Call = cte.Call AND cfs.WeekDay = cte.WeekDay
		) AS source
		ON (target.CarePlanID = source.FlowID AND target.VariableIndex = source.VariableIndex)

		WHEN MATCHED THEN
			UPDATE SET
					[CallOutGraph] = source.[CallOutGraph]
		WHEN NOT MATCHED THEN
			INSERT( CarePlanID
					,[Call]			
					,[WeekDay]		
					,[CallOutGraph]
					,VariableIndex)
			VALUES( source.FlowID
					,source.[Call]
					,source.[WeekDay]
					,source.[CallOutGraph]
					,source.[VariableIndex]);


		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'CarePlanScheduling';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_CareRecipients]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_CareRecipients]
AS
BEGIN
    SET NOCOUNT ON
	
BEGIN TRY
	BEGIN TRANSACTION

		MERGE [main].[CareRecipients] AS target
		USING (
			SELECT cr.*
			FROM [Temp].CareRecipients cr
		) AS source
		ON (target.RID = source.RID)

		WHEN MATCHED THEN
			UPDATE SET
					[IsProfileComplete]	= source.[IsProfileComplete]
					,[PhotoUrl] = source.[PhotoUrl]
					,[Language] = source.[Language]
					,[Timezone] = source.[Timezone]
					,[ZipCode] = source.[ZipCode]
					,[StartDate] = source.[StartDate]
					,[SuspendedFrom] = source.[SuspendedFrom]
					,[SuspendedTo] = source.[SuspendedTo]
					,[PausedReason] = source.[PausedReason]
					,[EMRSystemName] = source.[EMRSystemName]
					,[MRN] = source.[MRN]
					,[ExternalID] = source.[ExternalID]
					,[CustomField1] = source.[CustomField1]
					,[CustomField2] = source.[CustomField2]
					,[CustomField3] = source.[CustomField3]
					,[CustomField4] = source.[CustomField4]
					,[CustomField5] = source.[CustomField5]
					,[CustomField6] = source.[CustomField6]
					,[CustomField7] = source.[CustomField7]
					,[CustomField8] = source.[CustomField8]
					,[SegmentID] = source.[SegmentID]
					,[IsCreatedFromPortal] = 0
					,[CreatedOn] = source.[DTUTC_Modified]
					,[LastModifiedOn] = source.[DTUTC_Modified]
		WHEN NOT MATCHED THEN
			INSERT(  RID,
					[IsProfileComplete]
					,[PhotoUrl]
					,[Language]
					,[Timezone] 
					,[ZipCode]
					,[StartDate] 
					,[SuspendedFrom] 
					,[SuspendedTo] 
					,[PausedReason] 
					,[EMRSystemName] 
					,[MRN] 
					,[ExternalID] 
					,[CustomField1] 
					,[CustomField2] 
					,[CustomField3] 
					,[CustomField4] 
					,[CustomField5]
					,[CustomField6] 
					,[CustomField7]
					,[CustomField8] 
					,[SegmentID] 
					,[IsCreatedFromPortal]
					,[CreatedOn]
					,[LastModifiedOn])
			VALUES( source.Rid
					,source.[IsProfileComplete]
					,source.[PhotoUrl]
					,source.[Language]
					,source.[Timezone]
					,source.[ZipCode]
					,source.[StartDate]
					,source.[SuspendedFrom]
					,source.[SuspendedTo]
					,source.[PausedReason]
					,source.[EMRSystemName]
					,source.[MRN]
					,source.[ExternalID]
					,source.[CustomField1]
					,source.[CustomField2]
					,source.[CustomField3]
					,source.[CustomField4]
					,source.[CustomField5]
					,source.[CustomField6]
					,source.[CustomField7]
					,source.[CustomField8]
					,source.[SegmentID]
					,0
					,source.[DTUTC_Modified]
					,source.[DTUTC_Modified]);


	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_CareRecordings]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [main].[usp_upsert_CareRecordings]
AS
BEGIN
    SET NOCOUNT ON
	SET IDENTITY_INSERT main.[CareRecordings] ON;
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'CareRecordings')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[CareRecordings] AS target
		USING (
			SELECT gat.* 
			FROM [Temp].CareRecordings gat
			INNER JOIN main.Prompts p on p.id = gat.Promptid and p.languageid = gat.languageid 
			WHERE DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.ID = source.ID)

		WHEN MATCHED THEN
			UPDATE SET
					[Name]						= source.[Name]
					,[Description]		= source.[Description]
					,[Text] = source.[Text]
					,[Section] = source.[Section]
					,[Type] = source.[Type]
					,PromptId = source.PromptId
					,LanguageId = source.LanguageId
					,CreatedOn = source.DTUTC_Created
					,LastModifiedOn = source.DTUTC_Modified
		WHEN NOT MATCHED THEN
			INSERT( ID
					,[Name]			
					,[Description]		
					,[Text]
					,[Section]
					,[Type] 
					,PromptId 
					,LanguageId 
					,CreatedOn 
					,LastModifiedOn)
			VALUES( source.ID
					,source.[Name]
					,source.[Description]
					,source.[Text]
					,source.[Section]
					,source.[Type]
					,source.PromptId
					,source.LanguageId
					,source.DTUTC_Created
					,source.DTUTC_Modified);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'CareRecordings';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
SET IDENTITY_INSERT main.[CareRecordings] OFF;
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_CareRules]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_CareRules]
AS
BEGIN
    SET NOCOUNT ON
    SET IDENTITY_INSERT main.CareRules ON;
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'CareRules')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].CareRules AS target
		USING (
			SELECT cf.*
			FROM [Temp].[CareRules] cf
		) AS source
		ON (target.id = source.id)

		WHEN MATCHED THEN
			UPDATE SET
					CareRule				= source.CareRule
		WHEN NOT MATCHED THEN	
          INSERT ( ID
            ,CareRule)
		   VALUES(source.id
           ,source.CareRule);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'CareRules';
        SET IDENTITY_INSERT main.CareRules OFF;
	COMMIT TRANSACTION
END TRY
    
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_EmailAddresses]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [main].[usp_upsert_EmailAddresses]
AS
BEGIN
    SET NOCOUNT ON
	SET IDENTITY_INSERT main.EmailAddresses ON;
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'EmailAddresses')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].EmailAddresses AS target
		USING (
			SELECT gat.* 
			FROM [Temp].EmailAddresses gat
			WHERE DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.ID = source.ID)

		WHEN MATCHED THEN
			UPDATE SET
					[EmailAddress]			= source.[EmailAddress]
					,[IsValid]		= source.[IsValid]
					,[PropBag] = source.[PropBag]
					,[CreatedOn] = source.[DTUTC_Created]
					,[LastModifiedOn] = source.[DTUTC_Modified]
		WHEN NOT MATCHED THEN
			INSERT( ID
					,[EmailAddress]			
					,[IsValid]		
					,[PropBag]
					,CreatedOn 
					,LastModifiedOn)
			VALUES( source.ID
					,source.[EmailAddress]
					,source.[IsValid]
					,source.[PropBag]
					,source.DTUTC_Created
					,source.DTUTC_Modified);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'EmailAddresses';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
SET IDENTITY_INSERT main.EmailAddresses OFF;
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_GiverRecipientAddressPhoneEmail]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_GiverRecipientAddressPhoneEmail]
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION
    EXEC [main].[usp_upsert_PersonPhones];
    EXEC [main].[usp_upsert_PersonAddresses];
    EXEC [main].[usp_upsert_PersonEmailAddresses];
    EXEC [main].[usp_upsert_PartnerGroupEndUsers];
    EXEC [main].[usp_upsert_PartnerEndUsers];
    EXEC [main].[usp_upsert_CareGivers];
    EXEC [main].[usp_upsert_CareRecipients];
    EXEC [main].[usp_upsert_GiverRecipients];

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_GiverRecipients]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_GiverRecipients]
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION


		MERGE [main].[GiversRecipients] AS target
		USING (
			SELECT cr.*
			FROM [Temp].GiversRecipients cr
			INNER JOIN main.CareGivers g on cr.CareGiverID = g.rid
			INNER JOIN main.CareRecipients crp on crp.rid = cr.CareRecipientID
		) AS source
		ON (target.CareGiverID = source.CareGiverID AND target.CareRecipientID = source.CareRecipientID)

		WHEN MATCHED THEN
			UPDATE SET
					[Relation]= source.[Relation],
					[Participation]= source.[Participation] ,
					[Notifications] = source.[Notifications],
					[IsActive] = source.[IsActive] ,
					[GiverRelation] = source.[GiverRelation],
					[IsAdmin]= source.[IsAdmin]
		WHEN NOT MATCHED THEN
			INSERT( [CareGiverID],
					[CareRecipientID],
					[Relation],
					[Participation] ,
					[Notifications] ,
					[IsActive] ,
					[GiverRelation],
					[IsAdmin])
			VALUES( source.[CareGiverID],
					source.[CareRecipientID],
					source.[Relation],
					source.[Participation] ,
					source.[Notifications] ,
					source.[IsActive] ,
					source.[GiverRelation],
					source.[IsAdmin]);


	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_InstructionListTables]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_InstructionListTables]
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION
    EXEC [main].[usp_upsert_Options];
    EXEC [main].[usp_upsert_Instructions];
    EXEC [main].[usp_upsert_SystemInstructions];
    EXEC [main].[usp_upsert_SystemOptionsTranslations];


	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_Instructions]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_Instructions]
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'Instructions')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[Instructions] AS target
		USING (
			SELECT * 
			FROM [Temp].Instructions
			WHERE DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.ID = source.ID AND target.[PromptID] = source.[PromptID] AND target.[ModeType] = source.[ModeType] AND target.[WorkflowMode] = source.[WorkflowMode])

		WHEN MATCHED THEN
			UPDATE SET
					[PropBag]		= source.[PropBag]
					,[CreatedOn]				= source.[DTUTC_Created]
					,[LastModifiedOn]			= source.[DTUTC_Modified]
		
		WHEN NOT MATCHED THEN
			INSERT([ID]
					,[PromptID]
					,[ModeType]
					,[PropBag]
					,[WorkflowMode]
					,[CreatedOn]
					,[LastModifiedOn])
			VALUES(source.[ID]
					,source.[PromptID]
					,source.[ModeType]
					,source.[PropBag]
					,source.[WorkflowMode]
					,source.[DTUTC_Created]
					,source.[DTUTC_Modified]);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'Instructions';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_Options]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_Options]
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'Options')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())
		SET IDENTITY_INSERT main.[Options] ON;
		MERGE [main].[Options] AS target
		USING (
			SELECT * 
			FROM [Temp].Options
			WHERE DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.ID = source.ID AND target.[LanguageID] = source.[LanguageID] )

		WHEN MATCHED THEN
			UPDATE SET
					[Options]		= source.[Options]
					,[PropBag] = source.[PropBag]
					,[AudioUrl] = source.[AudioUrl]
					,[OptionWeb] = source.[OptionWeb]
					,[OptionSms] = source.[OptionSms]
					,TextFilter = CONCAT(source.[Options],source.[LanguageID],source.[AudioUrl],source.[OptionWeb],source.[OptionSms])
					,[CreatedOn]				= source.[DTUTC_Created]
					,[LastModifiedOn]			= source.[DTUTC_Modified]
		
		WHEN NOT MATCHED THEN
			INSERT([ID]
					,[LanguageID]
					,[Options]
					,[PropBag]
					,[AudioUrl]
					,[OptionWeb]
					,[OptionSms]
					,[CreatedOn]
					,[LastModifiedOn]
					,TextFilter)
			VALUES(source.[ID]
					,source.[LanguageID]
					,source.[Options]
					,source.[PropBag]
					,source.[AudioUrl]
					,source.[OptionWeb]
					,source.[OptionSms]
					,source.[DTUTC_Created]
					,source.[DTUTC_Modified]
					,CONCAT(source.[Options],source.[LanguageID],source.[AudioUrl],source.[OptionWeb],source.[OptionSms]));

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'Options';
		SET IDENTITY_INSERT main.[Options] OFF;
	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_Partner]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_Partner]
AS
BEGIN
    SET NOCOUNT ON

	SET IDENTITY_INSERT main.Partner ON;
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'Partner')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[Partner] AS target
		USING (
			SELECT p.*,sc.[Schema]
			FROM [Temp].[SBU] p
			LEFT JOIN Temp.SchemaByPartner sc on p.rid = sc.partnerid
			WHERE DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.ID = source.RID)

		WHEN MATCHED THEN
			UPDATE SET
					[Name]						= source.[SBUName]
					,[DisplayInAdminPortal]		= source.[DisplayInAdminPortal]
					,[CreatedOn]				= source.[DTUTC_Created]
					,[LastModifiedOn]			= source.[DTUTC_Modified]
					,[DataSchema]				= ISNULL(source.[Schema],'EmpowerHealth')
		WHEN NOT MATCHED THEN
			INSERT([ID]
					,[Name]
					,[DisplayInAdminPortal]
					,[DataSchema]
					,[CreatedOn]
					,[LastModifiedOn])
			VALUES(source.[RID]
					,source.[SBUName]
					,source.[DisplayInAdminPortal]
					,ISNULL(source.[Schema],'EmpowerHealth')
					,source.[DTUTC_Created]
					,source.[DTUTC_Modified]);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'Partner';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
SET IDENTITY_INSERT main.Partner OFF;
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_PartnerAlertConfigurations]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_PartnerAlertConfigurations]
AS
BEGIN
    SET NOCOUNT ON;
    SET IDENTITY_INSERT [main].[PartnerAlertConfigurations] ON;
    BEGIN TRY
        BEGIN TRANSACTION
        MERGE [main].[PartnerAlertConfigurations] AS target
        USING (
            SELECT 
                ID,
                PartnerID,
                Title,
                Show,
                ActionableAlert,
                VitalTypeID,
                AlertOrder,
                ParentId,
                QuestionCategory,
                QuestionId,
                SectionCategory,
                Notes,
                ShowNotes,
                ClassName,
                SettingId
            FROM [Temp].[SBUPartnerAlertConfiguration]
        ) AS source (
            ID,
            PartnerID,
            Title,
            Show,
            ActionableAlert,
            VitalTypeID,
            AlertOrder,
            ParentId,
            QuestionCategory,
            QuestionId,
            SectionCategory,
            Notes,
            ShowNotes,
            ClassName,
            SettingId
        )
        ON target.ID = source.ID
        WHEN MATCHED THEN
        UPDATE SET
            target.PartnerID = source.PartnerID,
            target.Title = source.Title,
            target.Show = source.Show,
            target.ActionableAlert = source.ActionableAlert,
            target.VitalTypeID = source.VitalTypeID,
            target.AlertOrder = source.AlertOrder,
            target.ParentId = source.ParentId,
            target.QuestionCategory = source.QuestionCategory,
            target.QuestionId = source.QuestionId,
            target.SectionCategory = source.SectionCategory,
            target.Notes = source.Notes,
            target.ShowNotes = source.ShowNotes,
            target.ClassName = source.ClassName,
            target.SettingId = source.SettingId
        WHEN NOT MATCHED THEN
            INSERT (
                ID,
                PartnerID,
                Title,
                Show,
                ActionableAlert,
                VitalTypeID,
                AlertOrder,
                ParentId,
                QuestionCategory,
                QuestionId,
                SectionCategory,
                Notes,
                ShowNotes,
                ClassName,
                SettingId
            )
            VALUES (
                source.ID,
                source.PartnerID,
                source.Title,
                source.Show,
                source.ActionableAlert,
                source.VitalTypeID,
                source.AlertOrder,
                source.ParentId,
                source.QuestionCategory,
                source.QuestionId,
                source.SectionCategory,
                source.Notes,
                source.ShowNotes,
                source.ClassName,
                source.SettingId
            );
        COMMIT TRANSACTION
    END TRY
    BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
    END CATCH
    SET IDENTITY_INSERT [main].[PartnerAlertConfigurations] OFF;
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_PartnerAttribute]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_PartnerAttribute]
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'PartnerAttributes')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[PartnerAttributes] AS target
		USING (
			SELECT at.*,mat.* 
			FROM [Temp].[SBUAttributes] at
			INNER JOIN main.M_AttributeType mat ON at.TypeID = mat.ID
			INNER JOIN [main].[Partner] p on p.id = at.SBURID
			WHERE DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.PartnerID = source.SBURID AND target.AttributeTypeID = source.TypeID)

		WHEN MATCHED THEN
			UPDATE SET
					[AttributeValue]						= source.[AttributeValue]
					,[IsActive]		= source.[IsActive]
					,[CreatedBy]				= 'user'
					,[LastModifiedBy]			= 'user'
					,[CreatedOn]				= source.[DTUTC_Created]
					,[LastModifiedOn]			= source.[DTUTC_Modified]
		
		WHEN NOT MATCHED THEN
			INSERT( [PartnerID]
					,[AttributeTypeID]
					,[AttributeValue]
					,[IsActive]
					,[CreatedBy]
					,[LastModifiedBy]
					,[CreatedOn]
					,[LastModifiedOn])
			VALUES(  source.[SBURID]
					,source.[TypeID]
					,source.[AttributeValue]
					,source.[IsActive]
					,'user'
					,'user'
					,source.[DTUTC_Created]
					,source.[DTUTC_Modified]);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'PartnerAttributes';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_PartnerCareRecordings]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [main].[usp_upsert_PartnerCareRecordings]
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'PartnerCareRecordings')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[PartnerCareRecordings] AS target
		USING (
			SELECT at.*,mot.* 
			FROM [Temp].[SBUCareRecordings] at
			INNER JOIN main.M_OverrideType mot on at.IvrOverrideType = mot.ID
			INNER JOIN main.CareRecordings cr on cr.ID = at.CareRecordingId
			INNER JOIN main.Partner p on p.id = at.SBURID
			UNION ALL
			SELECT at.*,mot.* 
			FROM [Temp].[SBUCareRecordings] at
			LEFT JOIN main.M_OverrideType mot on at.IvrOverrideType = mot.ID
			WHERE IvrOverrideType IS NULL
			AND (CareRecordingId IN (SELECT DISTINCT ID FROM main.CareRecordings) OR CareRecordingID IS NULL)
		) AS source
		ON (target.CareRecordingId = source.CareRecordingId AND target.PartnerID = source.SBURID)

		WHEN MATCHED THEN
			UPDATE SET
					[PartnerID]						= source.[SBURID]
					,[IVROverrideTypeId]		= source.[IvrOverrideType]

		
		WHEN NOT MATCHED THEN
			INSERT( CareRecordingId
					,[PartnerID]
					,[IVROverrideTypeId])
			VALUES(  source.CareRecordingId
					,source.[SBURID]
					,source.[IvrOverrideType]);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'PartnerCareRecordings';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_PartnerConfigurationColumns]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [main].[usp_upsert_PartnerConfigurationColumns]
AS
BEGIN
    SET NOCOUNT ON
	SET IDENTITY_INSERT main.[PartnerConfigurationColumns] ON;
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'PartnerConfigurationColumns')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[PartnerConfigurationColumns] AS target
		USING (
			SELECT gat.* 
			FROM [Temp].SbuPartnerConfigurationColumns gat
			INNER JOIN main.Partner p on p.id = gat.PartnerID
			INNER JOIN main.Question q on q.id = gat.QuestionID
			UNION ALL
			SELECT gat.* 
			FROM [Temp].SbuPartnerConfigurationColumns gat
			INNER JOIN main.Partner p on p.id = gat.PartnerID
			WHERE QuestionID IS NULL
		) AS source
		ON (target.id = source.id)

		WHEN MATCHED THEN
			UPDATE SET
					PartnerID						= source.PartnerID
					,VitalTypeID		= source.VitalTypeID
					,Title = source.Title
					,ColumnModalAlertName = source.ColumnModalAlertName
					,ColumnActionableAlertName = source.ColumnActionableAlertName
					,ColumnAlertManagementName = source.ColumnAlertManagementName
					,HasFilter = source.HasFilter
					,Show = source.Show
					,PreviewPhase = source.PreviewPhase
					,Sortable = source.Sortable
					,AdminColumn = source.AdminColumn
					,ColumnOrder = source.ColumnOrder
					,Clickable = source.Clickable
					,ActionableAlert = source.ActionableAlert
					,QuestionId = source.QuestionId
					,ParentId = source.ParentId
					,DefaultColumn = source.DefaultColumn
					,ShowUnit = source.ShowUnit
					,UnitText = source.UnitText
					,CareFaxAlertName = source.CareFaxAlertName
					,SettingId = source.SettingId
		WHEN NOT MATCHED THEN
			INSERT( ID
					,PartnerID						
					,VitalTypeID		
					,Title 
					,ColumnModalAlertName 
					,ColumnActionableAlertName 
					,ColumnAlertManagementName 
					,HasFilter 
					,Show 
					,PreviewPhase 
					,Sortable 
					,AdminColumn 
					,ColumnOrder 
					,Clickable
					,ActionableAlert 
					,QuestionId 
					,ParentId 
					,DefaultColumn 
					,ShowUnit 
					,UnitText 
					,CareFaxAlertName 
					,SettingId )
			VALUES( source.ID
					,source.PartnerID
					,source.VitalTypeID
					,source.Title
					,source.ColumnModalAlertName
					,source.ColumnActionableAlertName
					,source.ColumnAlertManagementName
					,source.HasFilter
					,source.Show
					,source.PreviewPhase
					,source.Sortable
					,source.AdminColumn
					,source.ColumnOrder
					,source.Clickable
					,source.ActionableAlert
					,source.QuestionId
					,source.ParentId
					,source.DefaultColumn
					,source.ShowUnit
					,source.UnitText
					,source.CareFaxAlertName
					,source.SettingId);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'PartnerConfigurationColumns';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
SET IDENTITY_INSERT main.[PartnerConfigurationColumns] OFF;
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_PartnerEndUsers]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_PartnerEndUsers]
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION
		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'PartnerEndUsers')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[PartnerEndUsers] AS target
		USING (
			SELECT cr.*
			FROM Temp.SBUs_EndUsers cr
			INNER JOIN main.R r on cr.EndUserRID = r.RID
			INNER JOIN main.Partner p on p.id = cr.SBURID
			WHERE cr.DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.RID = source.[EndUserRID] AND target.PartnerID = source.SBURID)

		WHEN MATCHED THEN
			UPDATE SET
					[PartnerProgramID] = source.[SBUProgramID]
					,[PartnerInvitationCampaignID] = source.[SBUInvitationCampaignID]
					,PropBag = source.PropBag
		WHEN NOT MATCHED THEN
			INSERT(RID
					,[PartnerID]
					,[PartnerProgramID]
					,[PartnerInvitationCampaignID]
					,PropBag)
			VALUES( source.[EndUserRID]
					,source.[SBURID]
					,source.[SBUProgramID]
					,source.[SBUInvitationCampaignID]
					,source.PropBag);

			UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'PartnerEndUsers';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_PartnerGroup]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_PartnerGroup]
AS
BEGIN
    SET NOCOUNT ON

	SET IDENTITY_INSERT main.PartnerGroup ON;
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'PartnerGroup')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[PartnerGroup] AS target
		USING (
			SELECT pg.* 
			FROM [Temp].[SBUGroup] pg
			INNER JOIN main.Partner p on p.id = pg.sburid
			WHERE DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.ID = source.RID)

		WHEN MATCHED THEN
			UPDATE SET
					[PartnerID]						= source.SBURID
					,[Name]		= source.[Name]
					,[CreatedOn]				= source.[DTUTC_Created]
					,[LastModifiedOn]			= source.[DTUTC_Modified]
					,[PARENTRID] = source.[PARENTRID]
		WHEN NOT MATCHED THEN
			INSERT([ID]
					,[PartnerID]
					,[Name]
					,[PARENTRID]
					,[CreatedOn]
					,[LastModifiedOn])
			VALUES(source.[RID]
					,source.SBURID
					,source.[Name]
					,source.[PARENTRID]
					,source.[DTUTC_Created]
					,source.[DTUTC_Modified]);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'PartnerGroup';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
SET IDENTITY_INSERT main.PartnerGroup OFF;
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_PartnerGroupAttributes]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_PartnerGroupAttributes]
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'PartnerGroupAttributes')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[PartnerGroupAttributes] AS target
		USING (
			SELECT gat.* 
			FROM [Temp].[SBUGroupAttributes] gat
			INNER JOIN main.M_AttributeType mat on gat.TypeID = mat.ID
			INNER JOIN main.PartnerGroup pg on pg.id = gat.SBUGroupRID
			WHERE DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.PartnerGroupID = source.SBUGroupRID AND target.AttributeTypeID = source.TypeID)

		WHEN MATCHED THEN
			UPDATE SET
					PartnerGroupID						= source.[SBUGRoupRID]
					,[AttributeTypeID]		= source.[TypeID]
					,[AttributeValue] = source.AttributeValue
					,IsActive = source.IsActive
		WHEN NOT MATCHED THEN
			INSERT( PartnerGroupID
					,[AttributeTypeID]
					,[AttributeValue]
					,[IsActive])
			VALUES(  source.[SBUGRoupRID]
					,source.[TypeID]
					,source.[AttributeValue]
					,source.[IsActive]);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'PartnerGroupAttributes';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_PartnerGroupEndUsers]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_PartnerGroupEndUsers]
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION
		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'PartnerGroupEndUsers')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].PartnerGroupEndUsers AS target
		USING (
			SELECT cr.*
			FROM Temp.SBUGroup_EndUsers cr
			INNER JOIN main.R r on cr.EndUserRID = r.RID
			INNER JOIN main.PartnerGroup p on p.id = cr.SBUGroupRID
			WHERE cr.DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.RID = source.[EndUserRID] AND target.PartnerGroupID = source.[SBUGroupRID])

		WHEN MATCHED THEN
			UPDATE SET
					[PartnerID] = source.SBURID
					,PropBag = source.PropBag
		WHEN NOT MATCHED THEN
			INSERT(RID
					,[PartnerID]
					,[PartnerGroupID]
					,PropBag)
			VALUES( source.[EndUserRID]
					,source.[SBURID]
					,source.[SBUGroupRID]
					,source.PropBag);

			UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'PartnerGroupEndUsers';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_PersonAddresses]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [main].[usp_upsert_PersonAddresses]
AS
BEGIN
    SET NOCOUNT ON
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'PersonAddresses')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[PersonAddresses] AS target
		USING (
			SELECT gat.* 
			FROM [Temp].R_Addresses gat
			INNER JOIN main.R r on gat.rid = r.rid
			INNER JOIN main.Addresses a on gat.[AddressID] = a.ID
			INNER JOIN main.M_AddressUsage aui on gat.[AddressUsageID] = aui.ID
			WHERE DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.RID = source.RID AND target.[AddressID] = source.[AddressID] AND target.[AddressUsageID] = target.[AddressUsageID])

		WHEN MATCHED THEN
			UPDATE SET
					[IsPrimary] = source.[IsPrimary]
					,[PropBag] = source.[PropBag]
					,[CreatedOn] = source.[DTUTC_Created]
					,[LastModifiedOn] = source.[DTUTC_Modified]
		WHEN NOT MATCHED THEN
			INSERT( RID
					,[AddressID]			
					,[AddressUsageID]		
					,[IsPrimary]
					,[PropBag]
					,CreatedOn 
					,LastModifiedOn)
			VALUES( source.RID
					,source.[AddressID]
					,source.[AddressUsageID]
					,source.[IsPrimary]
					,source.[PropBag]
					,source.DTUTC_Created
					,source.DTUTC_Modified);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'PersonAddresses';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_PersonEmailAddresses]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [main].[usp_upsert_PersonEmailAddresses]
AS
BEGIN
    SET NOCOUNT ON
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'PersonEmailAddresses')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[PersonEmailAddresses] AS target
		USING (
			SELECT gat.* 
			FROM [Temp].R_EmailAddresses gat
			INNER JOIN main.EmailAddresses ea on gat.EmailAddressID = ea.ID
			INNER JOIN main.M_AddressUsage mau on gat.[EmailAddressUsageID] = mau.ID
			WHERE DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.RID = source.RID AND target.[EmailAddressID] = source.[EmailAddressID] AND target.[EmailAddressUsageID] = source.[EmailAddressUsageID])

		WHEN MATCHED THEN
			UPDATE SET [IsPrimary] = source.[IsPrimary]
					,[PropBag] = source.[PropBag]
					,[CreatedOn] = source.[DTUTC_Created]
					,[LastModifiedOn] = source.[DTUTC_Modified]
		WHEN NOT MATCHED THEN
			INSERT( RID
					,[EmailAddressID]			
					,[EmailAddressUsageID]		
					,[IsPrimary]
					,[PropBag]
					,CreatedOn 
					,LastModifiedOn)
			VALUES( source.RID
					,source.[EmailAddressID]
					,source.[EmailAddressUsageID]
					,source.[IsPrimary]
					,source.[PropBag]
					,source.DTUTC_Created
					,source.DTUTC_Modified);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'PersonEmailAddresses';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_PersonPhones]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [main].[usp_upsert_PersonPhones]
AS
BEGIN
    SET NOCOUNT ON
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'PersonPhones')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[PersonPhones] AS target
		USING (
			SELECT gat.* 
			FROM [Temp].R_Phones gat
			INNER JOIN main.R r on gat.RID = R.RID
			INNER JOIN main.Phones p on gat.[PhoneID] = p.ID
			INNER JOIN main.M_PhoneUsage pu on gat.[PhoneUsageID] = pu.ID
			WHERE DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.RID = source.RID AND target.[PhoneID] = source.[PhoneID] AND target.[PhoneUsageID] = source.[PhoneUsageID])

		WHEN MATCHED THEN
			UPDATE SET
					[IsPrimary] = source.[IsPrimary]
					,[PropBag] = source.[PropBag]
					,[CreatedOn] = source.[DTUTC_Created]
					,[LastModifiedOn] = source.[DTUTC_Modified]
		WHEN NOT MATCHED THEN
			INSERT( RID
					,[PhoneID]			
					,[PhoneUsageID]		
					,[IsPrimary]
					,[PropBag]
					,CreatedOn 
					,LastModifiedOn)
			VALUES( source.RID
					,source.[PhoneID]
					,source.[PhoneUsageID]
					,source.[IsPrimary]
					,source.[PropBag]
					,source.DTUTC_Created
					,source.DTUTC_Modified);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'PersonPhones';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_Phones]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [main].[usp_upsert_Phones]
AS
BEGIN
    SET NOCOUNT ON
	SET IDENTITY_INSERT main.[Phones] ON;
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'Phones')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[Phones] AS target
		USING (
			SELECT gat.* 
			FROM [Temp].Phones gat
			WHERE DTUTCModified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTCModified <= @newwatermarkvalue
		) AS source
		ON (target.ID = source.ID)

		WHEN MATCHED THEN
			UPDATE SET
					[PhoneCountryCode]			= source.[PhoneCountryCode]
					,[PhoneNumber]		= source.[PhoneNumber]
					,[PhoneExtension] = source.[PhoneExtension]
					,[IsValid] = source.[IsValid]
					,[PropBag] = source.[PropBag]
					,[CarrierTypeID] = source.[CarrierType]
					,[CreatedOn] = source.[DTUTC_Created]
					,[LastModifiedOn] = source.[DTUTCModified]
		WHEN NOT MATCHED THEN
			INSERT( ID
					,[PhoneCountryCode]			
					,[PhoneNumber]		
					,[PhoneExtension]
					,[IsValid]
					,[CarrierTypeID]
					,[PropBag]
					,CreatedOn 
					,LastModifiedOn)
			VALUES( source.ID
					,source.[PhoneCountryCode]
					,source.[PhoneNumber]
					,source.[PhoneExtension]
					,source.[IsValid]
					,source.[CarrierType]
					,source.[PropBag]
					,source.DTUTC_Created
					,source.DTUTCModified);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'Phones';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
SET IDENTITY_INSERT main.[Phones] OFF;
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_Prompts]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [main].[usp_upsert_Prompts]
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'Prompts')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())
		-- SET IDENTITY_INSERT main.[Prompts] ON;
		MERGE [main].[Prompts] AS target
		USING (
			SELECT gat.* 
			FROM [Temp].Prompts gat
			WHERE DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.ID = source.ID AND target.LanguageID = source.LanguageID)

		WHEN MATCHED THEN
			UPDATE SET
					PromptContent						= source.PromptContent
					,PropBag		= source.PropBag
					,PromptUrl = source.PromptUrl
					,PromptContentWeb = source.PromptContentWeb
					,AudioDescription = source.AudioDescription
					,DefaultPrompt = source.DefaultPrompt
					,PromptContentSms = source.PromptContentSms
					,PromptContentForReport = source.PromptContentForReport
					,PromptContentHash = HASHBYTES('SHA2_256', LEFT(source.PromptContent, 40))
					,CreatedOn = source.DTUTC_Created
					,LastModifiedOn = source.DTUTC_Modified

		WHEN NOT MATCHED THEN
			INSERT( ID
					,LanguageID
					,PromptContent
					,PropBag
					,PromptUrl
					,PromptContentWeb
					,AudioDescription 
					,DefaultPrompt 
					,PromptContentSms
					,PromptContentForReport
					,PromptContentHash
					,CreatedOn
					,LastModifiedOn)
			VALUES( source.ID
					,source.LanguageID
					,source.PromptContent
					,source.PropBag
					,source.PromptUrl
					,source.PromptContentWeb
					,source.AudioDescription
					,source.DefaultPrompt
					,source.PromptContentSms
					,source.PromptContentForReport
					,HASHBYTES('SHA2_256', LEFT(source.PromptContent, 40))
					,source.DTUTC_Created
					,source.DTUTC_Modified);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'Prompts';
		-- SET IDENTITY_INSERT main.[Prompts] OFF;
	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_Question]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_Question]
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'Question')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())
		SET IDENTITY_INSERT main.Question ON;
		MERGE [main].[Question] AS target
		USING (
			SELECT gat.* 
			FROM [Temp].CustomQuestion gat
			JOIN main.M_QuestionType qt on gat.QuestionType = qt.id
		) AS source
		ON (target.ID = source.ID)

		WHEN MATCHED THEN
			UPDATE SET
					QuestionTypeID						= source.QuestionType
					,VitalTypeID		= source.VitalTypeid
					,PromptID = source.[Text]
					,[Sample] = source.[Sample]
					,IsPublic = source.IsPublic
					,QuestionCategory = source.QuestionCategory
					,Grammar = source.Grammar
					,DisableReaction = source.DisableReaction
					,DisableInstruction = source.DisableInstruction
					,QuestionHangUp = source.QuestionHangUp
					,InstructionMode = source.InstructionMode
					,MinDigits = source.MinDigits
					,MaxDigits = source.MaxDigits
					,Wait = source.Wait
					,[LanguageId] = source.LanguageId
					,Frequency = source.Frequency
					,ReadNumberAs = source.ReadNumberAs
					,QuestionChannel = source.QuestionChannel
					,Decimals = source.Decimals
					,CheckOut = source.CheckOut
					,Whisper = source.Whisper
					,RepeatAfterAttemps = source.RepeatAfterAttemps
					,BargeIn = source.BargeIn
		WHEN NOT MATCHED THEN
			INSERT( ID
					,QuestionTypeID
					,VitalTypeID
					,PromptID
					,[Sample]
					,IsPublic
					,QuestionCategory 
					,Grammar 
					,DisableReaction
					,DisableInstruction
					,QuestionHangUp
					,InstructionMode
					,MinDigits
					,MaxDigits 
					,Wait 
					,[LanguageId]
					,Frequency 
					,ReadNumberAs 
					,QuestionChannel
					,Decimals 
					,CheckOut 
					,Whisper 
					,RepeatAfterAttemps 
					,BargeIn)
			VALUES( source.id
					,source.QuestionType
					,source.VitalTypeid
					,source.[Text]
					,source.[Sample]
					,source.IsPublic
					,source.QuestionCategory
					,source.Grammar
					,source.DisableReaction
					,source.DisableInstruction
					,source.QuestionHangUp
					,source.InstructionMode
					,source.MinDigits
					,source.MaxDigits
					,source.Wait
					,source.LanguageId
					,source.Frequency
					,source.ReadNumberAs
					,source.QuestionChannel
					,source.Decimals
					,source.CheckOut
					,source.Whisper
					,source.RepeatAfterAttemps
					,source.BargeIn);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'Question';

	COMMIT TRANSACTION
	SET IDENTITY_INSERT main.Question OFF;
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_QuestionAnswerCareRecordings]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [main].[usp_upsert_QuestionAnswerCareRecordings]
AS
BEGIN
    SET NOCOUNT ON
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'QuestionAnswerCareRecordings')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[QuestionAnswerCareRecordings] AS target
		USING (
			SELECT gat.* 
			FROM [Temp].[CustomQuestionAnswerRecordings] gat
			INNER JOIN main.[QuestionAnswers] q on gat.[AnswerId] = q.ID
			INNER JOIN main.[CareRecordings] cr on cr.ID = gat.[CareRecordingId]
		) AS source
		ON (target.[QuestionAnswerID] = source.[AnswerId] AND target.[CareRecordingID] = source.[CareRecordingID])

		WHEN MATCHED THEN
			UPDATE SET
					[QuestionRecordingTypeID]						= source.[QuestionRecordingType]
		WHEN NOT MATCHED THEN
			INSERT(  [QuestionAnswerID]	
					,[CareRecordingID]		
					,[QuestionRecordingTypeID])
			VALUES(source.[AnswerId]
					,source.[CareRecordingID]	
					,source.[QuestionRecordingType]	
					);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'QuestionAnswerCareRecordings';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_QuestionAnswers]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [main].[usp_upsert_QuestionAnswers]
AS
BEGIN
    SET NOCOUNT ON
	SET IDENTITY_INSERT main.[QuestionAnswers] ON;
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'QuestionAnswers')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[QuestionAnswers] AS target
		USING (
				SELECT CTE.*
				FROM 
				(SELECT gat.*
				FROM [Temp].CustomQuestionAnswer gat
				INNER JOIN main.Question q on q.id = gat.CustomQuestion
				) CTE
				WHERE cte.NExt IS NULL OR CTE.Next IN (SELECT DISTINCT id FROM main.Question)
			
		) AS source
		ON (target.id = source.id)

		WHEN MATCHED THEN
			UPDATE SET
					ReadingLevel						= source.ReadingLevel
					,TriggerAlert		= source.TriggerAlert
					,QuestionID = source.CustomQuestion
					,NextID = source.[Next]
					,[OptionID] = source.[Text]
					,[From] = source.[From]
					,[To] = source.[To]
					,[Action] = source.[Action]
					,DisableAnswerReaction = source.DisableAnswerReaction
					,[Value] = source.[Value]
					,[Sample] = source.[Sample]
					,TriggerFaxAlert = source.TriggerFaxAlert
		WHEN NOT MATCHED THEN
			INSERT( ID
					,ReadingLevel	
					,TriggerAlert		
					,QuestionID 
					,NextID 
					,[OptionID] 
					,[From] 
					,[To] 
					,[Action] 
					,DisableAnswerReaction 
					,[Value] 
					,[Sample] 
					,TriggerFaxAlert
					,IsPrimarySubQuestion)
			VALUES(source.ID
					,source.ReadingLevel	
					,source.TriggerAlert		
					,source.CustomQuestion 
					,source.[Next] 
					,source.[Text] 
					,source.[From] 
					,source.[To] 
					,source.[Action] 
					,source.DisableAnswerReaction 
					,source.[Value] 
					,source.[Sample] 
					,source.TriggerFaxAlert
					,NULL 
					);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'QuestionAnswers';
		SET IDENTITY_INSERT main.[QuestionAnswers] OFF;
	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH

END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_QuestionCareRecordings]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [main].[usp_upsert_QuestionCareRecordings]
AS
BEGIN
    SET NOCOUNT ON
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'QuestionCareRecordings')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[QuestionCareRecordings] AS target
		USING (
			SELECT gat.* 
			FROM [Temp].CustomQuestionRecordings gat
			INNER JOIN main.Question q on gat.CustomQuestionID = q.ID
			INNER JOIN main.[CareRecordings] cr on cr.ID = gat.[CareRecordingId]
			UNION ALL
			SELECT gat.* 
			FROM [Temp].CustomQuestionRecordings gat
			INNER JOIN main.Question q on gat.CustomQuestionID = q.ID
			WHERE gat.[CareRecordingId] IS NULL
		) AS source
		ON (target.QuestionID = source.CustomQuestionID AND target.[CareRecordingID] = source.[CareRecordingID])

		WHEN MATCHED THEN
			UPDATE SET
					[QuestionRecordingTypeID]						= source.[QuestionRecordingType]
		WHEN NOT MATCHED THEN
			INSERT(  [QuestionID]	
					,[CareRecordingID]		
					,[QuestionRecordingTypeID])
			VALUES(source.CustomQuestionID
					,source.[CareRecordingID]	
					,source.[QuestionRecordingType]	
					);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'QuestionCareRecordings';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_QuestionCareRules]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_QuestionCareRules]
AS
BEGIN
    SET NOCOUNT ON
    
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'QuestionCareRules')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].QuestionCareRules AS target
		USING (
			SELECT cf.*
			FROM [Temp].CustomQuestionCareRules cf
			INNER JOIN main.Question q on cf.[CustomQuestionId] = q.id
			INNER JOIN main.CareRules cr on cr.id = cf.CareRuleID
		) AS source
		ON (target.QuestionID = source.[CustomQuestionId] AND target.CareRuleID = source.CareRuleID)

		WHEN NOT MATCHED THEN	
          INSERT ( QuestionID
            ,CareRuleID)
		   VALUES(source.[CustomQuestionId]
           ,source.CareRuleID);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'QuestionCareRules';
        
	COMMIT TRANSACTION
END TRY
    
BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_QuestionChildTables]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_QuestionChildTables]
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION
    EXEC [main].[usp_upsert_CarePlanScheduling];
    EXEC [main].[usp_upsert_CarePlanAttributes];
    EXEC [main].[usp_upsert_CarePlanQuestions];
    EXEC [main].[usp_upsert_CarePlanRecipients];
    EXEC [main].[usp_upsert_QuestionCareRecordings];
    EXEC [main].[usp_upsert_QuestionAnswerCareRecordings];
    EXEC [main].[usp_upsert_CareRules];
    EXEC [main].[usp_upsert_QuestionCareRules];
    EXEC [main].[usp_upsert_CarePlanCareRecordings];
    EXEC [main].[usp_upsert_CarePlanRecipientsSchedule];
    EXEC [main].[usp_upsert_AutomatedCallsSchedule];

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_R]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [main].[usp_upsert_R]
AS
BEGIN
    SET NOCOUNT ON
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'R')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[R] AS target
		USING (
			SELECT gat.* 
			FROM [Temp].R gat
			WHERE DTUTC_Modified > COALESCE(@oldwatermarkvalue, '1957-01-01') AND DTUTC_Modified <= @newwatermarkvalue
		) AS source
		ON (target.RID = source.RID)

		WHEN MATCHED THEN
			UPDATE SET
					[RTypeID]			= source.[RTypeID]
					,[IsActive]		= source.[IsActive]
					,[IsTesting] = source.[IsTesting]
					,[PropBag] = source.[PropBag]
					,CreatedOn = source.DTUTC_Created
					,LastModifiedOn = source.DTUTC_Modified
		WHEN NOT MATCHED THEN
			INSERT( RID
					,[RTypeID]			
					,[IsActive]		
					,[IsTesting]
					,[PropBag]
					,CreatedOn 
					,LastModifiedOn)
			VALUES( source.RID
					,source.[RTypeID]
					,source.[IsActive]
					,source.[IsTesting]
					,source.[PropBag]
					,source.DTUTC_Created
					,source.DTUTC_Modified);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'R';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_SystemInstructions]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_SystemInstructions]
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'SystemInstructions')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[SystemInstructions] AS target
		USING (
			SELECT * 
			FROM [Temp].SystemInstructions
		) AS source
		ON (target.[instructionId] = source.[instructionId])
		
		WHEN NOT MATCHED THEN
			INSERT([instructionId])
			VALUES(source.[instructionId]);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'SystemInstructions';

	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_SystemOptionsTranslations]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_SystemOptionsTranslations]
AS
BEGIN
    SET NOCOUNT ON
	SET IDENTITY_INSERT main.[SystemOptionsTranslations] ON;
BEGIN TRY
	BEGIN TRANSACTION

		DECLARE @oldwatermarkvalue datetime = (SELECT LastRunTime
												FROM [main].[watermarktable]
												WHERE TableName = 'SystemOptionsTranslations')

		DECLARE @newwatermarkvalue datetime = (SELECT GETDATE())

		MERGE [main].[SystemOptionsTranslations] AS target
		USING (
			SELECT * 
			FROM [Temp].SystemOptionsTranslations
		) AS source
		ON (target.ID = source.ID)

		WHEN MATCHED THEN
			UPDATE SET
					[LanguageCode]						= source.[LanguageCode]
					,[TagName]		= source.[TagName]
					,[Value] = source.[Value]
		
		WHEN NOT MATCHED THEN
			INSERT([ID]
					,[LanguageCode]
					,[TagName]
					,[Value])
			VALUES(source.[ID]
					,source.[LanguageCode]
					,source.[TagName]
					,source.[Value]);

		UPDATE [main].[watermarktable]
		SET LastRunTime = @newwatermarkvalue
		WHERE TableName = 'SystemOptionsTranslations';
		SET IDENTITY_INSERT main.[SystemOptionsTranslations] OFF;
	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH
END
GO
/****** Object:  StoredProcedure [main].[usp_upsert_UpdateLastRunTime_SyncToLegacy]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [main].[usp_upsert_UpdateLastRunTime_SyncToLegacy] @newwatermarkvalue DATETIME
AS
BEGIN
    SET NOCOUNT ON

BEGIN TRY
	BEGIN TRANSACTION

		UPDATE main.WatermarkTable
        SET LastRunTime = @newwatermarkvalue
        WHERE TableName = 'SynchronizeToLegacy'
	COMMIT TRANSACTION
END TRY

BEGIN CATCH
    IF @@TRANCOUNT > 0
        ROLLBACK TRANSACTION --RollBack in case of Error

    DECLARE @ErrorMessage NVARCHAR(4000);  
    DECLARE @ErrorSeverity INT;  
    DECLARE @ErrorState INT;  

    SELECT   
       @ErrorMessage = ERROR_MESSAGE(),  
       @ErrorSeverity = ERROR_SEVERITY(),  
       @ErrorState = ERROR_STATE();  

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
END CATCH

END
GO
/****** Object:  StoredProcedure [MESSAGING].[usp_StoreOutgoingMessage_SMS]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [MESSAGING].[usp_StoreOutgoingMessage_SMS]
    @MessageInstanceGuid UNIQUEIDENTIFIER
   ,@MessageDeliveryRequestGuid UNIQUEIDENTIFIER
   ,@ProviderName VARCHAR(50)
   ,@FromPhoneNumber NVARCHAR(100)
   ,@ToPhoneNumber NVARCHAR(100)
   ,@ToPhoneNumbers NVARCHAR(MAX)
   ,@FormattedMessageBody NVARCHAR(MAX)
   ,@MessageArgs XML = NULL
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [MESSAGING].[OutgoingMessages_SMS]
    (
        [MessageInstanceGuid]
        ,[MessageDeliveryRequestGuid]
        ,[ProviderName]
        ,[FromPhoneNumber]
        ,[ToPhoneNumber]
        ,[ToPhoneNumbers]
        ,[FormattedMessageBody]
        ,[MessageArgs]
        ,[DeliveryStatus]
        ,[DeliveryStatusStr]
        ,[DeliveryMessage]
        ,[CreatedOn]
        ,[LastModifiedOn]
    )
    VALUES
    (
        @MessageInstanceGuid --<MessageInstanceGuid, uniqueidentifier,>
        ,@MessageDeliveryRequestGuid --
        ,@ProviderName
        ,@FromPhoneNumber --<FromPhoneNumber, nvarchar(100),>
        ,@ToPhoneNumber --<ToPhoneNumber, nvarchar(100),>
        ,@ToPhoneNumbers --<ToPhoneNumbers, nvarchar(max),>
        ,@FormattedMessageBody --<FormattedMessageBody, nvarchar(max),>
        ,@MessageArgs --<MessageArgs, xml,>
        ,0 --<DeliveryStatus, int,>
	    ,'Undefined'
        ,NULL --<DeliveryMessage, nvarchar(4000),>
        ,GETUTCDATE() --<DTUTC_Created, datetime,>
        ,GETUTCDATE() --<DTUTC_Modified, datetime,>
	 )

END
GO
/****** Object:  StoredProcedure [MESSAGING].[usp_StoreOutgoingMessage_SMS_Status]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [MESSAGING].[usp_StoreOutgoingMessage_SMS_Status]
    @MessageInstanceGuid UNIQUEIDENTIFIER,
    @DeliveryStatus INT,
    @DeliveryStatusStr VARCHAR(50),
    @To NVARCHAR(100),
    @RecipientId BIGINT,
    @WorkFlowId BIGINT,
    @WorkFlowName NVARCHAR(300),
    @VitalTypeId INT,
    @ExceptionMessage NVARCHAR(MAX) = NULL
AS 
BEGIN
    SET NOCOUNT ON;

    DECLARE @PartnerID BIGINT,
            @PartnerGroupID BIGINT;

    -- Get PartnerID and PartnerGroupID based on RecipientId
    SELECT TOP 1 
        @PartnerID = peu.[PartnerID],
        @PartnerGroupID = pge.[PartnerGroupID]
    FROM [main].[PartnerEndUsers] peu
    LEFT JOIN [main].[PartnerGroupEndUsers] pge 
        ON pge.RID = peu.RID
    WHERE peu.RID = @RecipientId;

    -- Check if the record already exists
    IF EXISTS (SELECT TOP 1 1 FROM [MESSAGING].[OutgoingMessages_SMS_Status] WHERE [MessageInstanceGuid] = @MessageInstanceGuid)
    BEGIN
        -- Update existing record
        UPDATE [MESSAGING].[OutgoingMessages_SMS_Status]
        SET 
            [DeliveryStatus] = @DeliveryStatus,
            [DeliveryStatusStr] = @DeliveryStatusStr,
            [To] = @To,
            [RecipientId] = @RecipientId,
            [PartnerID] = @PartnerID,
            [PartnerGroupID] = @PartnerGroupID,
            [WorkFlowID] = @WorkFlowId,
            [WorkFlowName] = @WorkFlowName,
            [VitalTypeID] = @VitalTypeId,
            [LastModifiedOn] = GETUTCDATE(),
            [ExceptionMessage] = @ExceptionMessage
        WHERE [MessageInstanceGuid] = @MessageInstanceGuid;
    END
    ELSE
    BEGIN
        -- Insert new record
        INSERT INTO [MESSAGING].[OutgoingMessages_SMS_Status]
        (
            [MessageInstanceGuid],
            [DeliveryStatus],
            [DeliveryStatusStr],
            [To],
            [RecipientId],
            [PartnerID],
            [PartnerGroupID],
            [WorkFlowID],
            [WorkFlowName],
            [VitalTypeID],
            [CreatedOn],
            [LastModifiedOn],
            [ExceptionMessage]
        )
        VALUES
        (
            @MessageInstanceGuid,
            @DeliveryStatus,
            @DeliveryStatusStr,
            @To,
            @RecipientId,
            @PartnerID,
            @PartnerGroupID,
            @WorkFlowId,
            @WorkFlowName,
            @VitalTypeId,
            GETUTCDATE(),
            GETUTCDATE(),
            @ExceptionMessage
        );
    END
END;
GO
/****** Object:  StoredProcedure [TempStageProd].[pipeline_query_collect_data_changes_2_stage_2_prod]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [TempStageProd].[pipeline_query_collect_data_changes_2_stage_2_prod]
	@processId varchar(36),
	@partnerId bigint
As
BEGIN
	--declare	@processId varchar(36) =convert(varchar(36),newid())
	--declare @partnerId bigint = 1209

	delete [main].[DataSync];

	IF OBJECT_ID('tempdb..#tbPartnerGroupId') IS NOT NULL
		DROP TABLE #tbPartnerGroupId

	IF OBJECT_ID('tempdb..#tbCarePlanCarePathWayQuestion') IS NOT NULL
		DROP TABLE #tbCarePlanCarePathWayQuestion

	IF OBJECT_ID('tempdb..#tbCareRecording') IS NOT NULL
		DROP TABLE #tbCareRecording

	IF OBJECT_ID('tempdb..#tbPrompt') IS NOT NULL
		DROP TABLE #tbPrompt

	IF OBJECT_ID('tempdb..#tbQuestion') IS NOT NULL
		DROP TABLE #tbQuestion

	IF OBJECT_ID('tempdb..#Instructions') IS NOT NULL
		DROP TABLE #Instructions


	IF OBJECT_ID('tempdb..#CarePlan') IS NOT NULL
		DROP TABLE #CarePlan
	
	create table #tbCareRecording (ID bigint)

	create table #tbPrompt(ID bigint)

	create table #tbQuestion(ID bigint)

	Create table #Instructions(ID bigint)
	---------------------PrepareData
	;WITH questionAnswers (QuestionID, NextID) as 
		(select distinct QuestionID, NextID from main.QuestionAnswers where NextID is not null),
	questionIDs (QuestionId,ParentId, LanguageId,CarePlanID,CarePathWayID)
	AS 
	(
		(SELECT cq.ID as QuestionId, cq.ID as ParentId,cq.LanguageId,sbucf.ID as CarePlanID, null as CarePathWayID
			FROM MAIN.Question cq
			JOIN MAIN.CarePlanQuestions FLQ ON CQ.ID = FLQ.QuestionID
			JOIN MAIN.CarePlan sbucf ON FLQ.CarePlanID = sbucf.ID
			AND sbucf.PartnerID = @PartnerId

			UNION  

			SELECT cq.ID as QuestionId, cq.ID as ParentId,cq.LanguageId,null as CarePlanID, sbuqb.ID as CarePathWayID
			FROM MAIN.Question cq
			JOIN MAIN.CarePathwayQuestions FLQ ON CQ.ID = FLQ.QuestionID
			JOIN MAIN.CarePathway sbuqb ON FLQ.CarePathwayID = sbuqb.ID
			WHERE sbuqb.PartnerID = @PartnerId  
		)

		UNION ALL

		SELECT chil.id as QuestionId,cqa.QuestionID as ParentId, chil.LanguageId,sq.CarePlanID,sq.CarePathWayID
		FROM questionIDs AS sq
		JOIN questionAnswers AS cqa on cqa.QuestionID = sq.QuestionId
		JOIN main.Question chil on cqa.NextID = chil.ID
		)
		SELECT 
			ids.QuestionId, 
			ids.ParentId,
			cq.VitalTypeId,
			cq.PromptID,
			cq.Sample as SampleId,
			cq.LanguageId,
			[cf].[Id] AS CarePlanID, 
			qb.Id AS CarePathwayId
		into #tbCarePlanCarePathWayQuestion
		FROM questionIDs ids
		JOIN MAIN.Question cq on ids.QuestionID = cq.id and ids.LanguageId = cq.LanguageId
		LEFT JOIN main.Prompts p on p.Id=cq.PromptID and p.LanguageId=cq.LanguageId
		LEFT JOIN main.CarePathway qb ON ids.CarePathWayID = qb.Id
		LEFT JOIN main.CarePlan cf ON ids.CarePlanID = cf.Id

	---------------------


	--BEGIN
	
	--1. Partner and Related : 
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'Partner', 'ID', a.ID 
	from main.[Partner] a where a.ID = @partnerId

	--PartnerAlertConfigurations
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerAlertConfigurations', 'ID', a.ID 
	from main.[PartnerAlertConfigurations] a where a.PartnerID = @partnerId

	--PartnerAttributes
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerAttributes', 'ID', a.ID 
	from main.[PartnerAttributes] a where a.PartnerID = @partnerId

	--PartnerCareRecordings
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerCareRecordings', 'ID', a.ID 
	from main.[PartnerCareRecordings] a where a.PartnerID = @partnerId

	--[PartnerClientNameGroup]
	
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerClientNameGroup', 'ID', a.ID 
	from main.[PartnerClientNameGroup] a where a.SbuRid = @partnerId
	--PartnerConfigurationColumns
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerConfigurationColumns', 'ID', ID 
	from main.[PartnerConfigurationColumns] where PartnerID = @partnerId

	--------------------------------------------------------------------------------------------------
	--7. PartnerGroup
	select ID  into #tbPartnerGroupId from main.PartnerGroup where PartnerID = @partnerId

	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerGroup', 'ID', ID from #tbPartnerGroupId



	--PartnerGroupAttributes
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerGroupAttributes', 'ID', a.ID 
	from main.[PartnerGroupAttributes] a
	join #tbPartnerGroupId b on a.PartnerGroupID = b.ID


	--[PartnerGroupState]
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerGroupState', 'Id', a.Id 
	from main.PartnerGroupState a where a.SBURID = @partnerId

	--[PartnerState]
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PartnerState', 'Id', a.Id 
	from main.PartnerState a where a.SBURID = @partnerId

	--PowerBIReport
	insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
	select @processId, 'PowerBIReport', 'Id', a.Id 
	from main.PowerBIReport a where a.PartnerId = @partnerId

	----CarePlan
		SELECT ID
		into #CarePlan
		FROM main.CarePlan where PartnerID = @PartnerID

		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		SELECT distinct @processId, 'CarePlan', 'ID', ID FROM #CarePlan
	
		--CarePlanScheduling
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		SELECT distinct @processId, 'CarePlanScheduling', 'CarePlanID', a.ID FROM #CarePlan a
		join main.CarePlanScheduling b on a.ID = b.CarePlanID
	
		--CarePlanAttributes
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		SELECT distinct @processId, 'CarePlanAttributes', 'ID', b.ID FROM #CarePlan a
		join main.CarePlanAttributes b on a.ID = b.CarePlanID
	
		--CarePlanQuestions
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		SELECT distinct @processId, 'CarePlanQuestions', 'CarePlanID', a.ID FROM #CarePlan a
		join main.CarePlanQuestions b on a.ID = b.CarePlanID
	
		--CarePlanCareRecordings
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		SELECT distinct @processId, 'CarePlanCareRecordings', 'CarePlanID', a.ID FROM #CarePlan a
		join main.CarePlanCareRecordings b on a.ID = b.CarePlanID
		--CarePlanCareRecordings From CarePlanAttributes : 69
		insert into #tbCareRecording
		SELECT js.CareRecoringID
		FROM #CarePlan a
		join main.CarePlanAttributes b on a.ID = b.CarePlanID
		 CROSS APPLY OPENJSON (b.attributeValue) WITH
		(
			CareRecoringID INT '$.CareRecordingId'
		) js
		where b.AttributeTypeID = 69 

		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		SELECT distinct @processId, 'Prompts', 'ID', js.[value]
		FROM #CarePlan a
		join main.CarePlanAttributes b on a.ID = b.CarePlanID
		  CROSS APPLY OPENJSON (b.attributeValue) js
		where b.AttributeTypeID = 28 

		--CarePathWay
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		SELECT distinct @processId, 'CarePathWay', 'ID', ID 
		FROM main.CarePathway where PartnerID = @PartnerID
	
		--CarePathwayQuestions
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		SELECT distinct @processId, 'CarePathwayQuestions', 'ID', b.ID 
		FROM main.CarePathway a
		join main.CarePathwayQuestions b on a.ID = b.CarePathwayID
		where a.PartnerID = @PartnerID

		--Question
		insert into #tbQuestion
		select QuestionId from #tbCarePlanCarePathWayQuestion

		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'Question', 'ID', ID from #tbQuestion
	
		insert into #tbCareRecording
		select distinct b.CareRecordingID from #tbQuestion a
		join main.QuestionCareRecordings b on a.ID = b.QuestionID

		--QuestionAnswers
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'QuestionAnswers', 'ID', b.ID from #tbQuestion a
		join main.QuestionAnswers b on a.id = b.QuestionID
	
		--QuestionCareRecordings
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'QuestionCareRecordings', 'ID', b.ID from #tbQuestion a
		join main.QuestionCareRecordings b on a.id = b.QuestionID

		insert into #tbCareRecording
		select distinct c.CareRecordingID from #tbQuestion a
		join main.QuestionCareRecordings c on a.ID = c.CareRecordingID

		--QuestionAnswerCareRecordings
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'QuestionAnswerCareRecordings','ID', c.ID from #tbQuestion a
		join main.QuestionAnswers b on a.id = b.QuestionID
		join main.QuestionAnswerCareRecordings c on b.ID = c.QuestionAnswerID
	
		insert into #tbCareRecording
		select distinct c.CareRecordingID from #tbQuestion a
		join main.QuestionAnswers b on a.id = b.QuestionID
		join main.QuestionAnswerCareRecordings c on b.ID = c.QuestionAnswerID
		--Alerts
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'Alerts','AlertID', b.AlertID from #tbQuestion a
		join main.Alerts b on a.id = b.QuestionID
	
		--QuestionCareRules
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'QuestionCareRules','QuestionID', b.QuestionID from #tbQuestion a
		join main.QuestionCareRules b on a.id = b.QuestionID
	
		--CareRules
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'CareRules', 'ID',  b.CareRuleID from #tbQuestion a
		join main.QuestionCareRules b on a.id = b.QuestionID
	
	------------------------------------------------------------------------------------
	--VitalType --clinical db
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'VitalType', 'Id', a.VitalTypeID 
		from #tbCarePlanCarePathWayQuestion a
	
	--Instructions

		insert into #Instructions
		select distinct b.Sample 
		from #tbQuestion a
		join main.Question b on a.ID = b.ID
	
		insert into #Instructions
		select c.Sample 
		from #tbQuestion a
		join main.Question b on a.ID = b.ID 
		left join main.QuestionAnswers c on b.id = c.QuestionID

		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'Instructions', 'ID', ID from #Instructions where ID is not null
	
	-- Options
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'Options', 'ID', c.OptionID  
		from #tbQuestion a
		join main.Question b on a.ID = b.ID 
		join main.QuestionAnswers c on b.id = c.QuestionID
		where c.OptionID is not null
	-- CARERECORDING
		--PartnerCareRecordings
		insert into #tbCareRecording
		select a.CareRecordingId
		from main.PartnerCareRecordings a
		join main.CareRecordings b on a.CareRecordingId = b.ID
		where a.PartnerID = @partnerId

		--CareRecordings
		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'CareRecordings', 'ID', a.ID 
		from #tbCareRecording a
	
	--GetFromQuestion & QuestionAnser
	------------------------------------------------------------------------------------
	----PROMPT
	--1 get from CareRecordings
		insert into #tbPrompt
		select a.PromptID from main.CareRecordings a
		join #tbCareRecording b on a.ID = b.ID
	--2. get from Question
		insert into #tbPrompt
		select PromptID from #tbCarePlanCarePathWayQuestion 

	--3. get from instruction
		insert into #tbPrompt
		select a.PromptID from main.Instructions a
		join #Instructions b on a.ID = b.ID

		insert into [main].[DataSync] ([ProcessId], [TableName], [PrimaryKeyName], [PrimaryKey1])
		select distinct @processId, 'Prompts', 'ID',  a.ID 
		from #tbPrompt a
	--REMOVE DUPLICATE RECORD [main].[DataSync]
		;WITH CTE_Duplicates AS (
		SELECT 
			*, 
			ROW_NUMBER() OVER (
				PARTITION BY [TableName],[PrimaryKeyName],[PrimaryKey1]  -- List all columns that define duplicates
				ORDER BY (SELECT NULL)
			) AS RowNum
		FROM [main].[DataSync]
	)
	DELETE FROM CTE_Duplicates
	WHERE RowNum > 1;
 
	--FINISH
	select COUNT(*) AS Total FROM [main].[DataSync] WHERE ProcessId = @processId
	
END
GO
/****** Object:  StoredProcedure [TempStageProd].[pipeline_sync_up_data_changes_2_2_person_info]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [TempStageProd].[pipeline_sync_up_data_changes_2_2_person_info]
	@DataSchema varchar(50)
AS
BEGIN
	
	DECLARE @SQL nvarchar(max);
	SET @SQL = N'
		MERGE ' + QUOTENAME(@DataSchema) + N'.[PersonInfo] AS target
		USING (
			SELECT 
				pge.*
			FROM TempStageProd.[TestPersonInfo] pge
			WHERE pge.DataSchema = @SCHEMA
		) AS source
		ON (
			target.[SBURID] = source.[SBURID] AND
			target.[RID] = source.[RID] 
		)
		WHEN MATCHED THEN
			UPDATE SET
				target.[FName] =            source.[FName],
				target.[MName] =            source.[MName],
				target.[LName] =            source.[LName],
				target.[MaidenName] =       source.[MaidenName],
				target.[SingleName] =       source.[SingleName],
				target.[XofYName] =         source.[XofYName],
				target.[Title] =            source.[Title],
				target.[Ordinal] =          source.[Ordinal],
				target.[Nickname] =         source.[Nickname],
				target.[DOB] =              source.[DOB],
				target.[Gender] =           source.[Gender],
				target.[DTUTC_Created] =    source.[DTUTC_Created],
				target.[DTUTC_Modified] =   source.[DTUTC_Modified]
		WHEN NOT MATCHED THEN
			INSERT (
				[SBURID],
				[RID],
				[FName],
				[MName],
				[LName],
				[MaidenName],
				[SingleName],
				[XofYName],
				[Title],
				[Ordinal],
				[Nickname],
				[DOB],
				[Gender],
				[DTUTC_Created],
				[DTUTC_Modified],
				[PropBag]
			)
			VALUES (
				source.[SBURID],
				source.[RID],
				source.[FName],
				source.[MName],
				source.[LName],
				source.[MaidenName],
				source.[SingleName],
				source.[XofYName],
				source.[Title],
				source.[Ordinal],
				source.[Nickname],
				source.[DOB],
				source.[Gender],
				source.[DTUTC_Created],
				source.[DTUTC_Modified],
				''<PropBag />''
			);';

	EXEC sp_executesql @SQL, N'@SCHEMA varchar(50)', @DataSchema;
END
GO
/****** Object:  StoredProcedure [TempStageProd].[pipeline_sync_up_data_changes_2_stage_2_prod]    Script Date: 3/4/2025 10:25:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [TempStageProd].[pipeline_sync_up_data_changes_2_stage_2_prod]
@tableName varchar(50)
AS
BEGIN
	 SET NOCOUNT ON;

	 declare @PartnerId bigint

	select @PartnerId = ID from [TempStageProd].[partner]

	if @PartnerId is null
	begin
		return 
	end

    BEGIN TRY
        BEGIN TRANSACTION;

			IF @tableName = 'PartnerCareRecordings'
			BEGIN
				SET IDENTITY_INSERT main.PartnerCareRecordings ON;
				MERGE [Main].[PartnerCareRecordings] AS target
				USING (
					SELECT tp.* 
					FROM [TempStageProd].[PartnerCareRecordings] tp
					) AS source
				ON (target.ID = source.ID)
				WHEN MATCHED THEN
					UPDATE SET 
						[PartnerID] = source.[PartnerID],
						[CareRecordingId] = source.[CareRecordingId],
						[IvrOverrideTypeID] = source.[IvrOverrideTypeID],
						[CreatedBy] = source.[CreatedBy],
						[CreatedOn] = source.[CreatedOn],
						[LastModifiedBy] = source.[LastModifiedBy],
						[LastModifiedOn] = source.[LastModifiedOn]
				WHEN NOT MATCHED THEN
					INSERT(
							ID
							,[PartnerID]
							,[CareRecordingId]
			 				,[IvrOverrideTypeID]
							,CreatedBy
							,CreatedOn
							,LastModifiedBy
							,LastModifiedOn
							)
					VALUES( 
							source.ID
							,source.[PartnerID]
							,source.[CareRecordingId]
			 				,source.[IvrOverrideTypeID]
							,source.CreatedBy
							,source.CreatedOn
							,source.LastModifiedBy
							,source.LastModifiedOn
					);

				SET IDENTITY_INSERT main.PartnerCareRecordings OFF;

				--case delete
				DELETE a
				FROM [Main].PartnerCareRecordings a
				left join [TempStageProd].PartnerCareRecordings b on a.ID = b.ID 
				WHERE a.PartnerID = @PartnerId and b.ID is null
				

				goto Finish;
			END
	
			IF @tableName = 'CarePlanScheduling_CarePlanQuestions'
			BEGIN
				DELETE S
				FROM Main.CarePlanQuestions S
				WHERE S.CarePlanID IN (select ID from [TempStageProd].CarePlan)


				DELETE S
				FROM [Main].[CarePlanScheduling] S
				WHERE S.CarePlanID IN (select ID from [TempStageProd].CarePlan)
		
				INSERT [Main].[CarePlanScheduling]
				(
					[CarePlanID]
					,[VariableIndex]
					,[Call]
					,[WeekDay]
					,[CallOutGraph]
					,[CreatedBy]
					,[LastModifiedBy]
					,[CreatedOn]
					,[LastModifiedOn]
				)
				SELECT 
					[CarePlanID]
					,[VariableIndex]
					,[Call]
					,[WeekDay]
					,[CallOutGraph]
					,[CreatedBy]
					,[LastModifiedBy]
					,[CreatedOn]
					,[LastModifiedOn]
				FROM [TempStageProd].[CarePlanScheduling] source
				WHERE source.CarePlanID IN ( (select ID from [TempStageProd].CarePlan))

				INSERT INTO [Main].[CarePlanQuestions]
				(
					 [CarePlanID]
					,[QuestionID]
					,[VariableIndex]
					,[QuestionOrder]
					,[IsCustomQuestion]
					,[Call]
					,[WeekDay]
					,[IsQuestionBlock]
					,[CreatedBy]
					,[LastModifiedBy]
					,[CreatedOn]
					,[LastModifiedOn]
					,[OriginCustomFlowID]
				)
				SELECT 
					 [CarePlanID]
					,[QuestionID]
					,[VariableIndex]
					,[QuestionOrder]
					,[IsCustomQuestion]
					,[Call]
					,[WeekDay]
					,[IsQuestionBlock]
					,[CreatedBy]
					,[LastModifiedBy]
					,[CreatedOn]
					,[LastModifiedOn]
					,[OriginCustomFlowID]
				FROM [TempStageProd].[CarePlanQuestions] source
				WHERE source.CarePlanID IN ( (select ID from [TempStageProd].CarePlan))

				goto Finish;
			END
	
			IF @tableName = 'CarePlanAttributes'
			BEGIN
				SET IDENTITY_INSERT [Main].[CarePlanAttributes] ON;
				MERGE [Main].[CarePlanAttributes] AS target
				USING (
					SELECT tp.* 
					FROM [TempStageProd].[CarePlanAttributes] tp
					) AS source
				ON (target.ID = source.ID)
				WHEN MATCHED THEN
					UPDATE SET 
						[CarePlanID] = source.[CarePlanID],
						[AttributeTypeID] = source.[AttributeTypeID],
						[AttributeValue] = source.[AttributeValue],
						[AttributeDescription] = source.[AttributeDescription],
						[IsActive] = source.[IsActive],
						[CreatedBy] = source.[CreatedBy],
						[CreatedOn] = source.[CreatedOn],
						[LastModifiedBy] = source.[LastModifiedBy],
						[LastModifiedOn] = source.[LastModifiedOn],
						[PropBag] = source.[PropBag]
				WHEN NOT MATCHED THEN
					INSERT(
							ID,
							[CarePlanID],
							[AttributeTypeID],
							[AttributeValue],
							[AttributeDescription],
							[IsActive],
							[CreatedBy],
							[CreatedOn],
							[LastModifiedBy],
							[LastModifiedOn],
							[PropBag]
							)
					VALUES(
							source.ID, 
							source.[CarePlanID],
							source.[AttributeTypeID],
							source.[AttributeValue],
							source.[AttributeDescription],
							source.[IsActive],
							source.[CreatedBy],
							source.[CreatedOn],
							source.[LastModifiedBy],
							source.[LastModifiedOn],
							source.[PropBag]
					);

				SET IDENTITY_INSERT [Main].[CarePlanAttributes] OFF;
				goto Finish;
			END
	
			IF @tableName = 'CarePathwayQuestions'
			BEGIN
					DELETE S
					FROM [main].[CarePathwayQuestions] S
					WHERE S.[CarePathwayID] IN (select ID from [TempStageProd].CarePathway)

				SET IDENTITY_INSERT [main].[CarePathwayQuestions] ON;
				MERGE [main].[CarePathwayQuestions] AS target
				USING (
					SELECT tp.* 
					FROM [TempStageProd].[CarePathwayQuestions] tp
					) AS source
				ON (target.ID = source.ID)
				WHEN MATCHED THEN
					UPDATE SET 
						[CarePathwayID] = source.[CarePathwayID],
						[QuestionID] = source.[QuestionID],
						[QuestionOrder] = source.[QuestionOrder],
						[IsCustomQuestion] = source.[IsCustomQuestion],
						[CreatedBy] = source.[CreatedBy],
						[LastModifiedBy] = source.[LastModifiedBy],
						[CreatedOn] = source.[CreatedOn],
						[LastModifiedOn] = source.[LastModifiedOn]
				WHEN NOT MATCHED THEN
					INSERT(
							[ID]
							,[CarePathwayID]
							,[QuestionID]
							,[QuestionOrder]
							,[IsCustomQuestion]
							,[CreatedBy]
							,[LastModifiedBy]
							,[CreatedOn]
							,[LastModifiedOn]
					)
					VALUES(
							 source.[ID]
							,source.[CarePathwayID]
							,source.[QuestionID]
							,source.[QuestionOrder]
							,source.[IsCustomQuestion]
							,source.[CreatedBy]
							,source.[LastModifiedBy]
							,source.[CreatedOn]
							,source.[LastModifiedOn]
					);

				SET IDENTITY_INSERT [Main].[CarePlanAttributes] OFF;
				goto Finish;
			END

			IF @tableName = 'Prompts'
			BEGIN
				SET IDENTITY_INSERT main.Prompts ON;
				MERGE Main.[Prompts] AS target
				USING (
					SELECT tp.* 
					FROM [TempStageProd].[Prompts] tp
					) AS source
				ON (target.ID = source.ID AND target.LanguageID = source.LanguageID)
				WHEN MATCHED THEN 
					UPDATE SET 
						target.[PromptContent] = source.[PromptContent],
						target.[PropBag] = '<PropBag />',
						target.[PromptUrl] = source.[PromptUrl],
						target.[PromptContentWeb] = source.[PromptContentWeb],
						target.[AudioDescription] = source.[AudioDescription],
						target.[DefaultPrompt] = source.[DefaultPrompt],
						target.[PromptContentSms] = source.[PromptContentSms],
						target.[PromptContentForReport] = source.[PromptContentForReport],
						target.[CreatedBy] = source.[CreatedBy],
						target.[CreatedOn] = source.[CreatedOn],
						target.[LastModifiedBy] = source.[LastModifiedBy],
						target.[LastModifiedOn] = source.[LastModifiedOn]
				WHEN NOT MATCHED THEN
					INSERT(
							[ID],
							[LanguageID],
							[PromptContent],
							[PropBag],
							[PromptUrl],
							[PromptContentWeb],
							[AudioDescription],
							[DefaultPrompt],
							[PromptContentSms],
							[PromptContentForReport],
							[CreatedBy],
							[CreatedOn],
							[LastModifiedBy],
							[LastModifiedOn]
							)
					VALUES( 
							source.[ID],
							source.[LanguageID],
							source.[PromptContent],
							'<PropBag />',
							source.[PromptUrl],
							source.[PromptContentWeb],
							source.[AudioDescription],
							source.[DefaultPrompt],
							source.[PromptContentSms],
							source.[PromptContentForReport],
							source.[CreatedBy],
							source.[CreatedOn],
							source.[LastModifiedBy],
							source.[LastModifiedOn]
					);
				SET IDENTITY_INSERT main.Prompts OFF;
				goto Finish;
			END

			IF @tableName = 'Partner'
			BEGIN
				--Insert R
				INSERT INTO Main.R(
					RID, 
					RTypeID, 
					IsActive, 
					IsTesting, 
					[CreatedBy],
					[CreatedOn],
					[LastModifiedBy],
					[LastModifiedOn], 
					[PropBag])
				SELECT ID, 1, 1, 0, p.CreatedBy, p.CreatedOn, p.LastModifiedBy, p.LastModifiedOn, '<PropBag />'
				FROM TempStageProd.Partner p
				LEFT JOIN Main.R on P.id = R.RID
				WHERE R.RID IS NULL;
				
				--Insert Partner
				SET IDENTITY_INSERT main.Partner ON;
				MERGE Main.Partner AS target
				USING (
					SELECT P.* 
					FROM [TempStageProd].[Partner] P
					) AS source
				ON (target.ID = source.ID)
				WHEN MATCHED THEN
					UPDATE SET
							target.[Name]					= source.[Name],
							target.[DisplayInAdminPortal]		= source.[DisplayInAdminPortal],
							target.[CreatedBy] = source.[CreatedBy],
							target.[CreatedOn] = source.[CreatedOn],
							target.[LastModifiedBy] = source.[LastModifiedBy],
							target.[LastModifiedOn] = source.[LastModifiedOn],
							target.[LogoUrl] = source.[LogoUrl],
							target.[DataSchema] = source.[DataSchema],
							target.[IsActive] = source.[IsActive]
				WHEN NOT MATCHED THEN
				INSERT(
					 [ID],
					 [Name],
					 [DisplayInAdminPortal],
					 [CreatedBy],
					 [LastModifiedBy],
					 [CreatedOn],
					 [LastModifiedOn],
					 [LogoUrl],
					 [DataSchema],
					 [IsActive]
				)
				VALUES(
					source.[ID],
					source.[Name],
					source.[DisplayInAdminPortal],
					source.[CreatedBy],
					source.[LastModifiedBy],
					source.[CreatedOn],
					source.[LastModifiedOn],
					source.[LogoUrl],
					source.[DataSchema],
					source.[IsActive]
				);
				
				SET IDENTITY_INSERT main.Partner OFF;
				goto Finish;
			END

			IF @tableName = 'PartnerGroup'
			BEGIN
				SET IDENTITY_INSERT main.PartnerGroup ON
				MERGE Main.PartnerGroup AS target
				USING (
					SELECT P.* 
					FROM [TempStageProd].[PartnerGroup] P
					) AS source
				ON (target.ID = source.ID)
				WHEN MATCHED THEN
					UPDATE SET
							target.[Name] = source.[Name],
							target.[CreatedBy] = source.[CreatedBy],
							target.[LastModifiedBy] = source.[LastModifiedBy],
							target.[CreatedOn] = source.[CreatedOn],
							target.[LastModifiedOn] = source.[LastModifiedOn],
							target.[PARENTRID] = source.[PARENTRID],
							target.[IsDefault] = source.[IsDefault]
				WHEN NOT MATCHED THEN
				INSERT(
					[ID],
					[PartnerID],
					[Name],
					[CreatedBy],
					[LastModifiedBy],
					[CreatedOn],
					[LastModifiedOn],
					[PARENTRID],
					[IsDefault]
				)
				VALUES(
					source.[ID],
					source.[PartnerID],
					source.[Name],
					source.[CreatedBy],
					source.[LastModifiedBy],
					source.[CreatedOn],
					source.[LastModifiedOn],
					source.[PARENTRID],
					source.[IsDefault]
				);
				SET IDENTITY_INSERT main.PartnerGroup OFF;
				goto Finish;
			END
			
			IF @tableName = 'PartnerAttributes'
			BEGIN
				SET IDENTITY_INSERT main.PartnerAttributes ON
				MERGE [Main].[PartnerAttributes] AS target
				USING (
					SELECT *
					FROM [TempStageProd].[PartnerAttributes] pa
					) AS source
					ON (target.ID = source.ID)

				WHEN MATCHED THEN
					UPDATE SET
							target.[PartnerID]	 = source.[PartnerID],
							target.[AttributeTypeID] = source.[AttributeTypeID],
							target.[AttributeValue] = source.[AttributeValue],
							target.[IsActive] = source.[IsActive],
							target.[CreatedBy] = source.[CreatedBy],
							target.[LastModifiedBy] = source.[LastModifiedBy],
							target.[CreatedOn] = source.[CreatedOn],
							target.[LastModifiedOn] = source.[LastModifiedOn]
		
				WHEN NOT MATCHED THEN
					INSERT(
						[ID],
						[PartnerID],
						[AttributeTypeID],
						[AttributeValue],
						[IsActive],
						[CreatedBy],
						[LastModifiedBy],
						[CreatedOn],
						[LastModifiedOn]
					)
					VALUES(
						source.[ID],
						source.[PartnerID],
						source.[AttributeTypeID],
						source.[AttributeValue],
						source.[IsActive],
						source.[CreatedBy],
						source.[LastModifiedBy],
						source.[CreatedOn],
						source.[LastModifiedOn]
					);
				SET IDENTITY_INSERT main.PartnerAttributes OFF;

				DELETE a
				FROM [Main].[PartnerAttributes] a
				left join [TempStageProd].[PartnerAttributes] b on a.ID = b.ID 
				WHERE a.PartnerID = @PartnerId and b.ID is null
				
				goto Finish;
			END

			IF @tableName = 'PartnerGroupAttributes'
			BEGIN
				SET IDENTITY_INSERT main.PartnerGroupAttributes ON;
				MERGE Main.PartnerGroupAttributes AS target
				USING (
					SELECT pga.*
					FROM TempStageProd.PartnerGroupAttributes pga
					) AS source
					ON (target.ID = source.ID)
				WHEN MATCHED THEN
					UPDATE SET
							target.[PartnerGroupID] = source.[PartnerGroupID],
							target.[AttributeTypeID] = source.[AttributeTypeID],
							target.[AttributeValue] = source.[AttributeValue],
							target.[IsActive] = source.[IsActive],
							target.[CreatedBy] = source.[CreatedBy],
							target.[LastModifiedBy] = source.[LastModifiedBy],
							target.[CreatedOn] = source.[CreatedOn],
							target.[LastModifiedOn] = source.[LastModifiedOn]
				WHEN NOT MATCHED THEN
					INSERT(
						[ID],
						[PartnerGroupID],
						[AttributeTypeID],
						[AttributeValue],
						[IsActive],
						[CreatedBy],
						[LastModifiedBy],
						[CreatedOn],
						[LastModifiedOn]
					)
					VALUES(
						source.[ID],
						source.[PartnerGroupID],
						source.[AttributeTypeID],
						source.[AttributeValue],
						source.[IsActive],
						source.[CreatedBy],
						source.[LastModifiedBy],
						source.[CreatedOn],
						source.[LastModifiedOn]
					);
				SET IDENTITY_INSERT main.PartnerGroupAttributes OFF;

				--case delete 
				delete a
				from main.PartnerGroupAttributes a
				left join TempStageProd.PartnerGroupAttributes b on a.ID = b.ID
				where a.PartnerGroupID in (select PartnerGroupID  from TempStageProd.PartnerGroupAttributes  )
				and b.ID is null

				goto Finish;
			END

			IF @tableName = 'CareRecordings'
			BEGIN
				SET IDENTITY_INSERT main.[CareRecordings] ON;
				MERGE main.[CareRecordings] AS target
				USING (
					SELECT * 
					FROM [TempStageProd].[CareRecordings]
            
					) AS source
				ON (target.Id = source.Id)
		
				WHEN MATCHED THEN
					UPDATE SET
						[Name] = source.[Name],
						[Description] = source.[Description],
						[Text] = source.[Text],
						[Section] = source.[Section],
						[Type] = source.[Type],
						[PromptID] = source.[PromptID],
						[LanguageID] = source.[LanguageID],
						[IsDeactivated] = source.[IsDeactivated],
						[CreatedBy] = source.[CreatedBy],
						[LastModifiedBy] = source.[LastModifiedBy],
						[CreatedOn] = source.[CreatedOn],
						[LastModifiedOn] = source.[LastModifiedOn]
				WHEN NOT MATCHED THEN
					INSERT(
						[ID],
						[Name],
						[Description],
						[Text],
						[Section],
						[Type],
						[PromptID],
						[LanguageID],
						[IsDeactivated],
						[CreatedBy],
						[LastModifiedBy],
						[CreatedOn],
						[LastModifiedOn]
					)
					VALUES(
						source.[ID],
						source.[Name],
						source.[Description],
						source.[Text],
						source.[Section],
						source.[Type],
						source.[PromptID],
						source.[LanguageID],
						source.[IsDeactivated],
						source.[CreatedBy],
						source.[LastModifiedBy],
						source.[CreatedOn],
						source.[LastModifiedOn]
					);
					SET IDENTITY_INSERT [Main].[CareRecordings] OFF;
				goto Finish;
			END
			
			IF @tableName = 'Options'
			BEGIN
				SET IDENTITY_INSERT main.Options ON;
				MERGE Main.[Options] AS target
				USING (
					SELECT * 
					FROM [TempStageProd].[Options]
					) AS source
				ON (target.ID = source.ID and target.LanguageID = source.LanguageID)
				WHEN NOT MATCHED THEN
				INSERT(
					[ID],
					[LanguageID],
					[Options],
					[PropBag],
					[AudioUrl],
					[OptionWeb],
					[OptionSms],
					[TextFilter],
					[CreatedBy],
					[LastModifiedBy],
					[CreatedOn],
					[LastModifiedOn]
				)
				VALUES(
					source.[ID],
					source.[LanguageID],
					source.[Options],
					source.[PropBag],
					source.[AudioUrl],
					source.[OptionWeb],
					source.[OptionSms],
					source.[TextFilter],
					source.[CreatedBy],
					source.[LastModifiedBy],
					source.[CreatedOn],
					source.[LastModifiedOn]
					)
				WHEN MATCHED THEN
				UPDATE SET 
					target.[PropBag] = source.[PropBag],
					target.[AudioUrl] = source.[AudioUrl],
					target.[OptionWeb] = source.[OptionWeb],
					target.[OptionSms] = source.[OptionSms],
					target.[TextFilter] = source.[TextFilter],
					target.[CreatedBy] = source.[CreatedBy],
					target.[LastModifiedBy] = source.[LastModifiedBy],
					target.[CreatedOn] = source.[CreatedOn],
					target.[LastModifiedOn] = source.[LastModifiedOn];
				SET IDENTITY_INSERT main.Options OFF;
				goto Finish;
			END

			IF @tableName = 'Instructions'
			BEGIN
				SET IDENTITY_INSERT main.Instructions ON;
				MERGE Main.[Instructions] AS target
				USING (
					SELECT * 
					FROM [TempStageProd].[Instructions]
					) AS source
				ON (target.ID = source.ID and target.PromptID = source.PromptID and target.ModeType = source.ModeType and target.WorkflowMode =source.WorkflowMode)
				WHEN NOT MATCHED THEN
				INSERT(
					[ID],
					[PromptID],
					[ModeType],
					[PropBag],
					[WorkflowMode],
					[CreatedBy],
					[LastModifiedBy],
					[CreatedOn],
					[LastModifiedOn]
				)
				VALUES(
					source.[ID],
					source.[PromptID],
					source.[ModeType],
					source.[PropBag],
					source.[WorkflowMode],
					source.[CreatedBy],
					source.[LastModifiedBy],
					source.[CreatedOn],
					source.[LastModifiedOn]
				);
				SET IDENTITY_INSERT main.Instructions OFF;
				goto Finish;
			END

			IF @tableName = 'CareRules'
			BEGIN
				SET IDENTITY_INSERT Main.[CareRules] ON
				MERGE Main.[CareRules] AS target
				USING (
					SELECT 
						 *
					FROM [TempStageProd].[CareRules]
				) AS source
				ON (target.[ID] = source.[ID])
				WHEN NOT MATCHED THEN
				INSERT (
						[ID],
						[CareRule],
						[CreatedBy],
						[LastModifiedBy],
						[CreatedOn],
						[LastModifiedOn]
				)
				VALUES 
				(
						source.[ID],
						source.[CareRule],
						source.[CreatedBy],
						source.[LastModifiedBy],
						source.[CreatedOn],
						source.[LastModifiedOn]
				);
				SET IDENTITY_INSERT Main.[CareRules] OFF
				goto Finish;
			END


			IF @tableName = 'CarePlan'
			BEGIN
				SET IDENTITY_INSERT Main.[CarePlan] ON;
				SET ANSI_WARNINGS OFF;
				MERGE Main.[CarePlan] AS target
				USING (
					SELECT * 
					FROM [TempStageProd].[CarePlan]
					) AS source
				ON (target.Id = source.ID)

				WHEN MATCHED THEN
					UPDATE SET
						[PartnerID] = source.[PartnerID],
						[Name] = source.[Name],
						[Description] = source.[Description],
						[CarePlanGroupID] = source.[CarePlanGroupID],
						[Duration] = source.[Duration],
						[UnitMeasure] = source.[UnitMeasure],
						[Schedule] = source.[Schedule],
						[Segment] = source.[Segment],
						[Scope] = source.[Scope],
						[Exclude] = source.[Exclude],
						[FlowTemplate] = source.[FlowTemplate],
						[Attempts] = source.[Attempts],
						[Continuous] = source.[Continuous],
						[LanguageId] = source.[LanguageId],
						[Frequency] = source.[Frequency],
						[TextToSpeech] = source.[TextToSpeech],
						[Voice] = source.[Voice],
						[CreatedBy] = source.[CreatedBy],
						[LastModifiedBy] = source.[LastModifiedBy],
						[CreatedOn] = source.[CreatedOn],
						[LastModifiedOn] = source.[LastModifiedOn],
						[IsDeleted] = source.[IsDeleted],
						[IsDeactivated] = source.[IsDeactivated]	
				WHEN NOT MATCHED THEN
					INSERT(
						[ID],
						[PartnerID],
						[Name],
						[Description],
						[CarePlanGroupID],
						[Duration],
						[UnitMeasure],
						[Schedule],
						[Segment],
						[Scope],
						[Exclude],
						[FlowTemplate],
						[Attempts],
						[Continuous],
						[LanguageId],
						[Frequency],
						[TextToSpeech],
						[Voice],
						[CreatedBy],
						[LastModifiedBy],
						[CreatedOn],
						[LastModifiedOn],
						[IsDeleted],
						[IsDeactivated]
					)	
					VALUES(
						source.[ID],
						source.[PartnerID],
						source.[Name],
						source.[Description],
						source.[CarePlanGroupID],
						source.[Duration],
						source.[UnitMeasure],
						source.[Schedule],
						source.[Segment],
						source.[Scope],
						source.[Exclude],
						source.[FlowTemplate],
						source.[Attempts],
						source.[Continuous],
						source.[LanguageId],
						source.[Frequency],
						source.[TextToSpeech],
						source.[Voice],
						source.[CreatedBy],
						source.[LastModifiedBy],
						source.[CreatedOn],
						source.[LastModifiedOn],
						source.[IsDeleted],
						source.[IsDeactivated]
					);		
				SET IDENTITY_INSERT Main.CarePlan OFF;
				goto Finish;
			END

			IF @tableName = 'CarePlanCareRecordings'
			BEGIN
				MERGE Main.CarePlanCareRecordings AS target
				USING (
					SELECT 
						 cpcr.*
					FROM [TempStageProd].[CarePlanCareRecordings] cpcr
				) AS source
				ON (
					target.[CarePlanID] = source.[CarePlanID]  AND
					target.[CareRecordingId] = source.[CareRecordingID] 
				)
				WHEN NOT MATCHED THEN
					INSERT (
						[CarePlanID],
						[CareRecordingID],
						[CreatedBy],
						[LastModifiedBy],
						[CreatedOn],
						[LastModifiedOn]
					)
					VALUES (
						source.[CarePlanID],
						source.[CareRecordingID],
						source.[CreatedBy],
						source.[LastModifiedBy],
						source.[CreatedOn],
						source.[LastModifiedOn]
					);
				goto Finish;
			END
			
			IF @tableName = 'QuestionAnswerCareRecordings'
			BEGIN
				SET IDENTITY_INSERT main.QuestionAnswerCareRecordings ON;
				MERGE Main.QuestionAnswerCareRecordings AS target
				USING (
					SELECT QACR.*
					FROM [TempStageProd].[QuestionAnswerCareRecordings] QACR
				) AS source
				ON (
					target.ID = source.ID
				)
				WHEN MATCHED THEN
					UPDATE SET
						[QuestionAnswerID] = source.[QuestionAnswerID],
						[CareRecordingID] = source.[CareRecordingID],
						[QuestionRecordingTypeID] = source.[QuestionRecordingTypeID],
						[CreatedBy] = source.[CreatedBy],
						[LastModifiedBy] = source.[LastModifiedBy],
						[CreatedOn] = source.[CreatedOn],
						[LastModifiedOn] = source.[LastModifiedOn]

				WHEN NOT MATCHED THEN
					INSERT 
					(
						[ID],
						[QuestionAnswerID],
						[CareRecordingID],
						[QuestionRecordingTypeID],
						[CreatedBy],
						[LastModifiedBy],
						[CreatedOn],
						[LastModifiedOn]
					)
					VALUES 
					(
						source.[ID],
						source.[QuestionAnswerID],
						source.[CareRecordingID],
						source.[QuestionRecordingTypeID],
						source.[CreatedBy],
						source.[LastModifiedBy],
						source.[CreatedOn],
						source.[LastModifiedOn]
					);
				SET IDENTITY_INSERT main.QuestionAnswerCareRecordings OFF;
				goto Finish;
			END

			IF @tableName = 'CarePathway'
			BEGIN
				SET IDENTITY_INSERT Main.CarePathway ON;
				MERGE Main.CarePathway AS target
				USING (
					SELECT * 
					FROM [TempStageProd].[CarePathway]
					) AS source
				ON (target.Id = source.ID)

				WHEN MATCHED THEN
					UPDATE SET
							[PartnerID] = source.[PartnerID],
							[Title] = source.[Title],
							[Description] = source.[Description],
							[GroupID] = source.[GroupID],
							[LanguageID] = source.[LanguageID],
							[CreatedBy] = source.[CreatedBy],
							[LastModifiedBy] = source.[LastModifiedBy],
							[CreatedOn] = source.[CreatedOn],
							[LastModifiedOn] = source.[LastModifiedOn],
							[IsDeleted] = source.[IsDeleted],
							[IsDeactivated] = source.[IsDeactivated]
		
				WHEN NOT MATCHED THEN
					INSERT(
						[ID],
						[PartnerID],
						[Title],
						[Description],
						[GroupID],
						[LanguageID],
						[CreatedBy],
						[LastModifiedBy],
						[CreatedOn],
						[LastModifiedOn],
						[IsDeleted],
						[IsDeactivated]
					)
					VALUES(
						source.[ID],
						source.[PartnerID],
						source.[Title],
						source.[Description],
						source.[GroupID],
						source.[LanguageID],
						source.[CreatedBy],
						source.[LastModifiedBy],
						source.[CreatedOn],
						source.[LastModifiedOn],
						source.[IsDeleted],
						source.[IsDeactivated]
					);
				SET IDENTITY_INSERT Main.CarePathway OFF;
			goto Finish;
			END

			IF @tableName = 'Question'
			BEGIN
				SET IDENTITY_INSERT [Main].[Question] ON;
				MERGE [Main].[Question] AS target
				USING (
					SELECT * 
					FROM [TempStageProd].[Question]
            
					) AS source
				ON (target.Id = source.ID)
		
				WHEN MATCHED THEN
					UPDATE SET 
							[QuestionTypeID] = source.[QuestionTypeID],
							[VitalTypeID] = source.[VitalTypeID],
							[PromptID] = source.[PromptID],
							[Sample] = source.[Sample],
							[IsPublic] = source.[IsPublic],
							[QuestionCategory] = source.[QuestionCategory],
							[Grammar] = source.[Grammar],
							[DisableReaction] = source.[DisableReaction],
							[DisableInstruction] = source.[DisableInstruction],
							[QuestionHangUp] = source.[QuestionHangUp],
							[InstructionMode] = source.[InstructionMode],
							[MinDigits] = source.[MinDigits],
							[MaxDigits] = source.[MaxDigits],
							[Wait] = source.[Wait],
							[LanguageID] = source.[LanguageID],
							[Frequency] = source.[Frequency],
							[ReadNumberAs] = source.[ReadNumberAs],
							[QuestionChannel] = source.[QuestionChannel],
							[Decimals] = source.[Decimals],
							[CheckOut] = source.[CheckOut],
							[Whisper] = source.[Whisper],
							[RepeatAfterAttemps] = source.[RepeatAfterAttemps],
							[BargeIn] = source.[BargeIn],
							[CreatedBy] = source.[CreatedBy],
							[LastModifiedBy] = source.[LastModifiedBy],
							[CreatedOn] = source.[CreatedOn],
							[LastModifiedOn] = source.[LastModifiedOn]
					WHEN NOT MATCHED THEN
					INSERT(
							[ID],
							[QuestionTypeID],
							[VitalTypeID],
							[PromptID],
							[Sample],
							[IsPublic],
							[QuestionCategory],
							[Grammar],
							[DisableReaction],
							[DisableInstruction],
							[QuestionHangUp],
							[InstructionMode],
							[MinDigits],
							[MaxDigits],
							[Wait],
							[LanguageID],
							[Frequency],
							[ReadNumberAs],
							[QuestionChannel],
							[Decimals],
							[CheckOut],
							[Whisper],
							[RepeatAfterAttemps],
							[BargeIn],
							[CreatedBy],
							[LastModifiedBy],
							[CreatedOn],
							[LastModifiedOn]
					)
					VALUES(
						source.[ID],
						source.[QuestionTypeID],
						source.[VitalTypeID],
						source.[PromptID],
						source.[Sample],
						source.[IsPublic],
						source.[QuestionCategory],
						source.[Grammar],
						source.[DisableReaction],
						source.[DisableInstruction],
						source.[QuestionHangUp],
						source.[InstructionMode],
						source.[MinDigits],
						source.[MaxDigits],
						source.[Wait],
						source.[LanguageID],
						source.[Frequency],
						source.[ReadNumberAs],
						source.[QuestionChannel],
						source.[Decimals],
						source.[CheckOut],
						source.[Whisper],
						source.[RepeatAfterAttemps],
						source.[BargeIn],
						source.[CreatedBy],
						source.[LastModifiedBy],
						source.[CreatedOn],
						source.[LastModifiedOn]
					);
				SET IDENTITY_INSERT Main.Question OFF;
				goto Finish;
			END

			IF @tableName = 'QuestionAnswers'
			BEGIN
				SET IDENTITY_INSERT Main.QuestionAnswers ON;
				MERGE Main.QuestionAnswers AS target
				USING (
					SELECT * 
					FROM [TempStageProd].[QuestionAnswers]
					) AS source
				ON (target.Id = source.ID)
            
				WHEN MATCHED THEN
					UPDATE SET
							[ReadingLevel] = source.[ReadingLevel],
							[TriggerAlert] = source.[TriggerAlert],
							[QuestionID] = source.[QuestionID],
							[NextID] = source.[NextID],
							[OptionID] = source.[OptionID],
							[From] = source.[From],
							[To] = source.[To],
							[Action] = source.[Action],
							[DisableAnswerReaction] = source.[DisableAnswerReaction],
							[Value] = source.[Value],
							[Sample] = source.[Sample],
							[TriggerFaxAlert] = source.[TriggerFaxAlert],
							[IsPrimarySubQuestion] = source.[IsPrimarySubQuestion],
							[CreatedBy] = source.[CreatedBy],
							[LastModifiedBy] = source.[LastModifiedBy],
							[CreatedOn] = source.[CreatedOn],
							[LastModifiedOn] = source.[LastModifiedOn]			
				WHEN NOT MATCHED THEN
					INSERT(
						[ID],
						[ReadingLevel],
						[TriggerAlert],
						[QuestionID],
						[NextID],
						[OptionID],
						[From],
						[To],
						[Action],
						[DisableAnswerReaction],
						[Value],
						[Sample],
						[TriggerFaxAlert],
						[IsPrimarySubQuestion],
						[CreatedBy],
						[LastModifiedBy],
						[CreatedOn],
						[LastModifiedOn]
					)
					VALUES(
						source.[ID],
						source.[ReadingLevel],
						source.[TriggerAlert],
						source.[QuestionID],
						source.[NextID],
						source.[OptionID],
						source.[From],
						source.[To],
						source.[Action],
						source.[DisableAnswerReaction],
						source.[Value],
						source.[Sample],
						source.[TriggerFaxAlert],
						source.[IsPrimarySubQuestion],
						source.[CreatedBy],
						source.[LastModifiedBy],
						source.[CreatedOn],
						source.[LastModifiedOn]
					);
					SET IDENTITY_INSERT Main.QuestionAnswers OFF;
					goto Finish;
			END

			IF @tableName = 'QuestionCareRecordings'
			BEGIN
				SET IDENTITY_INSERT main.QuestionCareRecordings ON;
				MERGE [Main].[QuestionCareRecordings] AS target
				USING (
					SELECT QCR.*
					FROM [TempStageProd].[QuestionCareRecordings] QCR
				) AS source
				ON (
					target.ID = source.ID
				)
				WHEN MATCHED THEN
					UPDATE SET
						[QuestionID] = source.[QuestionID],
						[CareRecordingID] = source.[CareRecordingID],
						[QuestionRecordingTypeID] = source.[QuestionRecordingTypeID],
						[CreatedBy] = source.[CreatedBy],
						[LastModifiedBy] = source.[LastModifiedBy],
						[CreatedOn] = source.[CreatedOn],
						[LastModifiedOn] = source.[LastModifiedOn]
				WHEN NOT MATCHED THEN
					INSERT (
						[ID],
						[QuestionID],
						[CareRecordingID],
						[QuestionRecordingTypeID],
						[CreatedBy],
						[LastModifiedBy],
						[CreatedOn],
						[LastModifiedOn]
					)
					VALUES (
						source.[ID],
						source.[QuestionID],
						source.[CareRecordingID],
						source.[QuestionRecordingTypeID],
						source.[CreatedBy],
						source.[LastModifiedBy],
						source.[CreatedOn],
						source.[LastModifiedOn]
					);
				SET IDENTITY_INSERT main.QuestionCareRecordings OFF;	
				GOTO Finish;
			END

			IF @tableName = 'QuestionCareRules'
			BEGIN
				
				 MERGE Main.QuestionCareRules AS target
					USING (
						SELECT 
								*
						FROM [TempStageProd].[QuestionCareRules]
					) AS source
					ON (
						target.[QuestionID] = source.[QuestionID]  AND
						target.[CareRuleId] = source.[CareRuleID] 
					)

					WHEN NOT MATCHED THEN
						INSERT (
							[QuestionID],
							[CareRuleID],
							[CreatedBy],
							[LastModifiedBy],
							[CreatedOn],
							[LastModifiedOn]
						)
						VALUES (
							source.[QuestionID],
							source.[CareRuleID],
							source.[CreatedBy],
							source.[LastModifiedBy],
							source.[CreatedOn],
							source.[LastModifiedOn]
						);
				GOTO Finish;
			END
			
			IF @tableName = 'PartnerAlertConfigurations'
			BEGIN
				IF EXISTS(SELECT 1 FROM [TempStageProd].[PartnerAlertConfigurations])
				BEGIN
					
					DELETE MAIN.[PartnerAlertConfigurations] WHERE PartnerID = @PartnerId
					SET IDENTITY_INSERT Main.[PartnerAlertConfigurations] ON;
					insert into main.[PartnerAlertConfigurations]
					(
						[ID]
					   ,[PartnerID]
					   ,[Title]
					   ,[Show]
					   ,[ActionableAlert]
					   ,[VitalTypeID]
					   ,[AlertOrder]
					   ,[ParentId]
					   ,[QuestionCategory]
					   ,[QuestionId]
					   ,[SectionCategory]
					   ,[Notes]
					   ,[ShowNotes]
					   ,[ClassName]
					   ,[SettingId]
					)
					select 
						[ID]
					   ,[PartnerID]
					   ,[Title]
					   ,[Show]
					   ,[ActionableAlert]
					   ,[VitalTypeID]
					   ,[AlertOrder]
					   ,[ParentId]
					   ,[QuestionCategory]
					   ,[QuestionId]
					   ,[SectionCategory]
					   ,[Notes]
					   ,[ShowNotes]
					   ,[ClassName]
					   ,[SettingId]
					from [TempStageProd].[PartnerAlertConfigurations]
					SET IDENTITY_INSERT Main.[PartnerAlertConfigurations] OFF;
				END
				goto Finish;
			END

			IF @tableName = 'PartnerConfigurationColumns'
			BEGIN
				
				IF EXISTS(SELECT 1 FROM [TempStageProd].[PartnerConfigurationColumns])
				BEGIN
					
					DELETE MAIN.[PartnerConfigurationColumns] WHERE PartnerID = @PartnerId
					
					SET IDENTITY_INSERT Main.[PartnerConfigurationColumns] ON;
					insert into main.[PartnerConfigurationColumns]
					(
						 [ID]
						,[PartnerId]
					   ,[VitalTypeId]
					   ,[Title]
					   ,[ColumnModalAlertName]
					   ,[ColumnActionableAlertName]
					   ,[ColumnAlertManagementName]
					   ,[HasFilter]
					   ,[Show]
					   ,[PreviewPhase]
					   ,[Sortable]
					   ,[AdminColumn]
					   ,[ColumnOrder]
					   ,[Clickable]
					   ,[ActionableAlert]
					   ,[QuestionId]
					   ,[ParentId]
					   ,[DefaultColumn]
					   ,[ShowUnit]
					   ,[UnitText]
					   ,[CareFaxAlertName]
					   ,[SettingId]
					)
					select [ID]
						,[PartnerId]
					   ,[VitalTypeId]
					   ,[Title]
					   ,[ColumnModalAlertName]
					   ,[ColumnActionableAlertName]
					   ,[ColumnAlertManagementName]
					   ,[HasFilter]
					   ,[Show]
					   ,[PreviewPhase]
					   ,[Sortable]
					   ,[AdminColumn]
					   ,[ColumnOrder]
					   ,[Clickable]
					   ,[ActionableAlert]
					   ,[QuestionId]
					   ,[ParentId]
					   ,[DefaultColumn]
					   ,[ShowUnit]
					   ,[UnitText]
					   ,[CareFaxAlertName]
					   ,[SettingId]
					from [TempStageProd].[PartnerConfigurationColumns]
					SET IDENTITY_INSERT Main.[PartnerConfigurationColumns] OFF;
				END

				goto Finish;
			END

			IF @tableName = 'PowerBIReport'
			BEGIN
				-- sync up
				--- delete
				select a.ID
				into #tbPowerBIReportDeleted
				from  [Main].[PowerBIReport] a
				left join [TempStageProd].[PowerBIReport] b on a.ID = b.ID 
				where a.PartnerID = @PartnerId  and b.ID is null

				DELETE [Main].UserReport WHERE Reportid in (SELECT ID FROM #tbPowerBIReportDeleted)
				DELETE [Main].[PowerBIReport] WHERE ID in (SELECT ID FROM #tbPowerBIReportDeleted)

				-- upsert
				SET IDENTITY_INSERT Main.[PowerBIReport] ON;

				MERGE  [Main].[PowerBIReport] AS target
				USING (
					SELECT tp.* 
					FROM [TempStageProd].[PowerBIReport] tp 
					) AS source
				ON (target.ID = source.ID)
				WHEN MATCHED THEN
					UPDATE SET 
					[Name] = source.[Name],
					[Url] = source.[Url],
					[LastModifiedBy] = source.[LastModifiedBy],
					[LastModifiedOn] = source.[LastModifiedOn]
				WHEN NOT MATCHED THEN
					INSERT
					(
						 ID
						,[PartnerId]
						,[Name]
						,[Url]
						,[CreatedBy]
						,[LastModifiedBy]
						,[CreatedOn]
						,[LastModifiedOn]
					)
					VALUES
					(
						source.ID
						,source.[PartnerId]
						,source.[Name]
						,source.[Url]
						,source.[CreatedBy]
						,source.[LastModifiedBy]
						,source.[CreatedOn]
						,source.[LastModifiedOn]
					);

				SET IDENTITY_INSERT Main.[PowerBIReport] OFF;

				goto Finish;
			END

	 Finish:
	  COMMIT TRANSACTION;
    END TRY

    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION; -- RollBack in case of Error

        DECLARE @ErrorMessage NVARCHAR(4000);  
        DECLARE @ErrorSeverity INT;  
        DECLARE @ErrorState INT;  

        SELECT   
            @ErrorMessage = ERROR_MESSAGE(),  
            @ErrorSeverity = ERROR_SEVERITY(),  
            @ErrorState = ERROR_STATE();  

        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);  
    END CATCH
END
GO
EXEC sys.sp_addextendedproperty @name=N'sys_data_classification_recommendation_disabled', @value=1 , @level0type=N'SCHEMA',@level0name=N'IVR', @level1type=N'TABLE',@level1name=N'CallBackConfig', @level2type=N'COLUMN',@level2name=N'PhoneNumber'
GO
ALTER DATABASE [care-angel-main-dev] SET  READ_WRITE 
GO
