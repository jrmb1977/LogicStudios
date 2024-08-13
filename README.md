# LogicStudios
CRUD Tareas Pendientes API
Se debe proceder en el siguiente orden:

1. Ejecutar el script tblTareaPendiente.sql
2. Ejecutar los demas scripts (el orden no es importante)

El script tblTareaPendiente.sql es importante que se ejecute primero porque es el que se encarga de la creación de la tabla tblTareaPendiente.  Los demás scripts contienen el DDL para la creación de los stored procedures para la manipulación (CRUD) de los registros en la tabla tblTareaPendiente.  Por eso es importante que se ejecute primero el script de creación de la tabla tblTareaPendiente, caso contrario la ejecución de los demas scripts devolverá un error dado que dependenden de la existencia de la tabla tblTareaPendiente.

El script spEditTareaPendiente.sql que se encarga de la creación del stored procedure spEditTareaPendiente no es realmente necesario dado que no se esta usando actualmente en el proyecto.  Se lo agregó para tener una alternativa que permita el INSERT y el UPDATE sobre la tabla tblTareaPendiente en un solo stored procedure y así no tener que crear dos stored procedures que realicen cada tarea por separado.
