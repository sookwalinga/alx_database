-- This SQL script lists all the tables of a specified database.

-- The database name is passed as an argument to the mysql command
-- The user is prompted to enter the password for authentication
-- list_tables.sql

USE <db_name>;

SELECT table_name
FROM information_schema.tables
WHERE table_schema = '<db_name>';

