USE [ODS]
GO

/****** Object:  Table [dbo].[tb_historico_stk]    Script Date: 01/08/2025 10:15:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_historico_stk](
	[EAN] [bigint] NULL,
	[MES] [date] NULL,
	[CANAL] [varchar](50) NULL,
	[CLIENTE] [varchar](50) NULL,
	[GC] [varchar](50) NULL,
	[UF] [char](2) NULL,
	[FAMILIA] [varchar](50) NULL,
	[SKU_SERVIER] [varchar](200) NULL,
	[SELL_OUT_MES] [int] NULL,
	[ESTOQUE_DISPONIVEL_LOJA/CD] [int] NULL,
	[PENDENCIA_TRANSITO/TRANSFERENCIA] [int] NULL,
	[PENDENCIA_ENTREGA] [int] NULL,
	[ESTOQUE_CD_REDE] [int] NULL
) ON [PRIMARY]
GO


