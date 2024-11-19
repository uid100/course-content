-- Specify the database name
DECLARE @DatabaseName NVARCHAR(128) = 'YourDatabaseName'

-- Check if the database exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = @DatabaseName)
BEGIN
    PRINT 'Database exists. Proceeding to remove it.'

    -- Set the database to SINGLE_USER mode to disconnect all users
    DECLARE @SQL NVARCHAR(MAX)
    SET @SQL = 'ALTER DATABASE [' + @DatabaseName + '] SET SINGLE_USER WITH ROLLBACK IMMEDIATE;'
    EXEC sp_executesql @SQL

    -- Drop the database
    SET @SQL = 'DROP DATABASE [' + @DatabaseName + '];'
    EXEC sp_executesql @SQL

    PRINT 'Database has been successfully deleted.'
END
ELSE
BEGIN
    PRINT 'Database does not exist. No action taken.'
END
