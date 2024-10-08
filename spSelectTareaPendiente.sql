USE [JULIO_MARTIN]
GO
/****** Object:  StoredProcedure [dbo].[spSelectTareaPendiente]    Script Date: 8/12/2024 11:30:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSelectTareaPendiente](
@ID INT
)
AS
BEGIN
SET NOCOUNT ON
SELECT [ID],[Titulo],[Descripcion],[FechaCreacion],[FechaVencimiento],[Completada],[FechaCompletada] 
FROM [dbo].[tblTareaPendiente] 
WHERE [ID] = @ID 
END