USE [JULIO_MARTIN]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateTareaPendiente]    Script Date: 8/12/2024 11:30:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateTareaPendiente](
@ID INT,
@Titulo VARCHAR(50),
@Descripcion VARCHAR(250),
@FechaVencimiento DATETIME
)
AS
BEGIN
UPDATE [dbo].[tblTareaPendiente] 
SET [Titulo]=@Titulo,[Descripcion]=@Descripcion,[FechaVencimiento]=@FechaVencimiento 
WHERE [ID] = @ID 
END