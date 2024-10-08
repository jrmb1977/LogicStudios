USE [JULIO_MARTIN]
GO
/****** Object:  StoredProcedure [dbo].[spEditTareaPendiente]    Script Date: 8/12/2024 11:30:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spEditTareaPendiente](
@ID INT,
@Titulo VARCHAR(50),
@Descripcion VARCHAR(250),
@FechaVencimiento DATETIME
)
AS
BEGIN
IF @ID = 0
	INSERT INTO [dbo].[tblTareaPendiente]([Titulo],[Descripcion],[FechaVencimiento]) 
	VALUES(@Titulo,@Descripcion,@FechaVencimiento) 
ELSE
	UPDATE [dbo].[tblTareaPendiente] 
	SET [Titulo]=@Titulo,[Descripcion]=@Descripcion,[FechaVencimiento]=@FechaVencimiento 
	WHERE [ID] = @ID 
END