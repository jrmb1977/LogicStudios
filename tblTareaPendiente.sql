USE [JULIO_MARTIN]
GO

/****** Object:  Table [dbo].[tblTareaPendiente]    Script Date: 8/12/2024 11:34:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tblTareaPendiente](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[Descripcion] [varchar](250) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[FechaVencimiento] [datetime] NOT NULL,
	[Completada] [bit] NOT NULL,
	[FechaCompletada] [datetime] NULL,
 CONSTRAINT [pk_tblTareaPendiente] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tblTareaPendiente] ADD  DEFAULT (getdate()) FOR [FechaCreacion]
GO

ALTER TABLE [dbo].[tblTareaPendiente] ADD  DEFAULT ((0)) FOR [Completada]
GO


