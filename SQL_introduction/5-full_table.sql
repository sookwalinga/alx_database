-- This SQL script prints the full description of the table
-- first_table from the specified database.

-- The user is prompted to enter the password for authentication
-- The query uses the information_schema database to retrieve
-- table information without using DESCRIBE or EXPLAIN
SELECT column_name, column_type
FROM information_schema.columns
WHERE table_name = 'first_table'
AND table_schema = DATABASE();

