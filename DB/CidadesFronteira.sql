USE [Temporario]
GO

/****** Object:  Table [dbo].[CidadesFronteira]    Script Date: 15/01/2020 10:19:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CidadesFronteira](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Cidade] [int] NOT NULL,
	[Nome] [nchar](100) NOT NULL,
 CONSTRAINT [PK_CidadesFronteira] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CidadesFronteira]  WITH CHECK ADD  CONSTRAINT [FK_CidadesFronteira_Cidade] FOREIGN KEY([ID_Cidade])
REFERENCES [dbo].[Cidade] ([ID])
GO

ALTER TABLE [dbo].[CidadesFronteira] CHECK CONSTRAINT [FK_CidadesFronteira_Cidade]
GO


