USE [JULIO_MARTIN]
GO
/****** Object:  StoredProcedure [dbo].[spSelectTareasPendientes]    Script Date: 8/12/2024 11:30:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spSelectTareasPendientes]
AS
BEGIN
SET NOCOUNT ON
SELECT [ID],[Titulo],[Completada] 
FROM [dbo].[tblTareaPendiente] 
END