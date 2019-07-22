USE FabricProject
GO

IF EXISTS(select 1 from sys.schemas where name='fb')
    PRINT 'schema already exists';
ELSE 
BEGIN
    create schema fb;
    END 

