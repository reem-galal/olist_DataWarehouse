USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'olistDataWarehouse')
BEGIN
    ALTER DATABASE olistDataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE olistDataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE olistDataWarehouse;
GO

USE olistDataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
