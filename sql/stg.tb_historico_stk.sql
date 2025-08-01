USE [ODS]
GO

/****** Object:  Table [stg].[tb_historico_stk]    Script Date: 01/08/2025 10:17:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [stg].[tb_historico_stk](
	[EAN] [varchar](max) NULL,
	[MÊS] [date] NULL,
	[CANAL] [varchar](max) NULL,
	[CLIENTE] [varchar](max) NULL,
	[GC] [varchar](max) NULL,
	[UF] [varchar](max) NULL,
	[FAMILIA] [varchar](max) NULL,
	[SKU_SERVIER] [varchar](max) NULL,
	[SELL OUT MÊS] [float] NULL,
	[ESTOQUE DISPONIVEL LOJA/CD] [float] NULL,
	[PENDENCIA TRANSITO/TRANSFERENCIA] [float] NULL,
	[PENDENCIA ENTREGA] [float] NULL,
	[ESTOQUE CD REDE] [float] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


