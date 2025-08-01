USE [ODS]
GO

/****** Object:  Table [stg].[tb_estoque_onco]    Script Date: 01/08/2025 10:17:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [stg].[tb_estoque_onco](
	[DISTRIBUIDOR] [varchar](max) NULL,
	[DATA] [date] NULL,
	[EAN] [varchar](14) NULL,
	[TIPO] [varchar](max) NULL,
	[NOME DO CD] [varchar](max) NULL,
	[QTD ESTOQUE DISP] [int] NULL,
	[QTD ESTOQUE TRANSITO] [int] NULL,
	[PEND. ENTREGA] [int] NULL,
	[CONS/EQUAL.] [int] NULL,
	[CIDADE] [varchar](max) NULL,
	[UF] [varchar](max) NULL,
	[DATA VALIDADE] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


