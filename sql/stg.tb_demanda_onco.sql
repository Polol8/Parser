USE [ODS]
GO

/****** Object:  Table [stg].[tb_demanda_onco]    Script Date: 01/08/2025 10:16:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [stg].[tb_demanda_onco](
	[DISTRIBUIDOR] [varchar](max) NULL,
	[DATA] [date] NULL,
	[INSTITUIÇÃO] [varchar](max) NULL,
	[CNPJ] [varchar](14) NULL,
	[EAN] [varchar](14) NULL,
	[CIDADE] [varchar](max) NULL,
	[UF] [varchar](max) NULL,
	[QTD] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


