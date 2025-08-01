USE [ODS]
GO

/****** Object:  Table [dbo].[tb_demanda_onco]    Script Date: 01/08/2025 10:13:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_demanda_onco](
	[DISTRIBUIDOR] [varchar](50) NULL,
	[DATA] [date] NULL,
	[INSTITUIÇÃO] [varchar](200) NULL,
	[CNPJ] [varchar](14) NULL,
	[EAN] [bigint] NULL,
	[CIDADE] [varchar](50) NULL,
	[UF] [char](2) NULL,
	[QTD] [int] NULL
) ON [PRIMARY]
GO


