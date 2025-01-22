-- Create IdentityDb
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'IdentityDb')
BEGIN
    CREATE DATABASE IdentityDb;
END
GO

-- Create CatalogDb
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'CatalogDb')
BEGIN
    CREATE DATABASE CatalogDb;
END
GO

-- Create OrderingDb
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'OrderingDb')
BEGIN
    CREATE DATABASE OrderingDb;
END
GO

-- Set database permissions
USE IdentityDb;
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = 'sa')
BEGIN
    CREATE USER [sa] FOR LOGIN [sa];
    ALTER ROLE db_owner ADD MEMBER [sa];
END
GO

USE CatalogDb;
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = 'sa')
BEGIN
    CREATE USER [sa] FOR LOGIN [sa];
    ALTER ROLE db_owner ADD MEMBER [sa];
END
GO

USE OrderingDb;
GO
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = 'sa')
BEGIN
    CREATE USER [sa] FOR LOGIN [sa];
    ALTER ROLE db_owner ADD MEMBER [sa];
END
GO
