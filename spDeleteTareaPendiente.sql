USE [JULIO_MARTIN]
GO
/****** Object:  StoredProcedure [dbo].[spDeleteTareaPendiente]    Script Date: 8/12/2024 11:29:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spDeleteTareaPendiente](
@ID INT
)
AS
BEGIN
DELETE FROM [dbo].[tblTareaPendiente] 
WHERE [ID] = @ID 
END