USE [JULIO_MARTIN]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateStatusTareaPendiente]    Script Date: 8/12/2024 11:30:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spUpdateStatusTareaPendiente](
@ID INT
)
AS
BEGIN
UPDATE [dbo].[tblTareaPendiente] 
SET [Completada]=1,[FechaCompletada]=GETDATE()
WHERE [ID] = @ID 
END