USE [DBUWV]
GO
/****** Object:  Table [dbo].[AUDIO]    Script Date: 2023-11-27 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUDIO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vst_id] [varchar](15) NULL,
	[file_name] [varchar](100) NULL,
	[file_extension] [varchar](5) NULL,
	[file_content_type] [varchar](20) NULL,
	[length] [int] NULL,
	[file_binary] [varbinary](max) NULL,
	[file_path] [varchar](255) NULL,
	[status] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[last_updated_at] [datetime] NULL,
	[created_by] [varchar](50) NULL,
 CONSTRAINT [PK_AUDIOS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DATA]    Script Date: 2023-11-27 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DATA](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[job_id] [varchar](50) NULL,
	[transcript] [text] NULL,
	[final] [bit] NULL,
	[time_start] [decimal](5, 2) NULL,
	[time_end] [decimal](5, 2) NULL,
	[channel] [int] NULL,
	[speaker_tag] [int] NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [PK_DATA] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DATA_REQUEST]    Script Date: 2023-11-27 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DATA_REQUEST](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[job_id] [varchar](50) NULL,
	[label] [varchar](50) NULL,
	[uri] [varchar](50) NULL,
	[data] [text] NULL,
	[duration] [decimal](18, 2) NULL,
	[mime_type] [varchar](30) NULL,
	[sample_rate] [int] NULL,
	[channels] [int] NULL,
 CONSTRAINT [PK_DATA_REQUEST] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HD_AI]    Script Date: 2023-11-27 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HD_AI](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vst_id] [varchar](15) NULL,
	[job_id] [varchar](50) NULL,
	[progress] [varchar](50) NULL,
	[status] [varchar](20) NULL,
	[created_at] [datetime] NULL,
	[modified_at] [datetime] NULL,
 CONSTRAINT [PK_HD_AI] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HSTATEMENT]    Script Date: 2023-11-27 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HSTATEMENT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vst_id] [varchar](15) NULL,
	[submission_id] [varchar](50) NULL,
	[customer_name] [varchar](100) NULL,
	[start_selfie_at] [datetime] NULL,
	[end_selfie_at] [datetime] NULL,
	[start_signature_at] [datetime] NULL,
	[end_signature_at] [datetime] NULL,
	[start_statement_at] [datetime] NULL,
	[end_statement_at] [datetime] NULL,
	[start_otp_at] [datetime] NULL,
	[end_otp_at] [datetime] NULL,
	[telepon] [varchar](15) NULL,
	[otp] [varchar](6) NULL,
	[otp_count] [int] NULL,
	[otp_at] [datetime] NULL,
	[resend_count] [int] NULL,
	[status_otp] [varchar](10) NULL,
	[latitude] [varchar](50) NULL,
	[longitude] [varchar](50) NULL,
	[step_status] [varchar](50) NULL,
	[status] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[last_updated_at] [datetime] NULL,
	[created_by] [varchar](50) NULL,
 CONSTRAINT [PK_HD_VST] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JOB_CONFIG]    Script Date: 2023-11-27 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JOB_CONFIG](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[job_id] [varchar](50) NULL,
	[model] [varchar](50) NULL,
	[wait] [bit] NULL,
	[include_filler] [bit] NULL,
	[include_partial_results] [bit] NULL,
	[auto_punctuation] [bit] NULL,
	[enable_spoken_numerals] [bit] NULL,
	[speaker_count] [int] NULL,
 CONSTRAINT [PK_JOB_CONFIG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MODEL]    Script Date: 2023-11-27 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MODEL](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[job_id] [varchar](50) NULL,
	[name] [varchar](30) NULL,
	[label] [varchar](50) NULL,
	[language] [varchar](30) NULL,
	[domain] [varchar](30) NULL,
	[acoustic] [varchar](30) NULL,
	[samplerate] [int] NULL,
 CONSTRAINT [PK_MODEL] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MSFIELD]    Script Date: 2023-11-27 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MSFIELD](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[field_key] [varchar](50) NULL,
	[field_name] [varchar](255) NULL,
	[field_value] [text] NULL,
	[description] [text] NULL,
 CONSTRAINT [PK_MSFIELD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RESULT]    Script Date: 2023-11-27 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESULT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[job_id] [varchar](50) NULL,
	[path] [varchar](255) NULL,
	[error] [varchar](255) NULL,
	[latency] [varchar](50) NULL,
	[speaker_count] [int] NULL,
 CONSTRAINT [PK_RESULT] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SELFIE]    Script Date: 2023-11-27 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SELFIE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vst_id] [varchar](15) NULL,
	[file_name] [varchar](100) NULL,
	[file_extension] [varchar](5) NULL,
	[file_content_type] [varchar](20) NULL,
	[length] [int] NULL,
	[width] [int] NULL,
	[height] [int] NULL,
	[file_binary] [varbinary](max) NULL,
	[file_path] [varchar](255) NULL,
	[status] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[last_updated_at] [datetime] NULL,
	[created_by] [varchar](50) NULL,
 CONSTRAINT [PK_SELFIE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SIGNATURE]    Script Date: 2023-11-27 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SIGNATURE](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vst_id] [varchar](15) NULL,
	[file_name] [varchar](100) NULL,
	[file_extension] [varchar](5) NULL,
	[file_content_type] [varchar](20) NULL,
	[length] [int] NULL,
	[width] [int] NULL,
	[height] [int] NULL,
	[file_binary] [varbinary](max) NULL,
	[file_path] [varchar](255) NULL,
	[status] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[last_updated_at] [datetime] NULL,
	[created_by] [varchar](50) NULL,
 CONSTRAINT [PK_SIGNATURES] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VIDEO]    Script Date: 2023-11-27 11:44:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VIDEO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[vst_id] [varchar](15) NULL,
	[file_name] [varchar](100) NULL,
	[file_extension] [varchar](5) NULL,
	[file_content_type] [varchar](20) NULL,
	[length] [int] NULL,
	[file_binary] [varbinary](max) NULL,
	[file_path] [varchar](255) NULL,
	[status] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[last_updated_at] [datetime] NULL,
	[created_by] [varchar](50) NULL,
 CONSTRAINT [PK_VIDEO] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
