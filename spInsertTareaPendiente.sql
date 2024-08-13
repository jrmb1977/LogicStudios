USE [JULIO_MARTIN]
GO
/****** Object:  StoredProcedure [dbo].[spInsertTareaPendiente]    Script Date: 8/12/2024 11:30:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spInsertTareaPendiente](
@Titulo VARCHAR(50),
@Descripcion VARCHAR(250),
@FechaVencimiento DATETIME
)
AS
BEGIN
INSERT INTO [dbo].[tblTareaPendiente]([Titulo],[Descripcion],[FechaVencimiento]) 
VALUES(@Titulo,@Descripcion,@FechaVencimiento) 
END