USE [ODS]
GO

/****** Object:  Table [dbo].[tb_estoque_onco]    Script Date: 01/08/2025 10:15:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_estoque_onco](
	[DISTRIBUIDOR] [varchar](50) NULL,
	[DATA] [date] NULL,
	[EAN] [bigint] NULL,
	[TIPO] [varchar](50) NULL,
	[NOME_DO_CD] [varchar](50) NULL,
	[QTD_ESTOQUE_DISP] [int] NULL,
	[QTD_ESTOQUE_TRANSITO] [int] NULL,
	[PEND_ENTREGA] [int] NULL,
	[CONS/EQUAL] [int] NULL,
	[CIDADE] [varchar](50) NULL,
	[UF] [varchar](2) NULL,
	[DATA_VALIDADE] [date] NULL
) ON [PRIMARY]
GO


