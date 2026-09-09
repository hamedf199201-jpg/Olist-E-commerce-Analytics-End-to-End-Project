USE MASTER;
GO

IF EXISTS(Select * from sys.databases where name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse
GO

CREATE SCHEMA bronz;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
